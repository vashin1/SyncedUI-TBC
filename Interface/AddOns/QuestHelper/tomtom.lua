QuestHelper_File["tomtom.lua"] = "0.50"

local tomtom_cb
local tomtom_uid

local function tomtom_wp_update(c, z, x, y, desc)
  if tomtom_uid then
    TomTom:RemoveWaypoint(tomtom_uid)
    tomtom_uid = nil
  end
  
  if c then
    tomtom_uid = TomTom:AddZWaypoint(c, z, x*100, y*100, desc, false, false, false)
  end
end

function QuestHelper:EnableTomTom()
  if TomTom then
    if not tomtom_cb then
      tomtom_cb = QuestHelper:AddWaypointCallback(tomtom_wp_update)
    end
  end
end

function QuestHelper:DisableTomTom()
  if tomtom_cb then
    if tomtom_uid then
      TomTom:RemoveWaypoint(tomtom_uid)
    end
    
    QuestHelper:RemoveWaypointCallback(tomtom_cb)
    tomtom_cb = nil
  end
end
