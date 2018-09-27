//
//  SelectionScreen.swift
//  Delegates_Protocols
//
//  Created by Grace Njoroge on 26/09/2018.
//  Copyright © 2018 Grace Njoroge. All rights reserved.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class SelectionScreen: UIViewController {

    var selectionDelegate: SideSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func fruitButton(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "apple")!, name: "Apple", color: .cyan)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func vegetableButton(_ sender: UIButton) {
        selectionDelegate.didTapChoice(image: UIImage(named: "carrot")!, name: "Carrot", color: .cyan)
        self.dismiss(animated: true, completion: nil)
    }
}
