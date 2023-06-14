local Mod = {}

function Mod:new(obj)
    local o = obj or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

function Mod:addOne()
    print("Adding one ...")
	self.num = self.num + 1
end

return Mod

-- This is a concrete base class that can be instantiated.
-- All child classes will inherit from this class.