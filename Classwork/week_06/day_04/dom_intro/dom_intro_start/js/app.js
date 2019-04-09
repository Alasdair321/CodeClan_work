document.addEventListener('DOMContentLoaded', ()=>{

  const title = document.querySelector('h1');
  title.textContent = 'Hello E29';

  const listItems = document.querySelectorAll('li');

  const redListItem = document.querySelector('li.red')

  redListItem.classList.add('bold');

  const newListItem = document.createElement('li');
  newListItem.textContent = 'Purple';

  const list = document.querySelector('ul');
  list.appendChild(newListItem);
  newListItem.classList.add('purple');

  const greeting = document.querySelector('#welcome-paragraph');
  const newP = document.createElement('p');
  list.appendChild(newP);

});
