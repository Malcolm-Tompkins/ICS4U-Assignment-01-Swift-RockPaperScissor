/* Runs the rock, paper, Scissors game.
*
* @author  Malcolm Tompkins
* @version 1.0
* @since   2021-12-05
*
*/

// Swift "Rock, paper, scissors" Program
import Foundation

var moves = [String]()
moves.append("rock")
moves.append("paper")
moves.append("scissors")

let randomNumber = Int.random(in: 0...2)
let cpuMove = moves[randomNumber]

print("Rock, Paper or Scissors")
let input = readLine()
let unwrappedInput = input!

print("\nThe cpu chose: \(cpuMove)")

let userMove = unwrappedInput.lowercased()
if moves.contains(userMove) {
    if userMove == cpuMove {
        print("\nIt is a tie...")
    } else if userMove == "rock" && cpuMove == "scissors" {
        print("\nUser wins!")
    } else if userMove == "paper" && cpuMove == "rock" {
        print("\nUser wins!")
    } else if userMove == "scissors" && cpuMove == "paper" {
        print("\nUser wins!")
    } else {
        print("\nYou lost...")
                                  }
} else {
      print("\nThe only possible inputs are: 'rock', 'paper' and 'scissors'")
}
print("\nDone.")
