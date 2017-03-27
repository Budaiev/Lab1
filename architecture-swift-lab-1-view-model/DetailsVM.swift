//
//  DetailsVM.swift
//  architecture-swift-lab-1-view-model
//
//  Created by Aleksandr Bydaiev on 3/27/17.
//  Copyright © 2017 DNTL. All rights reserved.
//

import UIKit

class DetailsVM: NSObject {
    
    private(set) var titleValue: String = ""
    private(set) var image:UIImage?
    private(set) var descriptionText: String = ""
    
    //MARK: - Init method
    
    init(_ titleValue: String!, _ image: UIImage!, _ descriptionText: String!) {
        super.init()
        
        self.titleValue = titleValue
        self.image = image
        self.descriptionText = descriptionText
    }
    
}
