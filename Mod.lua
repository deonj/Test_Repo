local Mod = {}

Mod.num = 7

function Mod:new(o)
	o = o or {}
	self.__index = self
	setmetatable(o,self)
	return o
end

function Mod:addOne()
    print("Adding one ...")
	self.num = self.num + 1
end

return Mod