---------------------------
-- Condition checking whether the player is idle.
-- @class module
-- @name IdleCondition

local Condition = require('cylibs/conditions/condition')
local IdleCondition = setmetatable({}, { __index = Condition })
IdleCondition.__index = IdleCondition
IdleCondition.__type = "IdleCondition"

function IdleCondition.new()
    local self = setmetatable(Condition.new(), IdleCondition)
    return self
end

function IdleCondition.decode(rawSettings)
    return IdleCondition.new()
end

function IdleCondition:encode()
    local settings = {}
    settings.type = IdleCondition.__type
    return settings
end

function IdleCondition:is_satisfied(target_index)
    local target = windower.ffxi.get_mob_by_index(target_index)
    if target then
        return target.status == 0
    end
    return false
end

function IdleCondition:tostring()
    return "IdleCondition"
end

return IdleCondition




