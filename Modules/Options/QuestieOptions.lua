---@class QuestieOptions
local QuestieOptions = QuestieLoader:CreateModule("QuestieOptions")

---@type QuestieOptionsEngine
local QuestieOptionsEngine = QuestieLoader:ImportModule("QuestieOptionsEngine")

QuestieOptions.tabs = {}
QuestieConfigFrame = nil

---Initializes Questie's native settings UI.
function QuestieOptions:Initialize()
    Questie.Debug(Questie.DEBUG_DEVELOP, "[QuestieOptions]: Initializing native settings")
    QuestieOptionsEngine:Initialize()
    Questie.Debug(Questie.DEBUG_DEVELOP, "[QuestieOptions]: Native settings initialized")
end

function QuestieOptions:HideFrame()
    QuestieOptionsEngine:HideFrame()
end

function QuestieOptions:ToggleConfigWindow()
    QuestieOptionsEngine:ToggleConfigWindow()
end

---@param info table
---@return any
function QuestieOptions:GetProfileValue(info)
    return Questie.db.profile[info[#info]]
end

---@param info table
---@param value any
function QuestieOptions:SetProfileValue(info, value)
    Questie.db.profile[info[#info]] = value
end

return QuestieOptions
