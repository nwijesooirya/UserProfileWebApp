const updateButton = document.getElementById('updateButton');

updateButton.addEventListener('click', () => {
  alert('please recheck your details before update');
});

const delButton = document.getElementById('delButton');

delButton.addEventListener('click', () => {
    confirm('Do u want to delete your Profile..?')
});

