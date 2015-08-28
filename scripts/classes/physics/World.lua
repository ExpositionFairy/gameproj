local class = require "scripts/libs/middleclass/middleclass";
local Main = require "scripts/classes/Main";

local World = class("World", Main);

function World:initialize(name, xg, yg, sleep)
	Main.initialize(self, name);
	self.body = love.physics.newWorld(xg, yg, sleep);
end

function World:__update(dt)
	self.body:update(dt)
end

return World;