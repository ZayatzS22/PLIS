# Сравнение Bosch IMS, внутренних наработок ОМЗ и текущего SP605-стенда

Дата: 01.09.2026.

Источники:

- `58da99240997b5810a805d76753b7128.pdf` — Bosch Rexroth IMS-I, 2014;
- `IMS 2 поколение.pdf` — Bosch Rexroth IMS, презентация 2019;
- `Презентация IMS.pdf` — внутренние исследования ОМЗ, 2025;
- `AD7357 (АЦП)-1.pdf` — официальный datasheet AD7357;
- `Main/sin_gen/*` — текущий основной проект FPGA;
- `Test/*` — офисная тестовая ветка.

Этот файл — рабочая карта технических противоречий, неизвестных и следующих задач.

---

# 1. Что уже понятно однозначно

## 1.1 Конечная цель

Разработать собственную интегрированную высокоточную систему измерения положения для линейных направляющих ОМЗ.

SP605 — исследовательская платформа.

Bosch IMS — промышленный ориентир.

## 1.2 Принцип

И Bosch, и внутренняя презентация ОМЗ сходятся на индуктивном/вихретоковом бесконтактном принципе.

## 1.3 Два измерительных канала

Внутренняя архитектура предусматривает квадратурные SIN/COS.

Официальный Bosch IMS-I также выдает квадратурные A/B с фазовым сдвигом 90°.

Следовательно, алгоритм положения почти наверняка должен уметь работать с двумерным квадратурным сигналом.

---

# 2. Что Bosch уже решает в готовом изделии

Bosch scanner объединяет:

```text
сенсоры
аналоговую электронику
обработку
калибровку
интерполяцию
reference/absolute reading
выходной интерфейс
```

Наша текущая система пока разделена на отдельные исследовательские блоки.

Это нормально: сначала нужно понять физику и математику, потом упаковывать ее в конечный датчик.

---

# 3. Критическое различие №1 — 1 мм против 40 мкм

Внутренний документ ОМЗ предполагает:

```text
геометрический период шкалы = 1 мм
период SIN/COS = 1 мм
```

Bosch 2014/2019 показывает:

```text
incremental scale pitch = 1000 мкм
аналоговый A/B period = 40 мкм
```

То есть у Bosch внешний электрический сигнал имеет 25 периодов на один миллиметр физического scale pitch:

```text
1000 / 40 = 25
```

Мы пока не знаем, за счет чего это получается:

- пространственной структуры катушек;
- внутренней интерполяции;
- особенностей шкалы;
- комбинации перечисленного.

## Что делать

На нашем прототипе измерить отдельно:

```text
физический шаг laser pattern
сырой carrier response одной катушки
суммарный SIN
суммарный COS
сигнал после analog front-end
сигнал непосредственно перед ADC
цифровой период после обработки
```

Не подставлять заранее ни 1 мм, ни 40 мкм.

---

# 4. Критическое различие №2 — частота ADC

Внутренняя презентация ОМЗ, предполагая прямую оцифровку 625-кГц carrier, рекомендует:

```text
fADC = 6,25 MSPS
```

AD7357:

```text
max = 4,2 MSPS/channel
```

Текущий MAIN:

```text
SCLK ≈ 613,6 кГц
conversion rate — порядка десятков kSPS
```

Разница огромна.

## Это может означать два варианта

### A. ADC получает raw carrier

Тогда текущая FPGA-настройка недостаточна, а AD7357 не достигает внутреннего ориентира 6,25 MSPS.

### B. До ADC уже есть analog demodulator

Тогда ADC получает медленные SIN/COS envelopes и высокая частота carrier не должна напрямую определять sample rate ADC.

## Что делать

Получить схему аналогового тракта и осциллографом измерить сигнал непосредственно на `VINA+/VINA-` и `VINB+/VINB-` AD7357.

Это текущий вопрос №1 по приоритету.

---

# 5. Критическое различие №3 — bit alignment AD7357

Datasheet:

```text
00 + DB13...DB0
```

Текущий `adc_receiver.v` читает SDATA на обнаруженном rising SCLK.

До аппаратной проверки нельзя считать окончательно доказанным, что результат после shift точно лежит в:

```text
adc_out[13:0]
```

Поэтому текущая экспериментальная подача на DAC:

```verilog
adc_out[13:4]
```

должна быть подтверждена логическим анализатором/известным уровнем.

---

# 6. Что уже есть в MAIN

```text
прием двух SDATA AD7357
формирование CS/SCLK
16-bit raw registers
UART TX 115200
A5 marker
128 frames
4 bytes A/B
MAX5853 controller
10-bit DAC bus
experimental ADC -> DAC connection
sine/cos LUT from earlier experiments
UCF for real extension board
```

То есть инфраструктура для эксперимента уже есть.

---

# 7. Чего нет в MAIN

Пока нет:

```text
FIFO raw samples
sample counter
timestamp
CRC
формально надежного packet protocol
raw data logger высокой скорости
демодулятора в FPGA
offset correction
amplitude normalization
quadrature correction
atan2/CORDIC
phase unwrap
period counter
reference/absolute decoder
calibration LUT
error diagnostics
```

Это не список того, что нужно немедленно добавить. Это карта будущих уровней.

---

# 8. Ограничение UART

UART 115200 не может передавать все измерения ADC при высокой частоте выборки.

