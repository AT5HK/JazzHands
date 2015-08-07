//
//  TourController.swift
//  JazzHands
//
//  Created by Auston Salvana on 8/7/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

import UIKit

class TourController: IFTTTAnimatedPagingScrollViewController {
    
    var numberOfPages: Int?
    var appNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setupAnimations()
    }

    //MARK - Setup methods
    
    func setupViews() {
        appNameLabel = UILabel(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        appNameLabel.text = "Jazz Hands"
        view.backgroundColor = UIColor.whiteColor()
        contentView.addSubview(appNameLabel)
    }
    
    func setupAnimations() {
        keepView(appNameLabel, onPage: 0)
    }

}
