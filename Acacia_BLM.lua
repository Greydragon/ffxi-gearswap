function get_sets()
    include('common_sets.lua')

    sets.idle = {main='Eminent Staff', sub='Elementa Grip', head='Wayfarer Circlet', neck="Colossus's Torque", lear='Strophadic Earring', rear='Moldavite Earring', body='Wayfarer Robe', hands='Wayfarer Cuffs', lring='Strendu Ring', rring="Balrahn's Ring", back='Vita Cape', waist='Olympus Sash', legs='Wayfarer Slops', feet='Wayfarer Clogs'}
    sets.speed = {legs='Tatsu. Sitagoromo'}
end

function status_change(new, old)
    if new == 'Idle' then
        equip(sets.idle)
    end
end

function check_action(action)
    if (action.category == 7 or action.category == 8) and action.param == 24931 then
        local player = windower.ffxi.get_player()
        if player.in_combat then
            local target = windower.ffxi.get_mob_by_index(player.target_index)
            if target.valid_target and target.is_npc and target.id == action.actor_id then
                windower.send_command('input /ma "Stun" <t>')
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
