//
//  ViewController.swift
//  TwitterKit5 Test
//
//  Created by Robert Danklefsen on 2/3/20.
//  Copyright © 2020 Catchy Labs. All rights reserved.
//

import UIKit
import TwitterKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let logInButton = TWTRLogInButton(logInCompletion: { session, error in
            if let session = session {
                print("***** complete with login. userid is: \(session.userID)")
            } else {
                print("TWTRButton Error:")
                print(error.debugDescription)
            }
        })
        logInButton.center = self.view.center
        self.view.addSubview(logInButton)
    }


}

