local Account = {balance = 0}

function Account:deposit(v)
    self.balance = self.balance + v
end

function Account:withdraw(v)
    if v > self.balance then 
        error"insufficient funds" 
    end
    self.balance = self.balance - v
end

local SpecialAccount = {}

function SpecialAccount:new(obj)
    local o = obj or {}
    setmetatable(o, self)
    self.__index = Account
    return o
end

local s = SpecialAccount:new({balance=1000.0})
s:withdraw(100.0)
print(s.balance)
local s2 = SpecialAccount:new({balance=1000.0})
s2:withdraw(200.0)
print(s2.balance)