Один A/B frame:

```text
4 bytes × 10 line bits = 40 bits
```

Максимум примерно:

```text
115200 / 40 ≈ 2880 A/B frames/s
```

MAIN принимает `adc_ready` только в `S_IDLE`, FIFO отсутствует.

Следовательно, UART сейчас предназначен для наблюдения выборочных данных, а не для гарантированного сохранения каждого conversion.

Для алгоритмических исследований нужно либо:

- контролируемо снижать sample rate;
- добавить FIFO;
- увеличить интерфейсную скорость;
- использовать другой transport;
- выполнять часть обработки внутри FPGA.

---

# 9. Что уже есть в TEST

TEST генерирует известные числа:

```text
A = 0...16383
B = 16383...0
A + B = 16383
```

и передает их по UART.

Это тестирует:

- 14-bit numeric range;
- endian;
- A/B ordering;
- byte framing;
- потерю байта;
- PC receiver.

TEST не проверяет:

- AD7357;
- analog path;
- real sensor;
- DAC;
- physical timing датчика.

---

# 10. Почему TEST нельзя смешивать с MAIN

TEST — детерминированный генератор чисел.

MAIN — реальный asynchronous measurement pipeline.

Например:

```text
TEST marker = FF FF
MAIN marker = A5
TEST reset = F5
MAIN reset = G6
```

Решение, полезное в TEST, не считается автоматически правильным для MAIN.

---

# 11. Предварительная математическая модель датчика

После analog/digital demodulation ожидаем медленные квадратурные сигналы:

```text
Araw = OA + GA*sin(phi) + distortion + noise
Braw = OB + GB*cos(phi + epsilon) + distortion + noise
```

Где:

```text
OA/OB — DC offsets
GA/GB — gain mismatch
epsilon — quadrature phase error
```

После коррекции:

```text
phi = atan2(Acorr, Bcorr)
```

Затем:

```text
phase unwrap
period count
x = period_index*P + phi/(2π)*P
```

Но `P` должен быть измерен для нашей системы.

---

# 12. Диагностический график A vs B

Идеальные sin/cos:

```text
A² + B² = const
```

и дают окружность.

Реальный датчик даст эллипс/искаженную фигуру.

По A-vs-B можно оценивать:

- offset;
- gain mismatch;
- quadrature error;
- гармоники;
- потерю сигнала;
- изменение воздушного зазора.

Этот график должен стать обязательным в программе анализа.

---

# 13. Глобальная координата

Bosch показывает два пути.

## Incremental

```text
A/B + reference marks
```

Для восстановления global position после startup требуется reference event.

## Absolute

```text
incremental precision channel + absolute code band
```

Положение известно сразу после включения.

Для нашего изделия нужно официально выбрать стратегию.

---

# 14. Этапы разработки алгоритма

## Этап 1 — доказать правильность raw acquisition

- ADC timing;
- bit alignment;
- simultaneous A/B;
- actual sample rate;
- что именно поступает на ADC.

## Этап 2 — понять analog signal chain

- carrier;
- generator frequency;
- preamplifier;
- demodulator;
- filters;
- common-mode;
- amplitudes.

## Этап 3 — записать реальные data

Нужны серии:

```text
покой
медленно вперед
медленно назад
разные скорости
повторные проходы
разные участки рельса
разные температуры, позже
```

## Этап 4 — Python/offline algorithm

Сначала исследовать математику вне FPGA:

- plots;
- FFT;
- demodulation;
- filtering;
- ellipse fit;
- atan2;
- unwrap;
- calibration;
- error vs reference.

## Этап 5 — fixed-point FPGA implementation

После выбора алгоритма:

- fixed-point formats;
- CORDIC;
- filters;
- LUT correction;
- FIFO;
- output interface.

---

# 15. Минимальный набор измерительных данных для следующего шага

Для каждого raw sample желательно иметь:

```text
sample_index
timestamp или fixed sample interval
ADC_A_raw
ADC_B_raw
reference_position
movement_direction
velocity
```

Дополнительно для эксперимента:

```text
generator phase/trigger
temperature
supply voltages
gap, если измеряется
```

---

# 16. Нужная аппаратная документация

Нужно получить и положить в Git:

1. полную принципиальную схему extension board;
2. analog front-end от катушек до AD7357;
3. генератор возбуждения;
4. preamplifier;
5. demodulator, если есть;
6. filters;
7. MAX5853 datasheet;
8. механический чертеж нашей coil board;
9. чертеж laser pattern;
10. параметры зазора scanner-to-rail;
11. описание reference/absolute concept.

---

# 17. Главный ближайший вопрос

Перед любой серьезной реализацией `atan2` в FPGA нужно ответить:

> На вход AD7357 приходит сырая 625-кГц AM-подобная несущая или уже демодулированные низкочастотные SIN/COS?

От ответа зависит вся архитектура:

```text
sample rate
filters
demodulation
FPGA resource usage
ADC suitability
UART/logger requirements
```

---

# 18. Что считать успехом ближайшего этапа

Ближайший этап завершен, когда мы можем доказательно сказать:

```text
какой сигнал приходит на ADC
какой у него спектр
какая sample rate нужна
какой bit format получаем
каков реальный electrical period
насколько A/B квадратурны
как связать phase с micrometers
```

Только после этого начинается реализация собственно промышленного алгоритма положения.