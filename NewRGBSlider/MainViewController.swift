//
//  MainViewController.swift
//  NewRGBSlider
//
//  Created by Bogdan Baskakov on 13/08/2019.
//  Copyright © 2019 Bogdan Baskakov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, ColorDelegate {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ChangeColor" {
            let secondVC = segue.destination as! ViewController
            secondVC.color = view.backgroundColor
        }
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        let secondVC = segue.source as! ViewController
        secondVC.deledate = self
    }
    
    func userChangeColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
