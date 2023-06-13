local m = require("Mod")

local ChildMod = {}

function ChildMod:new(num)
    local o = setmetatable({}, self)
    self.__index = m
    self.num = num
    return o
end

-- function ChildMod:addTwo()
--     self.num2 = self.num2 + 2
--     return self.num2
-- end

return ChildMod

-- Child class that inherits from base class "Mod"