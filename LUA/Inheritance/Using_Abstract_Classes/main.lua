local m1 = require("ChildMod")

local ch = m1:new({cnum = 9})
print("Instance Value = " .. ch.cnum)
