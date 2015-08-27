local Scene = class('Scene', Main);

function Scene:initialize(name)
	Main.initialize(self, name);
end

return Scene;