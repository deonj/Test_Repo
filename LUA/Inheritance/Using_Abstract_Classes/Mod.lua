local Mod = {}

-- since this is a base class with no constructor, set the __index to itself
Mod.__index = Mod

function Mod:addOne()
    print("Adding one ...")
	self.num = self.num + 1
end

return Mod

-- This is an abstract base class since there is no constructor.
-- All child classes will inherit from this abstract class.