-- Settings file for PLD
return {
    Version = 2,
    Default = {
        AutoFood="Miso Ramen",
        SelfBuffs = L{
            Spell.new("Phalanx", L{}, nil, nil, L{}),
            Spell.new("Crusade", L{}, nil, nil, L{}),
            Spell.new("Reprisal", L{}, nil, nil, L{}),
            Spell.new("Protect V", L{}, nil, nil, L{})
        },
        CureSettings = {
            Thresholds = {
                ["Cure IV"] = 1000,
                Emergency = 25,
                Default = 78,
                ["Cure II"] = 0,
                ["Cure III"] = 400
            },
            Delay = 2,
            StatusRemovals = {
                Blacklist = L{

                }
            },
            MinNumAOETargets = 3
        },
        JobAbilities = L{
            JobAbility.new('Majesty', L{InBattleCondition.new()}),
            JobAbility.new('Rampart', L{InBattleCondition.new()})
        },
        PartyBuffs = L{

        },
        NukeSettings = {
            Delay = 10,
            MinManaPointsPercent = 60,
            MinNumMobsToCleave = 2,
            Spells = L{
                Spell.new('Holy II'),
                Spell.new('Holy'),
                Spell.new('Banish II'),
            },
            Blacklist = L{

            },
        },
        PullSettings = {
            Abilities = L{
                Spell.new("Flash", L{}, L{}),
                Spell.new("Banish", L{}, L{})
            },
            Distance = 20
        },
    }
}