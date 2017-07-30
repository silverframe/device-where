//
//  DeviceOverviewViewController.swift
//  device-where
//
//  Created by Stefanie Seah on 30/7/17.
//  Copyright © 2017 Stefanie Seah. All rights reserved.
//

import UIKit

class DeviceOverviewViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        registerCells()
        // Do any additional setup after loading the view.
    }

    func registerCells(){
        let reuseIdentifier = "DeviceCell"
        let nib = UINib(nibName: reuseIdentifier, bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: reuseIdentifier)
    }

}

extension DeviceOverviewViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DeviceCell") as? DeviceCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
}

extension DeviceOverviewViewController: UITableViewDelegate {
    
}
