function get_sets()
    include('common_sets.lua')

    sets.idle = {main='Sandung', sub='Atoyac', range="Raider's Bmrng.", head='Espial Cap', neck='Portus Collar', lear='Brutal Earring', rear='Suppanomimi', body='Thaumas Coat', hands='Plun. Armlets +1', lring="Epona's Ring", rring='Rajas Ring', back='Canny Cape', waist='Windbuffet Belt', legs='Espial Hose', feet='Espial Socks'}
    sets.th = {feet='Raid. Poulaines +2'}
    sets.accuracy = {body='Espial Gambison', waist='Dynamic Belt +1'}
    sets.speed = {feet='Skd. Jambeaux +1'}

    sets.precast = {}
    sets.precast.ws = {body='Espial Gambison', rring='Blobnag Ring', waist='Dynamic Belt +1'}
end

function status_change(new, old)
    if new == 'Idle' then
        equip(sets.idle, treasure_hunter and sets.th or {}, accuracy and sets.accuracy or {})
    end
end

function precast(spell)
    if spell.type == 'Weaponskill' then
        equip(sets.precast.ws)
    elseif spell.name == 'Spectral Jig' and buffactive["Sneak"] then
        windower.ffxi.cancel_buff(71)
        cancel_spell()
        windower.send_command('wait 1; input /ja "Spectral Jig" <me>')
    end
end

function aftercast(spell)
    if spell.type == 'Weaponskill' then
        equip(sets.idle, treasure_hunter and sets.th or {}, accuracy and sets.accuracy or {})
    end
end

function check_action(action)
    if (action.category == 7 or action.category == 8) and action.param == 24931 then
        local player = windower.ffxi.get_player()
        if player.in_combat then
            local target = windower.ffxi.get_mob_by_index(player.target_index)
            if target.valid_target and target.is_npc and target.id == action.actor_id then
                windower.send_command('input /ja "Violent Flourish" <t>')
            end
        end
    end
end

action_event_id = nil
treasure_hunter = false
accuracy = false

function self_command(command)
    if command:lower() == 'stun' then
        if action_event_id then
            windower.unregister_event(action_event_id)
            action_event_id = nil
            windower.add_to_chat(167, 'auto-stun disabled')
        else
            action_event_id = windower.register_event('action', check_action)
            windower.add_to_chat(204, 'auto-stun enabled')
        end
    elseif command:lower() == 'th' then
        treasure_hunter = not treasure_hunter
        windower.add_to_chat(treasure_hunter and 204 or 167, 'treasure hunter %s':format(treasure_hunter and 'enabled' or 'disabled'))
    elseif command:lower() == 'acc' then
        accuracy = not accuracy
        windower.add_to_chat(accuracy and 204 or 167, 'accuracy %s':format(accuracy and 'enabled' or 'disabled'))
    end
end
