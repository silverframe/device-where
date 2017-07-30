//
//  MyDevicesViewController.swift
//  device-where
//
//  Created by Stefanie Seah on 30/7/17.
//  Copyright © 2017 Stefanie Seah. All rights reserved.
//

import UIKit

class MyDevicesViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        registerCells()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func registerCells(){
        let reuseIdentifier = "DeviceCell"
        let nib = UINib(nibName: reuseIdentifier, bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: reuseIdentifier)
    }

}

extension MyDevicesViewController: UITableViewDataSource {
    
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

extension MyDevicesViewController: UITableViewDelegate {
    
}
