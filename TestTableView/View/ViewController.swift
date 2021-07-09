//
//  ViewController.swift
//  TestTableView
//
//  Created by Froy on 7/6/21.
//

import UIKit


class ViewController: UIViewController, UITableViewDelegate {
    
    //MARK: Outlets
    
    @IBOutlet weak var tableView: UITableView!
    //var results = [Result]()
    var todos = [Coin]()
    //var vm = GeneralViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self



        let sharedSession = URLSession.shared

                     if let url = URL(string: "https://api.coinranking.com/v1/public/coins") {
                         // Create Request
                         let request = URLRequest(url: url)

                         // Create Data Task
                         let dataTask = sharedSession.dataTask(with: request, completionHandler: { [self] (data, response, error) -> Void in
                             print(data as Any)

                             do {
                                 let decoder = JSONDecoder()
                                 let response = try decoder.decode(CryptoDataContainer.self, from: data!)

                                todos = response.data.coins
                                print(todos as Any)

                                  DispatchQueue.main.async {
                                     tableView.reloadData()
                                  }

                             } catch {
                                 print(error)
                             }

                         })

                         dataTask.resume()
                     }
        //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
    }
}
    

//MARK: UITableViewDataSource
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return self.todos.count
        return todos.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let message = todos[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? NoticiasTableViewCell
        print(cell as Any)
        cell!.titleLabel.text = message.name
        cell!.descLabel.text = message.price

        
        return cell!
    }

}
