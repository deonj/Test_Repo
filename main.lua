local Account = {balance = 0}
 
function Account:new (o)
    o = o or {}
    self.__index = self
    setmetatable(o, self)
    return o
end

function Account:deposit (v)
    self.balance = self.balance + v
end

function Account:withdraw (v)
    if v > self.balance then 
        error"insufficient funds" 
    end
    self.balance = self.balance - v
end

local SpecialAccount = Account:new()
local s = SpecialAccount:new{limit=1000.00}