require "class"

print("Hello world")

Dog = class()
function Dog:init(age)
  self.age = age
end

function Dog:bark()
	print "woof!"
  print(self.age)
end

SleepyDog = Dog:extend()
function SleepyDog:init(age, sleepiness)
  -- Cannot call super constructor. Makes subclasses rather useless for me.
  self.age = age
  self.sleepiness = sleepiness
end


function SleepyDog:bark()
	print "snore!"
  print(self.age)
end

local d = Dog(2)
local s = SleepyDog(4, 10)
d:bark()
s:bark()