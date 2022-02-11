//
//  game.swift
//  Bullseye
//
//  Created by lightyear on 2/3/22.
//

import Foundation

struct Game {
    var target = Int.random(in: 1...100)
    var score = 0
    var round = 1
    
    func points(sliderValue: Int) -> Int {
        if abs(self.target - sliderValue) <= 2
        {return abs(self.target - sliderValue) + 50}
        else if self.target == sliderValue
        {return abs(self.target - sliderValue) + 100}
        else
        {return 100 - abs(self.target - sliderValue)}
    }
    
    mutating func startNewRound(points: Int) {
        score += points
        round += 1
        target = Int.random(in: 1...100)
    }
    
    mutating func restart() {
        score = 0
        round = 1
        target = Int.random(in: 1...100)
    }
    
}
