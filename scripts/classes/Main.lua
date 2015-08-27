local Main = class("Main");

function Main:initialize(name)
	self.name = name or "noName";
	self.parent = nil;
	self.children = {};
end

function Main:getParent(objectName)
	if self.parent then
		if self.parent.name == objectName then
			return self.parent
		else
			self.parent:getParent(objectName);
		end
	end
end

function Main:getChild(objectName)
	for index, child in pairs(self.children) do
		if child.name == objectName then
			return child;
		else
			child:getChild(objectName)
		end
	end
end

function Main:addChild(object)
	local found = self:getChild(object.name)
	
	if not found then
		table.insert(self.children, object)
	else
		error("error - (addChild): the object with this name already exists.", 2)
	end
end

-- Self-Methods
function Main:__load(...) end
function Main:__draw(...) end
function Main:__update(...) end
function Main:__resize(...) end
function Main:__visible(...) end
function Main:__focus(...) end
function Main:__quit(...) end
function Main:__mousefocus(...) end
function Main:__mousemoved(...) end
function Main:__mousepressed(...) end
function Main:__mousereleased(...) end
function Main:__textinput(...) end
function Main:__keypressed(...) end
function Main:__keyreleased(...) end


-- Children-Methods
function Main:loadChildren(...)
	for index, child in pairs(self.children) do
		child:load(...)
	end
end

function Main:drawChildren(...)
	for index, child in pairs(self.children) do
		child:draw(...)
	end
end

function Main:updateChildren(...)
	for index, child in pairs(self.children) do
		child:update(...)
	end
end

function Main:resizeChildren(...)
	for index, child in pairs(self.children) do
		child:resize(...)
	end
end

function Main:visibleChildren(...)
	for index, child in pairs(self.children) do
		child:visible(...)
	end
end

function Main:focusChildren(...)
	for index, child in pairs(self.children) do
		child:focus(...)
	end
end

function Main:quitChildren(...)
	for index, child in pairs(self.children) do
		child:quit(...)
	end
end

function Main:mousefocusChildren(...)
	for index, child in pairs(self.children) do
		child:mousefocus(...)
	end
end

function Main:mousemovedChildren(...)
	for index, child in pairs(self.children) do
		child:mousemoved(...)
	end
end

function Main:mousepressedChildren(...)
	for index, child in pairs(self.children) do
		child:mousepressed(...)
	end
end

function Main:mousereleasedChildren(...)
	for index, child in pairs(self.children) do
		child:mousereleased(...)
	end
end

function Main:textinputChildren(...)
	for index, child in pairs(self.children) do
		child:textinput(...)
	end
end

function Main:keypressedChildren(...)
	for index, child in pairs(self.children) do
		child:keypressed(...)
	end
end

function Main:keyreleasedChildren(...)
	for index, child in pairs(self.children) do
		child:keyreleased(...)
	end
end


-- Callbacks-Methods
function Main:load(...) 
	self:__load(...);
	self:loadChildren(...);
end

function Main:draw(...)
	self:__draw(...);
	self:drawChildren(...);
end

function Main:update(...)
	self:__update(...)
	self:updateChildren(...)
end
function Main:resize(...)
	self:__resize(...)
	self:resizeChildren(...)
end

function Main:visible(...)
	self:__visible(...)
	self:vsibleChildren(...)
end

function Main:focus(...)
	self:__focus(...)
	self:focusChildren(...)
end

function Main:quit(...)
	self:__quit(...)
	self:quitChildren(...)
end

function Main:mousefocus(...)
	self:__mousefocus(...)
	self:mousefocusChildren(...)
end

function Main:mousemoved(...)
	self:__mousemoved(...)
	self:mousemovedChildren(...)
end

function Main:mousepressed(...)
	self:__mousepressed(...)
	self:mousepressedChildren(...)
end

function Main:mousereleased(...)
	self:__mousereleased(...)
	self:mousereleasedChildren(...)
end

function Main:textinput(...)
	self:__textinput(...)
	self:textinputChildren(...)
end

function Main:keypressed(...)
	self:__keypressed(...)
	self:keypressedChildren(...)
end

function Main:keyreleased(...)
	self:__keyreleased(...)
	self:keyreleasedChildren(...)
end

return Main;