//
//  ViewController.swift
//  Delegates_Protocols
//
//  Created by Grace Njoroge on 26/09/2018.
//  Copyright © 2018 Grace Njoroge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectedImage: UIImageView!
    @IBOutlet weak var displayChoiceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func selectButton(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        selectionVC.selectionDelegate = self
        present(selectionVC, animated: true, completion: nil)
        
    }
}

extension ViewController: SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        selectedImage.image = image
        displayChoiceLabel.text = name
        view.backgroundColor = color
    }
    

}

