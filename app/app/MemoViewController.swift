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

    @IBOutlet weak var memoTextField: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let memo = self.memo {
            self.memoTextField.text = memo
            self.navigationItem.title = "Edit Memo"
        }
        //self.saveButton.isEnabled = false
        self.updateSaveButtonState()
    }
    
    private func updateSaveButtonState() {
        let memo = self.memoTextField.text ?? ""
        self.saveButton.isEnabled = !memo.isEmpty
    }

    @IBAction func memoTextFieldChanged(_ sender: Any) {
        self.updateSaveButtonState()
    }

    @IBAction func cancel(_ sender: Any) {
        if self.presentingViewController is UINavigationController {
            self.dismiss(animated: true, completion: nil)
        } else {
        self.navigationController?.popViewController(animated: true)
        }
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
