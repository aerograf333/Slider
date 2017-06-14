//
//  ViewController.swift
//  Slider
//
//  Created by Anastasia Kurbatova on 6/14/17.
//  Copyright © 2017 roman khorenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var slayder: UISlider!
    @IBAction func slayderChanged(_ sender: Any) {
       table.reloadData()    }
    @IBOutlet var table: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

    	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

}

extension ViewController : UITableViewDelegate {

}

extension ViewController : UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 100000000//cellCotent.count
    }

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        cell.textLabel?.text = String((Int(slayder.value * 20)) * (indexPath.row+1))
        return cell
    }
}
