//
//  LeagueVC.swift
//  Swoosh-Application
//
//  Created by Johnny Perdomo on 11/29/17.
//  Copyright © 2017 Johnny Perdomo. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player: Player!
    
    @IBOutlet weak var nextBtn: BorderButton!
    
        override func viewDidLoad() {
        super.viewDidLoad()

        player = Player() // thats how you initialize a struct
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
       selectLeague(leagueType: "mens") //pass in "mens" nextBtn is enabled
    }

    @IBAction func onWomensTapped(_ sender: Any) {
       selectLeague(leagueType: "womens") //pass in "womens" nextBtn is enabled
    }

    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed") //pass in "coed" nextBtn is enabled
    }
    
    func selectLeague(leagueType: String) { //func for the action button
        player.desiredLeague = leagueType //to determine which league was pressed
        nextBtn.isEnabled = true //to enable the Nextbtn to ON.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) { //to pass data between View Controllers
        if let skillVC = segue.destination as? SkillVC { //to cast 
            skillVC.player = player //this is where youre passing the player from this screen onto the player of the other screen.
        }
    }
    
}
