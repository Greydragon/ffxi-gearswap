function get_sets()
    include('common_sets.lua')

    sets.perpetuation = {main='Chatoyant Staff', ammo='Seraphicaller', head='Con. Horn +1', neck="Caller's Pendant", lear='Domes. Earring', rear='Moonshade Earring', body='Glyphic Doublet +1', hands='Adhara Gages', rring="Evoker's Ring", back='Conveyance Cape', waist='Mujin Obi', legs='Nares Trews', feet='Con. Pigaches +1'}
    sets.perpetuation['Carbuncle'] = {main='Chatoyant Staff', ammo='Seraphicaller', head='Con. Horn +1', neck="Caller's Pendant", lear='Domes. Earring', rear='Moonshade Earring', body='Hagondes Coat +1', hands='Carbuncle Mitts', rring="Evoker's Ring", back='Conveyance Cape', waist='Mujin Obi', legs='Nares Trews', feet='Mdk. Crackows +1'}
    sets.perpetuation['Cait Sith'] = {main='Chatoyant Staff', ammo='Seraphicaller', head='Con. Horn +1', neck="Caller's Pendant", lear='Domes. Earring', rear='Moonshade Earring', body='Hagondes Coat +1', hands='Adhara Gages', rring="Evoker's Ring", back='Conveyance Cape', waist='Mujin Obi', legs='Nares Trews', feet='Con. Pigaches +1'}
    sets.perpetuation['Fenrir'] = {main='Chatoyant Staff', ammo='Seraphicaller', head='Con. Horn +1', neck="Caller's Pendant", lear='Domes. Earring', rear='Moonshade Earring', body='Glyphic Doublet +1', hands='Glyphic Bracers +1', rring="Evoker's Ring", back='Conveyance Cape', waist='Mujin Obi', legs='Nares Trews', feet='Con. Pigaches +1'}
    sets.perpetuation['Garuda'] = {main='Vayuvata III', ammo='Seraphicaller', head='Con. Horn +1', neck="Caller's Pendant", lear='Domes. Earring', rear='Moonshade Earring', body='Hagondes Coat +1', hands='Adhara Gages', rring="Evoker's Ring", back='Conveyance Cape', waist='Mujin Obi', legs='Nares Trews', feet='Con. Pigaches +1'}
    sets.perpetuation['Ramuh'] = {main='Apamajas III', ammo='Seraphicaller', head='Con. Horn +1', neck="Caller's Pendant", lear='Domes. Earring', rear='Moonshade Earring', body='Hagondes Coat +1', hands='Adhara Gages', rring="Evoker's Ring", back='Conveyance Cape', waist='Mujin Obi', legs='Nares Trews', feet='Con. Pigaches +1'}
    sets.perpetuation.favor = {main='Chatoyant Staff', sub='Vox Grip', ammo='Seraphicaller', head="Caller's Horn +2", neck="Caller's Pendant", lear='Smn. Earring', rear='Moonshade Earring', body='Call. Doublet +2', hands='Glyphic Bracers +1', lring='Fervor Ring', rring="Evoker's Ring", back='Conveyance Cape', waist='Cimmerian Sash', legs='Nares Trews', feet='Con. Pigaches +1'}
    sets.perpetuation.spirit = {main='Chatoyant Staff', sub='Vox Grip', ammo='Seraphicaller', head='Con. Horn +1', neck="Caller's Pendant", lear='Smn. Earring', rear='Moonshade Earring', body='Call. Doublet +2', hands='Glyphic Bracers +1', lring='Fervor Ring', rring="Evoker's Ring", back='Conveyance Cape', waist='Cimmerian Sash', legs='Glyphic Spats +1', feet='Mdk. Crackows +1'}
    sets.resting = {main='Chatoyant Staff', ammo='Mana Ampulla', head='Con. Horn +1', neck='Eidolon Pendant', lear='Magnetic Earring', rear='Relaxing Earring', body='Hagondes Coat +1', hands='Nares Cuffs', back='Vita Cape', waist='Hierarch Belt', legs='Nares Trews', feet='Chelona Boots'}
    sets.idle = {ammo='Seraphicaller', head='Con. Horn +1', rear='Moonshade Earring', body='Hagondes Coat +1', legs='Nares Trews'}
    sets.speed = {legs='Tatsu. Sitagoromo'}

    sets.precast = {}
    sets.precast.delay = {ammo='Seraphicaller', head='Con. Horn +1', body='Glyphic Doublet +1', hands='Glyphic Bracers +1', back="Tiresias' Cape", feet='Glyph. Pigaches +1'}
    sets.precast.cede = {hands='Call. Bracers +2'}
    sets.precast.siphon = {sub='Vox Grip', ammo='Seraphicaller', head='Con. Horn +1', neck="Caller's Pendant", lear='Smn. Earring', rear='Gifted Earring', body='Anhur Robe', hands='Glyphic Bracers +1', lring='Fervor Ring', rring="Evoker's Ring", back='Conveyance Cape', waist='Cimmerian Sash', legs='Tatsu. Sitagoromo', feet="Caller's Pgch. +2"}

    sets.midcast = {}
    sets.midcast.cure = {main='Arka IV', head="Marduk's Tiara +1", neck="Colossus's Torque", lear='Magnetic Earring', rear='Beatific Earring', hands='Weath. Cuffs +1', lring="Sirona's Ring", rring="Haoma's Ring", back='Pahtli Cape', legs='Nares Trews'}
    sets.midcast.stoneskin = {neck='Stone Gorget', lear='Magnetic Earring', rear='Earthcry Earring', back='Vita Cape', waist='Siegel Sash', legs='Shedir Seraweels'}
    sets.midcast.aquaveil = {legs='Shedir Seraweels'}
    sets.midcast.regen = {head="Marduk's Tiara +1"}

    sets.pet_midcast = {}
    sets.pet_midcast.physical = {sub='Vox Grip', ammo='Seraphicaller', head='Con. Horn +1', rear='Gifted Earring', hands='Glyphic Bracers +1', lring='Fervor Ring', rring="Evoker's Ring", back='Conveyance Cape'}
    sets.pet_midcast.physical.attack = {neck='Sacrifice Torque', lear='Ruby Earring', body='Con. Doublet +1', waist='Mujin Obi', legs='Ngen Seraweels', feet='Con. Pigaches +1'}
    sets.pet_midcast.physical.accuracy = {neck="Caller's Pendant", lear='Smn. Earring', body='Call. Doublet +2', waist='Cimmerian Sash', legs="Con. Spats +1", feet='Mdk. Crackows +1'}
    sets.pet_midcast.magical = {sub='Vox Grip', ammo='Seraphicaller', lear='Smn. Earring', rear='Gifted Earring', lring='Fervor Ring', rring="Evoker's Ring"}
    sets.pet_midcast.magical.attack = {main='Astralwatcher', head='Glyphic Horn +1', neck='Eidolon Pendant', body='Con. Doublet +1', hands='Nares Cuffs', back="Tiresias' Cape", waist="Caller's Sash", legs="Ngen Seraweels", feet='Hag. Sabots +1'}
    sets.pet_midcast.magical.attack.tp = {legs="Caller's Spats +2"}
    sets.pet_midcast.magical.accuracy = {head='Con. Horn +1', neck="Caller's Pendant", body='Call. Doublet +2', hands='Glyphic Bracers +1', back='Conveyance Cape', waist='Cimmerian Sash', legs='Glyphic Spats +1', feet="Caller's Pgch. +2"}
    sets.pet_midcast.magical.accuracy.max = {body='Anhur Robe'}
    sets.pet_midcast.skill = {sub='Vox Grip', head='Con. Horn +1', neck="Caller's Pendant", lear='Smn. Earring', rear='Gifted Earring', hands='Glyphic Bracers +1', lring='Fervor Ring', rring="Evoker's Ring", back='Conveyance Cape', waist="Jaq'ij Sash"}
    sets.pet_midcast.skill.max = {body='Anhur Robe', waist='Cimmerian Sash', legs='Mdk. Shalwar +1', feet='Mdk. Crackows +1'}
    sets.pet_midcast.bloodboon = {rear='Gifted Earring', waist="Jaq'ij Sash", legs="Caller's Spats +2"}
