baseball = {
    pitchers: {
        alt_name: 'Belly Itchers',
        bats: {
            national_leauge: yes,
            american_league: no
        },
        pitches: [
            "Fastball", 
            "Change Up",
            "Curve"
        ]
    },
    hitters: {
        alt_name: 'Batsmen',
        designated_hitter: {
            national_leauge: no,
            american_league: yes
        },
        chew: [
            "Tobacco", 
            "Sunflower seeds"
        ]
    }
}

p baseball[:hitters][:alt_name].downcase

