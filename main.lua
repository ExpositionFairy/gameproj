function love.load(arg)
	require('assets');
	require('scripts');
	
	menuScene = require('scripts/scenes/menu');
	gameScene = require('scripts/scenes/game');

	activeScene = menuScene;
	activeScene:load();
end

function love.draw()
	activeScene:draw()	
end

function love.update(dt)
	activeScene:update(dt)
end

function love.resize(width, height)
	activeScene:resize(width, height)
end

function love.focus(f)
	activeScene:focus(f)
end

function love.quit()
	activeScene:quit()
end

-- MouseController-Callbacks
function love.mousefocus(f)
	activeScene:mousefocus(f)
end

function love.mousemoved(x, y, dx, dy)
	activeScene:mousemoved(x, y, dx, dy)
end

function love.mousepressed(x,y,button)
	activeScene:mousepressed(x,y,button)
end

function love.mousereleased(x,y,button)
	activeScene:mousereleased(x,y,button)
end

-- KeyboardController-Callbacks
function love.textinput(text)
	activeScene:textinput(text)
end

function love.keypressed(key, isrepeat)
	activeScene:keypressed(key, isrepeat)
end

function love.keyreleased(key)
	activeScene:keyreleased(key)
end