local Mod = {}

-- Mod.num = 7 -- 'class' variable

function Mod:new(obj,num)
	local o = obj or {}
	self.__index = self
	setmetatable(o,self)
	self.num = num or 0
	return o
end

function Mod:addOne()
    print("Adding one ...")
	self.num = self.num + 1
end

return Mod