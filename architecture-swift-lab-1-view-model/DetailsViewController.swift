//
//  DetailsViewController.swift
//  architecture-swift-lab-1-view-model
//
//  Created by Ilya Bondarenko on 3/16/17.
//  Copyright © 2017 DNTL. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var detailsLabel: UILabel!
    
    private(set) var viewModel:DetailsVM?
    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = viewModel?.titleValue
        self.imageView.image = viewModel?.image
        self.detailsLabel.text = viewModel?.descriptionText
    }
    
    static func instantiateVC () -> DetailsViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "detailsVC") as! DetailsViewController
    }
    
    func updateViewModel(_ newViewModel:DetailsVM!) {
        self.viewModel = newViewModel
    }


}
