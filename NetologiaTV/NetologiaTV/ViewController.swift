//
//  ViewController.swift
//  NetologiaTV
//
//  Created by Aliaksei Zhemblouski on 04.04.2022.
//

import UIKit

class ViewController: UIViewController {

    lazy var genres = [
        "Action",
        "Comedy",
        "Drama",
        "Fantasy",
        "Horror",
        "Mystery",
        "Romance",
        "Thriller",
        "Western",
    ]

    override func viewDidLoad() {
        super.viewDidLoad()


        URLSession.shared.dataTask(with: URLRequest(url: URL(fileURLWithPath: ""))) { data, resp, error in
            print()
        }
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        genres.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "genreCell", for: indexPath)
        var config = cell.defaultContentConfiguration()
        config.text = genres[indexPath.row]
        cell.contentConfiguration = config
        return cell
    }
}
