//
//  ViewController.swift
//  Todo02
//
//  Created by hiroki kashima on 2020/06/10.
//  Copyright © 2020 hiroki kashima. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TodoKobetunonakami.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let TodoCell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        TodoCell.textLabel!.text = TodoKobetunonakami[indexPath.row]
        return TodoCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if UserDefaults.standard.object(forKey: "TodoList") != nil{
            TodoKobetunonakami = UserDefaults.standard.object(forKey: "TodoList") as! [String]
        }
    }


}

