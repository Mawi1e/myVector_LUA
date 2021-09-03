module(..., package.seeall)

vector = { size = 0, data = {} }
vector.__index = vector

function vector:create1()
    local vec = { size = 0, data = {} }
    setmetatable(vec, self)
    return vec
end

function vector:create2(len)
    local vec = { size = len, data = {} }
    for i=1, len do
        table.insert(vec.data, nil)
    end
    setmetatable(vec, self)
    return vec
end

function vector:create3(...)
    local vec = { size = 0, data = {} }
    for i, v in ipairs{...} do
        vec.size = vec.size + 1
        table.insert(vec.data, v)
    end
    setmetatable(vec, self)
    return vec
end

function vector:push_back(value)
    table.insert(self.data, self.size + 1, value)
    self.size = self.size + 1

    return true
end

function vector:pop_back()
    if self.size == 0 then
        return false
    end

    self.data[self.size + 1] = nil
    self.size = self.size - 1

    return true
end

function vector:clear()
    local vec = { size = 0, data = {} }
    setmetatable(self, vec)

    return true
end

function vector:empty()
    return self.size == 0
end

function vector:length()
    return self.size
end

function vector:iter()
    return self.data
end