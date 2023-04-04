//
//  ViewController.swift
//  loadGIF
//
//  Created by Ananya Chintalapudi on 2/5/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var splashLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.loadGif(name: "1489")
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let splashVC = storyboard.instantiateViewController(withIdentifier: "SplashViewController") as! ViewController
            
            self.present(splashVC, animated: true) {
                
                UIView.animateKeyframes(withDuration: 1.0, delay: 0.5, options: .autoreverse, animations: {
                    self.view.alpha = 0;
                }, completion: nil)
            }
        }
    }
    
    
}

