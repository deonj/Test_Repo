local m = require("Mod")

local ChildMod = {}

ChildMod.__index = ChildMod
setmetatable(ChildMod, m)

function ChildMod:new(obj, cnum)
    local o = obj or {}
    setmetatable(o, self)
    self.__index = self
    self.cnum = cnum or 0
    return o
end

-- function ChildMod:addTwo()
--     self.num2 = self.num2 + 2
--     return self.num2
-- end

return ChildMod

-- Child class that inherits from base class "Mod"