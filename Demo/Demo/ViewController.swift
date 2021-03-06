//
//  ViewController.swift
//  BTNavigationDropdownMenu
//
//  Created by Pham Ba Tho on 6/8/15.
//  Copyright (c) 2015 PHAM BA THO. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var selectedCellLabel: UILabel!
    var menuView: BTNavigationDropdownMenu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let mostPop: DropDownElement = DropDownElement()
        mostPop.text = "Most Popular"
        let lastest: DropDownElement = DropDownElement()
        lastest.text = "Latest"
        let trending: DropDownElement = DropDownElement()
        trending.text = "Trending"
        let nearest: DropDownElement = DropDownElement()
        nearest.text = "Nearest"
        let topPicks: DropDownElement = DropDownElement()
        topPicks.text = "Top Picks"
        let latest: DropDownElement = DropDownElement()
        latest.text = "Latest element"
        let items = [mostPop, lastest, trending, nearest, topPicks, mostPop, lastest, trending, nearest, topPicks,mostPop, lastest, trending, nearest, topPicks, latest,mostPop, lastest, trending, nearest, topPicks, mostPop, lastest, trending, nearest, topPicks,mostPop, lastest, trending, nearest, topPicks, latest]
        
        self.selectedCellLabel.text = String((items.first?.text)!)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 0.0/255.0, green:180/255.0, blue:220/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        menuView = BTNavigationDropdownMenu(navigationController: self.navigationController, containerView: self.navigationController!.view, title: "Dropdown Menu", items: items, height: 50)
        menuView.cellHeight = 50
        menuView.cellBackgroundColor = self.navigationController?.navigationBar.barTintColor
        menuView.cellSelectionColor = UIColor(red: 0.0/255.0, green:160.0/255.0, blue:195.0/255.0, alpha: 1.0)
        menuView.shouldKeepSelectedCellColor = true
        menuView.cellTextLabelColor = UIColor.white
        menuView.cellTextLabelFont = UIFont(name: "Avenir-Heavy", size: 17)
        menuView.cellTextLabelAlignment = .left // .Center // .Right // .Left
        menuView.arrowPadding = 15
        menuView.animationDuration = 0.5
        menuView.maskBackgroundColor = UIColor.black
        menuView.maskBackgroundOpacity = 0.3
        menuView.didSelectItemAtIndexHandler = {(indexPath: Int) -> () in
            print("Did select item at index: \(indexPath)")
            self.selectedCellLabel.text = items[indexPath].text as String
        }
        
        self.navigationItem.titleView = menuView
    }
}

