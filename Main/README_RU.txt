SP605 — MAIN / основной стенд с АЦП
===================================

Источник: Плата.rar, присланный 20.08.2026.

Контрольный основной проект:
Плата.rar/sin_gen/

Главный файл:
sin_gen/sin_gen.v
Дата файла внутри RAR: 06.08.2026 13:13:40.

Это ветка полностью собранного стенда:
SP605 + плата расширения + реальный двухканальный АЦП + ЦАП + остальная схема.

Каталог sin_gen извлечён из Плата.rar целиком, без отбора файлов. Поэтому здесь
сохранены исходники, UCF, ISE-проект, IP Core-файлы, результаты сборки и .bit.

Основные исходники:
sin_gen/sin_gen.v
sin_gen/adc_receiver.v
sin_gen/uart_tx.v
sin_gen/max5853_dual_cntrl.v
sin_gen/ipcore_dir/sine_lut.v
sin_gen/ipcore_dir/cose_lut.v

Пины:
sin_gen/sin_gen_connection.ucf

ISE:
sin_gen/sin_gen.xise
sin_gen/sin_gen.prj

На этой контрольной MAIN-версии UART использует маркер A5
и блоки по 128 кадров.