end

bp_physical = S{'Regal Scratch', 'Punch', 'Rock Throw', 'Barracuda Dive', 'Claw', 'Axe Kick', 'Shock Strike', 'Camisado', 'Poison Nails', 'Moonlit Charge', 'Crescent Fang', 'Rock Buster', 'Tail Whip', 'Double Punch', 'Megalith Throw', 'Double Slap', 'Eclipse Bite', 'Mountain Buster', 'Spinning Dive', 'Predator Claws', 'Rush', 'Chaotic Strike'}
bp_hybrid = S{'Burning Strike', 'Flaming Crush'}
bp_magic = S{'Inferno', 'Earthen Fury', 'Tidal Wave', 'Aerial Blast', 'Diamond Dust', 'Judgment Bolt', 'Searing Light', 'Howling Moon', 'Ruinous Omen', 'Zantetsuken', 'Somnolence', 'Nether Blast', 'Fire II', 'Stone II', 'Water II', 'Aero II', 'Blizzard II', 'Thunder II', 'Fire IV', 'Stone IV', 'Water IV', 'Aero IV', 'Blizzard IV', 'Thunder IV', 'Thunderspark', 'Meteorite', 'Holy Mist', 'Lunar Bay', 'Night Terror', 'Level ? Holy'}
bp_magic_tp = S{'Meteor Strike', 'Geocrush', 'Grand Fall', 'Wind Blade', 'Heavenly Strike', 'Thunderstorm'}
bp_debuff = S{'Mewing Lullaby', 'Eerie Eye', 'Lunar Cry', 'Nightmare', 'Lunar Roar', 'Slowga', 'Ultimate Terror', 'Sleepga', 'Tidal Roar', 'Diamond Storm', 'Shock Squall', 'Pavor Nocturnus'}
bp_buff = S{'Glittering Ruby', 'Shining Ruby', 'Frost Armor', 'Rolling Thunder', 'Crimson Howl', 'Lightning Armor', 'Ecliptic Growl', 'Hastega', 'Noctoshield', 'Ecliptic Howl', 'Dream Shroud', 'Earthen Armor', 'Fleet Wind', 'Heavenward Howl'}
bp_bloodboon = S{'Earthen Ward', 'Aerial Armor', 'Raise II', 'Reraise II'}
bp_healing = S{'Healing Ruby', 'Whispering Wind', 'Spring Water', 'Healing Ruby II'}
bp_skill = S{'Perfect Defense', 'Inferno Howl', 'Soothing Ruby'}

