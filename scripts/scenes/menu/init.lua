local Scene = require "scripts/classes/entity/Scene";

menuScene = Scene:new('menuScene');

function menuScene:__load(...)
	love.graphics.setBackgroundColor(21,24,27,255);
end

function menuScene:__draw(...)

end

function menuScene:__update(dt)

end

function menuScene:__resize(...)

end

function menuScene:__visible(...)

end

function menuScene:__focus(...)

end

function menuScene:__quit(...)

end

function menuScene:__mousefocus(...)

end

function menuScene:__mousemoved(...)

end

function menuScene:__mousepressed(...)

end

function menuScene:__mousereleased(...)

end

function menuScene:__textinput(...)

end

function menuScene:__keypressed(key)
	if (key == "2") then
		activeScene = gameScene;
		activeScene:load()
	end
end

function menuScene:__keyreleased(...)

end

return menuScene;