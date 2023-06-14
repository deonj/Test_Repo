local m = require("Mod")


-- Key line here. Child class should be an instance of the base class
local ChildMod = m:new()

-- This 'new' method overrides the base class 'new' method
-- This can be done if the child class constructor needs to extended with new fields (e.g. obj.test)
function ChildMod:new(obj)
    local o = obj or {}
    setmetatable(o, self)
    self.__index = self
    self.test = obj.test
    return o
end

-- This method moverrides the base class method
function ChildMod:addOne()
    print("Adding locally one ...")
	self.num = self.num + 1
    print(self.test)
end

return ChildMod

-- Child class that inherits from base class "Mod"