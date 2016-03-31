baseball = {
    pitchers: {
        alt_name: 'Belly Itchers',
        bats: {
            national_leauge: "yes",
            american_league: "no",
            new: {newer: "new data"}
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
            national_leauge: "no",
            american_league: "yes"
        },
        chew: [
            "Tobacco", 
            "Sunflower seeds"
        ]
    }
}

p baseball[:hitters][:alt_name].downcase
p baseball[:hitters][:chew][1]
p baseball[:pitchers][:alt_name].upcase
p baseball[:pitchers][:pitches][2]
p baseball[:pitchers][:bats][:new][:newer]

