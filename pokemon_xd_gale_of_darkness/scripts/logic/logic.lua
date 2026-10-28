-- put logic functions here using the Lua API: https://github.com/black-sliver/PopTracker/blob/master/doc/PACKS.md#lua-interface
-- don't be afraid to use custom logic functions. it will make many things a lot easier to maintain, for example by adding logging.
-- to see how this function gets called, check: locations/locations.json
-- example:

function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    if not amount then
        return count > 0
    else
        amount = tonumber(amount)
        return count >= amount
    end
end

function hasnot(item)
	local count2 = Tracker:ProviderCountForCode(item)
    if count2 > 0 then
		return false
	else return true
	end
end


function can_access_agate()
    if has("randomize_travel_locations") then
        return has("travel agate village")
    else
        return has("machine part")
    end
end

function can_access_mt_battle()
    if has("randomize_travel_locations") then
        return has("travel mt. battle")
    else
        return has("machine part")
    end
end

function can_access_cipher_lab()
    if has("randomize_travel_locations") then
        return has("travel cipher lab")
    else
        return has("machine part")
    end
end

function can_access_pyrite_town()
    if has("randomize_travel_locations") then
        return has("travel pyrite town")
    else
        return has("machine part") and has("data rom & id card")
    end
end

function can_access_onbs()
    if has("randomize_travel_locations") then
        return has("travel pyrite town") and has("travel poke spots")
    else
        return has("machine part") and has("data rom & id card")
    end
end

function can_access_poke_spots()
    if has("randomize_travel_locations") then
        return has("travel poke spots")
    else
        return has("machine part") and has("data rom & id card")
    end
end

function can_access_realgam_tower()
    if has("randomize_travel_locations") then
        return has("travel realgam tower")
    else
        return has("machine part") and has("data rom & id card")
    end
end

function can_access_phenac_city()
    if has("randomize_travel_locations") then
        return has("travel phenac city")
    else
        return has("machine part") and has("data rom & id card")
    end
end

function can_access_ss_libra()
    if has("randomize_travel_locations") then
        return has("travel ss libra") and has("travel phenac city") and has ("scooter upgrade")
    else
        return has("machine part") and has("data rom & id card") and has("music disc") and has("mayor's note") and has("scooter upgrade")
    end
end

function can_access_cipher_key_lair()
    if has("randomize_travel_locations") then
        return has("travel cipher key lair")
    else
        return has("machine part") and has("data rom & id card") and has("music disc") and has("mayor's note") and has("scooter upgrade")
    end
end

function can_access_outskirt_stand()
    if has("randomize_travel_locations") then
        return has("travel outskirt stand")
    else
        return has("machine part") and has("data rom & id card") and has("music disc") and has("mayor's note") and has("scooter upgrade")
    end
end

function can_access_snagem_hideout()
    if has("randomize_travel_locations") then
        return has("travel snagem hideout")
    else
        return has("machine part") and has("data rom & id card") and has("music disc") and has("mayor's note") and has("scooter upgrade")
    end
end

function can_access_kaminko_basement()
    if has("randomize_travel_locations") then
        return has("travel ss libra") and has("travel phenac city") and has("music disc") and has("mayor's note")
    else
        return has("machine part") and has("data rom & id card") and has("music disc") and has("mayor's note")
    end
end

function can_access_citadark_isle()
    if has("robo_kyogre_parts_unlock_citadark") then
        return has_robo_kyogre_parts()
    elseif has("randomize_travel_locations") then
        return has("travel cipher key lair") and has("system lever")
    else
        return can_access_cipher_key_lair() and has("system lever")
    end
end

function has_robo_kyogre_parts()
    if not ROBO_KYOGRE_REQUIRED then return false end
    return has("robo kyogre part", ROBO_KYOGRE_REQUIRED)
end

function show_agate_shop()
    return has("randomize_shops") and hasnot("agate_village_pit_stop")
end
