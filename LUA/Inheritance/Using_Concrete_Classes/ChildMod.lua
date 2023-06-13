local m = require("Mod")

local ChildMod = {}

-- Key lines here. Set __index and metatable to the base class
setmetatable(ChildMod, m)
ChildMod.__index = m

function ChildMod:new(obj)
    local o = obj or {}
    setmetatable(o, self)
    self.__index = self
    return o
end

-- This method moverrides the base class method
function ChildMod:addOne()
    print("Adding locally one ...")
	self.num = self.num + 1
end

return ChildMod

-- Child class that inherits from base class "Mod"