spirit_element = {['Fire']='Fire Spirit', ['Earth']='Earth Spirit', ['Water']='Water Spirit', ['Wind']='Air Spirit', ['Ice']='Ice Spirit', ['Lightning']='Thunder Spirit', ['Light']='Light Spirit', ['Dark']='Dark Spirit'}
spirit_conflict = {['Fire']='Ice', ['Earth']='Lightning', ['Water']='Fire', ['Wind']='Earth', ['Ice']='Wind', ['Lightning']='Water', ['Light']='Dark', ['Dark']='Light'}

function buff_change(name, gain)
    if pet.isvalid and name == "Avatar's Favor" then
        if gain then
            equip(sets.perpetuation.favor)
        else
            equip(sets.perpetuation[pet.name] or sets.perpetuation)
        end
    elseif pet.isvalid and name == 'sleep' then
        if gain then
            equip({neck='Sacrifice Torque'})
        else
            equip({neck="Caller's Pendant"})
        end
    end
end

function pet_change(pet, gain)
    if gain then
        if pet.name:match('Spirit') then
            equip(sets.perpetuation.spirit)
        elseif buffactive["Avatar's Favor"] then
            equip(sets.perpetuation.favor)
        else
            equip(sets.perpetuation[pet.name] or sets.perpetuation)
        end
    else
        equip(sets.idle)
    end
