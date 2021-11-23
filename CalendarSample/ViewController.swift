//
//  ViewController.swift
//  CalendarSample
//
//  Created by Fumitaka Imamura on 2021/11/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        31
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        if #available(iOS 14.0, *) {
            var content = cell.defaultContentConfiguration()
            content.text = "\(indexPath.row + 1)"
            cell.contentConfiguration = content
        } else {
            cell.textLabel?.text = "\(indexPath.row + 1)"
        }
        return cell
    }


}

extension ViewController: UITableViewDelegate {

}
