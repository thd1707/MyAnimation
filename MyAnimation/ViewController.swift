//
//  ViewController.swift
//  MyAnimation
//
//  Created by TY on 31/08/2024.
//

import UIKit

class ViewController: UIViewController {
    var imageIndex = 7
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func button(_ sender: Any) {
        if (imageIndex >= 7) {
            imageIndex = 1
        } else {
            imageIndex += 1
        }
        updateImage()
        
        
    }
    @IBOutlet weak var button: UIButton!
    
    func updateImage(){
        imageView.image = UIImage(named: "jump\(imageIndex)")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateImage()
        let yellowOrange =  UIColor(red: 1.0, green: 0.65, blue: 0.0, alpha: 1.0)
        var configuration = button.configuration
            configuration?.baseBackgroundColor = yellowOrange
            button.configuration = configuration
        
    }
}





