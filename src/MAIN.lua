local vector = require "myVector"
local vec1 = vector.vector:create3()
local vec2 = vector.vector:create3(5)
local vec3 = vector.vector:create3(9, 5, 8, 2, 6)

vec1:push_back(3)

for i=1,vec3:length() do
    print(vec3.data[i])
end

for i, v in ipairs(vec3:iter()) do
    print(i, ":", v)
end