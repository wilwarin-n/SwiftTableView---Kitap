//
//  SecondViewController.swift
//  SwiftTableView - Kitap
//
//  Created by Aydın Kutlu on 18.03.2024.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectName = ""
    var selectImage = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: selectImage)
        label.text = selectName
    }
    
    
    
    
}
