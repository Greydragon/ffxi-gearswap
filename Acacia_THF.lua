function get_sets()
    sets.melee = {main='Sandung', sub='Atoyac', range="Raider's Bmrng.", head='Espial Cap', neck='Tlamiztli Collar', lear='Brutal Earring', rear='Suppanomimi', body='Espial Gambison', hands='Espial Bracers', lring="Epona's Ring", rring='Rajas Ring', back='Canny Cape', waist='Dynamic Belt +1', legs='Espial Hose', feet='Espial Socks'}
    sets.th = {main='Sandung', sub="Thief's Knife", range="Raider's Bmrng.", head='Espial Cap', neck='Tlamiztli Collar', lear='Brutal Earring', rear='Suppanomimi', body='Espial Gambison', hands='Plun. Armlets', lring="Epona's Ring", rring='Rajas Ring', back='Canny Cape', waist='Dynamic Belt +1', legs='Espial Hose', feet='Raid. Poulaines +2'}
    sets.speed = {feet='Skd. Jambeaux +1'}
end

function precast(spell)
    if spell.name == 'Spectral Jig' and buffactive["Sneak"] then
        windower.ffxi.cancel_buff(71)
        cancel_spell()
        windower.send_command('wait 1; input /ja "Spectral Jig" <me>')
    end
end

function check_action(action)
    if (action.category == 7 or action.category == 8) and action.param == 24931 then
        local player = windower.ffxi.get_player()
        if player.in_combat then
            local target = windower.ffxi.get_mob_by_index(player.target_index)
            if target.id == action.actor_id and target.valid_target then
                windower.send_command('input /ja "Violent Flourish" <t>')
            end
        end
    end
end

action_event_id = nil

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
    end
end
