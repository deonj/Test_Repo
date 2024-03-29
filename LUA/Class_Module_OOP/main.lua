local m = require("Mod")
-- Print class value
-- print("Class value = " ..m.num)
-- Create a new instance of the object
local n = m:new({num=7})
local n2 = m:new({num=7})
-- Print the value from the object
print("Instance Value = " .. n.num)
print("Instance Value = " .. n2.num)
-- Call the instance method
n:addOne()
-- Print values for the initial value and the instance value
print("Instance Value = " .. n.num) -- should be incremented by one
print("Instance Value = " .. n2.num)
-- print("Class value = " .. m.num) -- should be the initial value
-- Modify the class value
-- m.addOne(m)
-- Call the instance method again
n:addOne()
n2:addOne()
-- Print values
print("Instance Value = " .. n.num) -- should increment by one again
print("Instance Value = " .. n2.num)
-- print("Class value = " .. m.num) -- should be initial value