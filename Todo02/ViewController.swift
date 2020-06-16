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
    
    //スライドして削除を追加
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == .delete {
            TodoKobetunonakami.remove(at: indexPath.row) // 先にリストから削除する
        // テーブルの高さが変わるのでこれで囲む
        tableView.beginUpdates()
        tableView.deleteRows(at: [indexPath], with: .automatic)
        tableView.endUpdates()
      }
    }
}

