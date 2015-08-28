local class = require "scripts/libs/middleclass/middleclass";
local Main = require "scripts/classes/Main";

local Rectangle = class('PhysicsRectangle', Main);

function Rectangle:initialize(World, name, x, y, width, height, type, density)
	Main.initialize(self, name);
	self.body = love.physics.newBody(World.body, x, y, type);
	self.shape = love.physics.newRectangleShape(width, height);
	self.fixture = love.physics.newFixture(self.body, self.shape, density);
	self.color = {220,220,220, 255};
	self.fixture:setUserData(self.name);
	world:addChild(self);
end

function Rectangle:__draw()
	love.graphics.setColor(self.color);
	love.graphics.polygon("fill", self.body:getWorldPoints(self.shape:getPoints()));
end

return Rectangle;