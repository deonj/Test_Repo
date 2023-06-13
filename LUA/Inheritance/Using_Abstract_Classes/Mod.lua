local Mod = {}

Mod.__index = Mod
Mod.num = 0

function Mod:addOne()
    print("Adding one ...")
	self.num = self.num + 1
end

return Mod

-- This is an abstract base class since there is no constructor.
-- All child classes will inherit from this abstract class.