--smart stack

Stack = {}
--
function Stack:new()
	local self = {}
	setmetatable(self, {__index = Stack})
	return self
end

function Stack:getLength()
	return #self
end

function Stack:pop()
	if self:getLength() == 0 then 
		return nil 
	end
	local value = self[#self]
	self[#self] = nil
	return value
end

function Stack:push(value)
	self[#self + 1] = value
end

function Stack:peek()
	return self[#self]	
end

function Stack:display()
	return table.concat( self, " ")
end

return Stack
--testing
--[[newStack = Stack:new()
print(newStack)
print(newStack:getLength())
value1 = newStack:pop()
print(value1)
newStack:push(100)
print(newStack:getLength())
value2 = newStack:pop()
print(value2)
]]--