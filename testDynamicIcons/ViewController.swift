//
//  ViewController.swift
//  testDynamicIcons
//
//  Created by Andrii Kuznietsov on 15.02.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonOnPressed(_ sender: UIButton) {
        UIApplication.shared.setAlternateIconName("AppIcon") { error in
            if let error = error {
                print(error.localizedDescription)
            } else {
                print("Success!")
            }
        }
    }
    @IBAction func resetIconButton(_ sender: UIButton) {
        UIApplication.shared.setAlternateIconName(nil)
    }
    
    @IBAction func supportsButton(_ sender: UIButton) {
        print(isDeviceSupportsIconChange())
    }
    
    @IBAction func getIconNameButton(_ sender: UIButton) {
        print(getIconName())
    }
    
    func isDeviceSupportsIconChange() -> Bool {
        return UIApplication.shared.supportsAlternateIcons;
    }
    
    func getIconName() -> String {
        return UIApplication.shared.alternateIconName ?? "Primary"
    }
}



