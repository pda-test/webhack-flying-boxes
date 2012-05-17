# flying boxes!

canvas = document.getElementById("canvas")
canvas.style.backgroundColor = "white"
c = canvas.getContext("2d")

width = canvas.width
height = canvas.height

box = (style, direction) ->
  size = 64
  x = Math.sin(Date.now() / 400) * (width / 4) * direction
  y = Math.cos(Date.now() / 400) * (height / 4)
  c.fillStyle = style
  c.fillRect((width - size) / 2 + x, (height - size) / 2 + y, size, size)

tick = ->
  c.clearRect(0, 0, width, height)
  box("rgba(64, 64, 255, 0.8)", -1)
  box("rgba(64, 255, 64, 0.8)", 1)  

window.setInterval(tick, 20)