gameScene = Scene:new('gameScene');

keyboard = {
	w = false;
	a = false;
	s = false;
	d = false;
}

--[[
keyboard['w'];
keyboard.w
]]--

function gameScene:__load(...)
	love.graphics.setBackgroundColor(20,120,160,255);
end

function gameScene:__draw(...)

end

function gameScene:__update(dt)
	if keyboard['w'] then
		--object.y = object.y - object.speed*dt
	end
end

function gameScene:__resize(...)

end

function gameScene:__visible(...)

end

function gameScene:__focus(...)

end

function gameScene:__quit(...)

end

function gameScene:__mousefocus(...)

end

function gameScene:__mousemoved(...)

end

function gameScene:__mousepressed(...)

end

function gameScene:__mousereleased(...)

end

function gameScene:__textinput(...)

end

function gameScene:__keypressed(key)
	if (key == w)
		keyboard['w'] = true;
	end

	if (key == "1") then
		activeScene = menuScene;
		activeScene:load()
	end
end

function gameScene:__keyreleased(...)
	if (key == w)
		keyboard['w'] = false;
	end
end

return gameScene;