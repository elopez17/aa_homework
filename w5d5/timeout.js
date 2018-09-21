// console.log('begin timeout...');
setTimeout(function(){
  alert('HAMMERTIME');
}, 3000);

function hammerTime(time){
  setTimeout(() => alert(`${time} is hammertime!`), 3000);
}