end

function status_change(new, old)
    if pet.isvalid == false then
        if new == 'Idle' then
            equip(sets.idle)
        elseif new == 'Resting' then
            equip(sets.resting)
        end
    end
end

function precast(spell)
    if pet.isvalid then
        if spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard' then
            equip(sets.precast.delay)
        elseif spell.name == 'Elemental Siphon' then
            equip(sets.precast.siphon)
        elseif spell.name == 'Mana Cede' then
            equip(sets.precast.cede)
        end
    elseif spell.name == 'Dark Spirit' then
        if world.weather_element == 'Dark' then
            return
        elseif world.weather_element ~= 'None' and spirit_conflict[world.day_element] ~= world.weather_element then
            cancel_spell()
            windower.send_command('input /ma "%s" <me>':format(spirit_element[world.weather_element]))
        elseif world.day_element == 'Dark' then
            return
        else
            cancel_spell()
            windower.send_command('input /ma "%s" <me>':format(spirit_element[world.day_element]))
        end
    elseif spell.name == 'Sneak' then
        windower.ffxi.cancel_buff(71)
    elseif spell.name == 'Stoneskin' then
        windower.ffxi.cancel_buff(37)
    end
end

function midcast(spell)
    if spell.name == 'Stoneskin' then
        equip(sets.midcast.stoneskin)
    elseif spell.name == 'Aquaveil' then
        equip(sets.midcast.aquaveil)
    elseif spell.name:match('Cure') then
        equip(sets.midcast.cure)
    elseif spell.name:match('Regen') then
        equip(sets.midcast.regen)
    end
end

function pet_midcast(spell)
    if spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard' then
        if bp_physical:contains(spell.name) then
            equip(sets.pet_midcast.physical, sets.pet_midcast.physical.attack)
        elseif bp_magic_tp:contains(spell.name) then
            equip(sets.pet_midcast.magical, sets.pet_midcast.magical.attack)
            if pet.tp < 140 then
                equip(sets.pet_midcast.magical.attack.tp)
            end
        elseif bp_magic:contains(spell.name) or bp_hybrid:contains(spell.name) then
            equip(sets.pet_midcast.magical, sets.pet_midcast.magical.attack)
        elseif bp_debuff:contains(spell.name) then
            equip(sets.pet_midcast.magical, sets.pet_midcast.magical.accuracy, sets.pet_midcast.magical.accuracy.max)
        elseif bp_buff:contains(spell.name) then
            equip(sets.pet_midcast.skill)
        elseif bp_healing:contains(spell.name) then
            equip(sets.pet_midcast.bloodboon)
        elseif bp_bloodboon:contains(spell.name) then
            equip(sets.pet_midcast.bloodboon)
        elseif bp_skill:contains(spell.name) then
            equip(sets.pet_midcast.skill, sets.pet_midcast.skill.max)
        end
    end
end

function aftercast(spell)
    if spell.type == 'WhiteMagic' or spell.name == 'Elemental Siphon' or spell.name == 'Mana Cede' then
        if pet.isvalid then
            if pet.name:match('Spirit') then
                equip(sets.perpetuation.spirit)
            elseif buffactive["Avatar's Favor"] then
                equip(sets.perpetuation.favor)
            else
                equip(sets.perpetuation[pet.name] or sets.perpetuation)
            end
        else
            equip(sets.idle)
        end
    end
end

function pet_aftercast(spell)
    if pet.name:match('Spirit') then
        equip(sets.perpetuation.spirit)
    elseif buffactive["Avatar's Favor"] then
        equip(sets.perpetuation.favor)
    else
        equip(sets.perpetuation[pet.name] or sets.perpetuation)
    end
end
