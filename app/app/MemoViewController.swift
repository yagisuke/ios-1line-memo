//
//  MemoViewController.swift
//  app
//
//  Created by yagisuke on 2018/09/15.
//  Copyright © 2018 yagisuke. All rights reserved.
//

import UIKit

class MemoViewController: UIViewController {

    var memo: String?

    @IBOutlet weak var memoTextField: UITextView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let button = sender as? UIBarButtonItem, button === self.saveButton else {
            return
        }
        self.memo = self.memoTextField.text ?? ""
    }
}
