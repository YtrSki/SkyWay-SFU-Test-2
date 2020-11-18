//
//  TopViewController.swift
//  SkyWay SFU Test 2
//
//  Created by YutaroSakai on 2020/10/20.
//

import UIKit

class TopViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var roomNameTextField: UITextField!
    @IBAction func openTalkScreenAction(_ sender: Any) {
        if roomNameTextField.hasText {
            let mainViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "mainViewController") as! ViewController
            mainViewController.givenRoomName = roomNameTextField.text
            mainViewController.modalPresentationStyle = .fullScreen
            mainViewController.modalTransitionStyle = .flipHorizontal
            present(mainViewController, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
