//
//  Rps.swift
//
//  Created by Jenoe Balote
//  Created on 2021-12-02
//  Version 1.0
//  Copyright (c) 2021 Jenoe Balote. All rights reserved.
//
//  This program runs a rock paper scissors game, wherein the user
//  plays a game of rock paper scissors against the computer.
//
import Foundation

// This function generates the choice of the computer.
func cpuMove() -> String {

    let lowerNum = 0
    let higherNum = 2
    let cpuInt = Int.random(in: lowerNum...higherNum)

    var cpuMoveValue = ""

    switch cpuInt {
    case 0:
      cpuMoveValue = "rock"
    case 1:
      cpuMoveValue = "paper"
    case 2:
      cpuMoveValue = "scissors"
    default:
      break
    }

    return cpuMoveValue
}

// This function determines the winner of the game.
func gameWinner(usrMove: String, cpuMove: String) -> String {

    let gameWinnerValue: String

    if usrMove == cpuMove {
        gameWinnerValue = "It's a tie. "
    } else if (usrMove == "rock" && cpuMove == "scissors")
              || (usrMove == "scissors" && cpuMove == "paper")
              || (usrMove == "paper" && cpuMove == "rock") {

        gameWinnerValue = "You win! Good job!"
    } else {
        gameWinnerValue = "You lose... yikes."
    }

    return gameWinnerValue
}

// Input
print("This is the Rock, Paper, Scissors program.")
print("\nChoose your move (rock, paper, scissors): ", terminator: "")

// Gathers the user input and makes sure it isn't empty
guard let usrMove = readLine(), !usrMove.isEmpty else {
    print("Please enter a correct input.")
    print("\nDone.")
    exit(001)
}

// Validates the user input
switch usrMove {
case "rock", "paper", "scissors":
    break
default:
    print("Invalid input.")
    print("\nDone.")
    exit(001)
}

// Call functions
let cpuMoveValue = cpuMove()
let gameWinnerValue = gameWinner(usrMove: usrMove, cpuMove: cpuMoveValue)

// Output
print("The computer chose: \(cpuMoveValue)")
print("\(gameWinnerValue)")

print("\nDone.")
