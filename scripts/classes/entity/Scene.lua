local class = require "scripts/libs/middleclass/middleclass";
local Main = require "scripts/classes/Main";

local Scene = class('Scene', Main);

function Scene:initialize(name)
	Main.initialize(self, name);
end

return Scene;