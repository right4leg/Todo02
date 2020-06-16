//
//  AddContoroller.swift
//  Todo02
//
//  Created by hiroki kashima on 2020/06/10.
//  Copyright © 2020 hiroki kashima. All rights reserved.
//

import UIKit

//変数の設置
var TodoKobetunonakami = [String]()

class AddContoroller: UIViewController {

    @IBOutlet weak var TodoText: UITextField!
    @IBAction func Enter(_ sender: Any) {
        //変数に入力内容を入れる
        TodoKobetunonakami.append(TodoText.text!)
        //Enterボタンを押したらテキストフィールドを空にする
        TodoText.text = ""
        //変数の中身をUD(UserDefoult)に追加する
        UserDefaults.standard.set(TodoKobetunonakami, forKey: "TodoList")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
