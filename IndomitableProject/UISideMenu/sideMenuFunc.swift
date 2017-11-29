//
//  sideMenuFunc.swift
//  IndomitableProject
//
//  Created by Martinus on 29/11/17.
//  Copyright © 2017 RagingWind. All rights reserved.
//

import UIKit

extension UIViewController{
    func sideMenuView(sideMenu : UIBarButtonItem){
        if revealViewController() != nil{
            sideMenu.target = revealViewController()
            sideMenu.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            
            //alertButton.target = revealViewController()
            //alertButton.action = #selector()
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
}
