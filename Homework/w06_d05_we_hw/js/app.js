document.addEventListener('DOMContentLoaded', () => {
  console.log('javascript loaded');
  const form = document.querySelector('#todo-form');
  const handleSubmitForm = function(event) {

    event.preventDefault();
    console.log(event);

    const todoList = document.querySelector('body > div > div.container-list');

    const todoTitleValue = event.target[0].value.toUpperCase();
    const todoDoByValue = event.target[1].value.toUpperCase();
    const todoRemindOnValue = event.target[2].value.toUpperCase();
    const todoDetailsValue = event.target[3].value.toUpperCase();
    const todoCategoryValue = event.target[4].value.toUpperCase();

    const todoItem = document.createElement('div');
    todoItem.classList.add('container-todo-item');

    const todoTitle = document.createElement('div');
    todoTitle.classList.add('todo-title');
    const todoTitlePara = document.createElement('p');
    todoTitlePara.textContent = `${todoTitleValue}`;
    todoTitle.appendChild(todoTitlePara);
    todoItem.appendChild(todoTitle);

    const todoDates = document.createElement('div');
    todoDates.classList.add('todo-dates');
    const todoDoBy = document.createElement('p');
    todoDoBy.textContent = `${todoDoByValue}`;
    todoDates.appendChild(todoDoBy);
    const todoRemindOn = document.createElement('p');
    todoRemindOn.textContent = `${todoRemindOnValue}`;
    todoDates.appendChild(todoRemindOn);
    const todoCategory = document.createElement('p');
    todoCategory.textContent = `${todoCategoryValue}`;
    todoDates.appendChild(todoCategory);
    todoItem.appendChild(todoDates);

    const todoDetails = document.createElement('div');
    todoDetails.classList.add('todo-details');
    const todoDetailsPara = document.createElement('p');
    todoDetailsPara.textContent = `${todoDetailsValue}`;
    todoDetails.appendChild(todoDetailsPara);
    todoItem.appendChild(todoDetails);

    todoList.appendChild(todoItem);

    document.getElementById('todo-form').reset();

  };

  form.addEventListener('submit', handleSubmitForm);

  const clearForm = document.querySelector('#delete');
    const handleFormDelete = (event) => {
      event.preventDefault();
      const todoList = document.querySelector('body > div > div.container-list');
      const children = document.querySelectorAll('.container-todo-item');
      children.forEach((child)=>{
        todoList.removeChild(child);
      })

    };

  clearForm.addEventListener('submit', handleFormDelete);

});
