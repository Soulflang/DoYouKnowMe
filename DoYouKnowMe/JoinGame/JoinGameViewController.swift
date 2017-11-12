//
//  JoinGameViewController.swift
//  DoYouKnowMe
//
//  Created by Brian Christensen on 18/10/2017.
//  Copyright © 2017 Brian Christensen. All rights reserved.
//

import UIKit

class JoinGameViewController: UIViewController, UITableViewDataSource {

    
   var gamesList = Lobby()
    
    @IBOutlet weak var createGame: UIButton!
    @IBOutlet weak var gamesTable: UITableView!
    
    
    @IBAction func createGameButton(_ sender: UIButton) {
        let viewController: UIViewController = StartGame() as UIViewController;
        //self.present(viewController, animated: true, completion: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        UIView.animate(withDuration: 1, delay: 0.0, options: [], animations: {
//            self.createGame.alpha = 1.0
//            }, completion: nil)
//
//    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        createGame.alpha = 0.0
//    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.navigationBar.topItem?.title = "Join Game"
        
        gamesTable.register(UINib(nibName: "JoinGameListViewCell", bundle: nil), forCellReuseIdentifier: "joinGameListCell1")
        
        gamesTable.dataSource = self
        
        gamesList.games.append(GameListItem(gameName: "test game 1", creatorName: "test creator 1", maxPlayers: 8, players: 4))
        gamesList.games.append(GameListItem(gameName: "test game 2", creatorName: "test creator 2", maxPlayers: 8, players: 3))
        gamesList.games.append(GameListItem(gameName: "test game 3", creatorName: "test creator 3", maxPlayers: 8, players: 2))
        gamesList.games.append(GameListItem(gameName: "test game 4", creatorName: "test creator 4", maxPlayers: 8, players: 1))
        gamesList.games.append(GameListItem(gameName: "test game 5", creatorName: "Test creator 5", maxPlayers: 8, players: 5))
        gamesList.games.append(GameListItem(gameName: "test game 6", creatorName: "Test creator 6", maxPlayers: 8, players: 6))
        gamesList.games.append(GameListItem(gameName: "test game 7", creatorName: "Test creator 7", maxPlayers: 8, players: 7))
        gamesList.games.append(GameListItem(gameName: "test game 8", creatorName: "Test creator 8", maxPlayers: 8, players: 8))
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "joinGameListCell1") as! JoinGameListViewCell
        
        cell.lblGameName.text = gamesList.games[indexPath.row].gameName
        cell.lblCreatorName.text = gamesList.games[indexPath.row].creatorName
        cell.setPlayers(players: gamesList.games[indexPath.row].players, maxPlayers: gamesList.games[indexPath.row].maxPlayers)

        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
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
