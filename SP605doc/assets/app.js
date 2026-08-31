
document.querySelectorAll('.copy-btn').forEach(btn=>{
  btn.addEventListener('click', async ()=>{
    const pre=btn.parentElement.querySelector('pre');
    try{
      await navigator.clipboard.writeText(pre.innerText);
      const old=btn.textContent; btn.textContent='Скопировано';
      setTimeout(()=>btn.textContent=old,1300);
    }catch(e){ btn.textContent='Выделите вручную'; }
  });
});
document.querySelectorAll('[data-filter-input]').forEach(input=>{
  const target=document.querySelector(input.dataset.filterInput);
  if(!target) return;
  input.addEventListener('input',()=>{
    const q=input.value.trim().toLowerCase();
    target.querySelectorAll('[data-search]').forEach(el=>{
      el.hidden=q && !el.dataset.search.toLowerCase().includes(q);
    });
  });
});
document.querySelectorAll('select[data-jump]').forEach(sel=>{
  sel.addEventListener('change',()=>{ if(sel.value) location.hash=sel.value; });
});
