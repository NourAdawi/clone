 <div  class='post'>

<div id='new4' class="user-avatar">
  
</div>
<div id ='new' class='post-text'>
<div id='new2' class="post-user-info">
  
</div>

</div>
</div>  

const post = document.querySelector('.post')

const createCard = (array) => {
    removeChild(post)
    array.forEach(element => {
        const index= array.indexOf(element)
        const avatar = document.createElement('div');
        // avatar.classList.add('user-avatar')
        avatar.setAttribute('class','user-avatar')
        avatar.setAttribute('id',`new+${index}`)
        
    });

}

const removeChild = (parent) => {
    while (parent.firstChild) {
      parent.removeChild(parent.firstChild);
    }
  }