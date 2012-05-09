# flying boxes!

canvas = document.getElementById("canvas")
canvas.style.backgroundColor = "white"
c = canvas.getContext("2d")

width = canvas.width
height = canvas.height

box = (style, direction) ->
  x = Math.sin(Date.now() / 400) * (width / 4) * direction
  y = Math.cos(Date.now() / 400) * (height / 4)
  c.fillStyle = style
  c.fillRect((width - 100) / 2 + x, (height - 100) / 2 + y, 100, 100)

tick = ->
  c.clearRect(0, 0, width, height)
  box("rgba(64, 64, 255, 0.8)", -1)
  box("rgba(64, 255, 64, 0.8)", 1)  

window.setInterval(tick, 20)