//
//  AdminMenuViewController.swift
//  bookLab
//
//  Created by Josef Jakobsson on 2021-09-17.
//

import UIKit
import FirebaseAuth
import Firebase
import FirebaseAnalytics
import FirebaseFirestore
import FirebaseFirestoreSwift


class AdminMenuViewController: UIViewController {

    @IBOutlet weak var SignoutTapped: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func SignoutTapped(_ sender: Any) {
        
        let firebaseAuth = Auth.auth()
    do {
      try firebaseAuth.signOut()
    } catch let signOutError as NSError {
      print("Error signing out: %@", signOutError)
        
    }
      
        self.gotoStartScreen()
        
    }
    
    
    func gotoStartScreen() {
        

        let startViewController = storyboard?.instantiateViewController(identifier:
            Constants.Story.startViewController) as? ViewController

        view.window?.rootViewController = startViewController
        view.window?.makeKeyAndVisible()

    }

}
