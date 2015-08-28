local Scene = require "scripts/classes/entity/Scene";
local World = require "scripts/classes/physics/World";

local PhysicsCircle = require "scripts/classes/physics/shapes/Circle";
local PhysicsRectangle = require "scripts/classes/physics/shapes/Rectangle";

gameScene = Scene:new('gameScene');

function gameScene:__load(...)
	love.graphics.setBackgroundColor(39,42,45,255);

	world = World:new("mainWorld", 0, 500);
	self:addChild(world);

	object1 = PhysicsCircle:new(world, 'object1', 100, 100, 20, 'dynamic', 1);
	object1.color = {20,180,220, 255}
	platform1 = PhysicsRectangle:new(world, 'platform1', 300, 400, 500, 20, 'static')
	platform1.color = {220, 160, 80, 255}
end

function gameScene:__draw(...)

end

function gameScene:__update(dt)
	local speed = 1000000;
	if (love.keyboard.isDown('a')) then
		object1.body:applyForce( -speed*dt, 0 );
	end

	if (love.keyboard.isDown('d')) then
		object1.body:applyForce( speed*dt, 0 );
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
	if (key == "1") then
		activeScene = menuScene;
		activeScene:load()
	end
end

function gameScene:__keyreleased(...)

end

return gameScene;