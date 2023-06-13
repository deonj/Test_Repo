local m = require("Mod")

local ChildMod = {}

function ChildMod:new(obj)
    local o = obj or {}
    setmetatable(o, self)
    self.__index = m -- Key line here. Set __index to the base class
    return o
end

function ChildMod:addOne()
    print("Adding locally one ...")
	self.num = self.num - 1
end

return ChildMod

-- Child class that inherits from base class "Mod"