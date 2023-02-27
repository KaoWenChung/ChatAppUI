//
//  ViewController.swift
//  ChatApp
//
//  Created by wyn on 2023/2/24.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var messageTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Message"
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .systemCyan
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        messageTableView.register(UINib(nibName: "RightFirstMessageTableViewCell", bundle: nil), forCellReuseIdentifier: "RightFirstMessageTableViewCell")
    }
}

let mockContent = ["conent", "conentconentconentconentconentconentconentconentconentconentconentconentconentconentconentconentconentconentconentconentconentconentconentconentconent"]
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mockContent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "RightFirstMessageTableViewCell") as? RightFirstMessageTableViewCell else { return UITableViewCell() }
        cell.set(mockContent[indexPath.row])
        return cell
    }
}
