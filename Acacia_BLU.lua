function get_sets()
    include('common_sets.lua')

    sets.idle = {main='Eminent Scimitar', sub='Xiutleato', ammo='Mavi Tathlum', head='Espial Cap', neck='Portus Collar', lear='Brutal Earring', rear='Suppanomimi', body='Luhlaza Jubbah', hands='Espial Bracers', lring="Epona's Ring", rring='Rajas Ring', back='Atheling Mantle', waist='Dynamic Belt +1', legs='Espial Hose', feet='Espial Socks'}
	sets.resting = {neck='Eidolon Pendant', lear='Magnetic Earring', rear='Relaxing Earring', body='Luhlaza Jubbah', back='Vita Cape', waist='Hierarch Belt', feet='Chelona Boots'}
    sets.speed = {legs='Crimson Cuisses'}

    sets.midcast = {}
    sets.midcast.chain = {head='Mavi Kavuk +2', feet='Assim. Charuqs'}
    sets.midcast.efflux = {legs='Mavi Tayt +2'}
end

function status_change(new, old)
    if new == 'Idle' then
        equip(sets.idle)
    elseif new == 'Resting' then
        equip(sets.resting)
    end
end

function precast(spell)
    if spell.name == 'Sneak' then
        windower.ffxi.cancel_buff(71)
    elseif spell.name == 'Spectral Jig' and buffactive['Sneak'] then
        windower.ffxi.cancel_buff(71)
        cancel_spell()
        windower.send_command('wait 1; input /ja "Spectral Jig" <me>')
    elseif spell.name == 'Stoneskin' or spell.name == 'Diamondhide' then
        windower.ffxi.cancel_buff(37)
    elseif spell.name == 'Animating Wail' and buffactive['Haste'] then
        cancel_spell()
        windower.send_command('input /ja "Haste Samba" <me>')
    end
end

function midcast(spell)
    if spell.type == 'BlueMagic' then
        if buffactive['Chain Affinity'] then
            equip(sets.midcast.chain)
        end
        if buffactive['Efflux'] then
            equip(sets.midcast.efflux)
        end
    end
end

function aftercast(spell)
    if spell.type == 'BlueMagic' then
        equip(sets.idle)
    end
end

function check_action(action)
    if (action.category == 7 or action.category == 8) and action.param == 24931 then
        local player = windower.ffxi.get_player()
        if player.in_combat then
            local target = windower.ffxi.get_mob_by_index(player.target_index)
            if target.valid_target and target.is_npc and target.id == action.actor_id then
                windower.send_command('input /ma "Sudden Lunge" <t>')
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
