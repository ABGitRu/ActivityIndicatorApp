//
//  ViewController.swift
//  ActivityIndicatorApp
//
//  Created by Mac on 03.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var activityIndicator: UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.isHidden = true
        imageView.image = UIImage(imageLiteralResourceName: "Ayrton")
        imageView.alpha = 0
        
        activityIndicator.hidesWhenStopped = true
        activityIndicator.color = #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)
    }
// Имитация загрузки с помощью анимации
    @IBAction func startDownloadTapped() {
        activityIndicator.startAnimating()
        
        UIView.animate(withDuration: 0, delay: 3, options: .curveEaseIn) {
            self.imageView.alpha = 1
        } completion: { _ in
            self.imageView.isHidden = false
            self.activityIndicator.stopAnimating()
        }

    }
    
}

