local objectKeys = {
    ['name'] = 1, -- string
    ['questStarts'] = 2, -- table {questID(int),...}
    ['questEnds'] = 3, -- table {questID(int),...}
    ['spawns'] = 4, -- table {[zoneID(int)] = {coordPair(floatVector2D),...},...}
    ['zoneID'] = 5, -- guess as to where this object is most common
    ['factionID'] = 6, -- faction restriction mask (same as spawndb factionid)
}
local zoneIDs = SkuDB.zoneIDs

local SkuObjectsFixes = {
    [188474] = {
        [objectKeys.spawns] = {[zoneIDs.DRAGONBLIGHT] = {{52,66}}},
    },
    [190558] = {
        [objectKeys.spawns] = {[zoneIDs.SHOLAZAR_BASIN] = {{48.3,49.1},{49.4,53.1},{49.6,50.9},{49.7,54.4},{49.7,54.5},{49.8,49.1},{50,51.7},{50,59.8},{50.2,47.5},{50.3,53.3},{50.3,58.5},{50.4,47.2},{50.4,50.4},{50.4,56.8},{50.4,58.3},{50.5,50.4},{50.5,50.5},{50.6,55.5},{50.6,56.9},{50.9,52},{50.9,54.6},{51.1,58.8},{51.4,52.6},{51.4,53.6},{51.4,57.8},{51.5,52.4},{51.5,53.5},{51.5,57.8},{51.6,49.8},{51.7,49.4},{51.7,62.6},{51.8,54.7},{51.9,58.6},{52,61.3},{52.3,61.7},{52.4,53.1},{52.4,56.2},{52.5,51.6},{52.5,53.1},{52.5,56.2},{52.6,60.5},{52.7,60.3},{52.7,62.1},{52.8,54.9},{53.1,50.5},{53.2,47.4},{53.2,47.6},{53.2,50.3},{53.3,59.3},{53.4,49.4},{53.4,53.5},{53.5,49.5},{53.5,53.4},{53.5,53.5},{53.5,61.7},{53.7,60.8},{54.2,51.4},{54.2,51.5},{54.3,48.9},{54.3,59.9},{54.5,49.1},{54.7,57.9},{54.7,60.8},{54.9,51.5},{55,53.7},{55.1,51.2},{55.3,60.2},{55.5,60.2},{55.6,57.4},{55.6,57.6},{55.7,58.6},{55.8,48.9},{55.8,52.8},{55.9,56.3},{56.2,50.9},{56.2,55.2},{56.7,53.4},{56.7,53.5},{56.9,56.3},{56.9,56.5},{57.1,52.2},{57.1,58.8},{57.2,60.6},{57.3,54.5},{57.3,60.1},{57.5,54.4},{58,60.4},{58,60.5},{58.4,58.9},{58.7,53.8},{58.7,55.9},{58.8,62.3},{59.1,57.9},{59.1,60.2},{59.8,55},{59.8,60.4},{59.8,60.5},{59.9,57.3},{60.1,63.9},{60.3,61.9},},},
    },
    [191092] = {
        [objectKeys.spawns] = {[zoneIDs.PLAGUELANDS_THE_SCARLET_ENCLAVE] = {{63.12,68.33}}},
    },
}
function SkuDB:WotLKFixObjectsDB(aTargetTable)
    SkuDB:FixObjectsDB(aTargetTable)
    for i, v in pairs(SkuObjectsFixes) do
        local tNew = false
        for k, val in pairs(v) do
            if aTargetTable.objectDataTBC[i] then
                aTargetTable.objectDataTBC[i][k] = val
            else
                aTargetTable.objectDataTBC[i] = v
                tNew = true
            end
        end
        if tNew == true then
            aTargetTable.objectLookup["deDE"][i] = aTargetTable.objectDataTBC[i][objectKeys.name]
            aTargetTable.objectLookup["enUS"][i] = aTargetTable.objectDataTBC[i][objectKeys.name]
        end

    end
end