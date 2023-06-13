local m = require("Mod")

local ChildMod = {}

ChildMod.__index = m

function ChildMod:new(num)
    local o = setmetatable({}, self)
    self.__index = self
    self.num = num or 0
    return o
end

-- function ChildMod:addTwo()
--     self.num2 = self.num2 + 2
--     return self.num2
-- end

return ChildMod

-- Child class that inherits from base class "Mod"