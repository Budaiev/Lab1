//
//  ViewController.swift
//  architecture-swift-lab-1-view-model
//
//  Created by Ilya Bondarenko on 3/16/17.
//  Copyright © 2017 DNTL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Life cycle 
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func showDetailsVC(_ viewModel:DetailsVM!) {
        
        let detailsVC = DetailsViewController.instantiateVC()
        
        detailsVC.updateViewModel(viewModel)
        
        self.navigationController?.pushViewController(detailsVC, animated: true)
        
    }
    
    
    // MARK: - Actions 
    
    /** Action method for "Cats" button */
    @IBAction func catsButtonAction(_ sender: Any) {
        let description = "Cats are very popular pets and there are many different breeds that all vary in size, colour and markings. An average cat reaches a length of 50-60 cm and weighs about 3-5 kg. The fur may be black, white, brown, grey, red, black and white, tabby (striped) or calico."
        
        let image = UIImage(named: "cats_image.jpg")
        
        let viewModel = DetailsVM.init("Cats",
                                       image,
                                       description)
        
        showDetailsVC(viewModel)
    }
    
    
    /** Action method for "Dogs" button */
    @IBAction func dogsButtonAction(_ sender: Any) {
        let description = "The domestic dog (Canis lupus familiaris or Canis familiaris) is a member of genus Canis (canines) that forms part of the wolf-like canids, and is the most widely abundant carnivore. The dog and the extant gray wolf are sister taxa, with modern wolves not closely related to the wolves that were first domesticated. The dog was the first domesticated species and has been selectively bred over millennia for various behaviors, sensory capabilities, and physical attributes."
        
        let image = UIImage(named: "dogs_image.jpg")
        
        let viewModel = DetailsVM.init("Dogs",
                                       image,
                                       description)
        
        showDetailsVC(viewModel)
        
        
    }

}

