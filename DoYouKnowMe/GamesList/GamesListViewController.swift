//
//  GamesListViewController.swift
//  DoYouKnowMe
//
//  Created by Morten Due Christiansen on 09/11/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class GamesListViewController: UIViewController, UITableViewDataSource{

    @IBOutlet weak var gamesTableView: UITableView!
    
    
    var gamesList = Lobby()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.topItem?.title = "Games"
        
        gamesTableView.register(UINib(nibName: "GamesListViewCell", bundle: nil), forCellReuseIdentifier: "gamesListCell")
        
        gamesTableView.dataSource = self;
        
        gamesList.games.append(GameListItem(gameName: "test game 1", creatorName: "test creator", maxPlayers: 8, players: 4))
        gamesList.games.append(GameListItem(gameName: "test game 2", creatorName: "test creator", maxPlayers: 8, players: 3))
        gamesList.games.append(GameListItem(gameName: "test game 3", creatorName: "test creator", maxPlayers: 8, players: 2))
        gamesList.games.append(GameListItem(gameName: "test game 4", creatorName: "test creator", maxPlayers: 8, players: 1))
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "gamesListCell") as! GamesListViewCell
        
        cell.lblGameName.text = gamesList.games[indexPath.row].gameName
        cell.lblCreatorName.text = gamesList.games[indexPath.row].creatorName
        cell.setPlayers(players: gamesList.games[indexPath.row].players, maxPlayers: gamesList.games[indexPath.row].maxPlayers)
        

        return cell
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gamesList.games.count
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
