
const freshMessage = ( ) => {

    const messages = document.querySelectorAll('.message');
  const lastMessage = messages[messages.length - 1];
  lastMessage.scrollIntoView();

}

export { freshMessage }

window.freshMessage = freshMessage
