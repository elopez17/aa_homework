document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('mycanvas'); // in your HTML this element appears as <canvas id="myCanvas"></canvas>
  canvas.width = 500;
  canvas.height = 500;
  const ctx = canvas.getContext('2d');

  ctx.fillStyle = 'rgb(200,0,0)'; // sets the color to fill in the rectangle with
  ctx.fillRect(10, 10, 500, 500);   // draws the rectangle at position 10, 10 with a width of 55 and a height of 50

  ctx.beginPath();
  ctx.arc(500, 500, 100, 0, 2 * Math.PI);
  ctx.strokeStyle = "green";
  ctx.lineWidth = 5;
  ctx.stroke();
  ctx.fillStyle = "blue";
  ctx.fill();
});
