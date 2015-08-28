local class = require "scripts/libs/middleclass/middleclass";
local Main = require "scripts/classes/Main";

local Circle = class('PhysicsCircle', Main);

function Circle:initialize(World, name, x, y, radius, type, density)
	Main.initialize(self, name);
	self.body = love.physics.newBody(World.body, x, y, type);
	self.shape = love.physics.newCircleShape(radius);
	self.fixture = love.physics.newFixture(self.body, self.shape, density);
	self.color = {220,220,220, 255};
	self.fixture:setUserData(self.name);
	world:addChild(self);
end

function Circle:__draw()
	love.graphics.setColor(self.color);
	love.graphics.circle("fill", self.body:getX(), self.body:getY(), self.shape:getRadius());
end

return Circle;