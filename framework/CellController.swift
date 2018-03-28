//
//  cellController.swift
//  framework
//
//  Created by Florian Desjouis on 23/03/2018.
//  Copyright © 2018 SUP'Internet 09. All rights reserved.
//

import UIKit

class CellController: UIViewController {
    
    var header: UIView!
    
    var img: String?
    var name: String?
    var price: String?
    var category: String?
    var address: String?
    
    override func viewDidLoad() {
        
        header = UIView()
        self.view.addSubviewGrid(view: header, grid: ["x": 0, "y": 0, "width": 10, "height": 20])
        
        let imgView = UIImageView()
        let imgUrl = URL(string: img!)
        let imgData = try! Data(contentsOf: imgUrl!)
        imgView.image = UIImage(data: imgData)
        header.addSubviewGrid(view: imgView, grid: ["x": 2, "y": 1, "width": 10, "height": 3])
        
        
        let title = UILabel()
        title.textColor = UIColor.orange
        title.text = "\(title)"
        title.font = title.font.withSize(24)
        title.font = UIFont.boldSystemFont(ofSize: 24.0)
        header.addSubviewGrid(view: title, grid: ["x": 2.5, "y": 3, "width": 10, "height": 2])
        
        let price = UILabel()
        price.textColor = UIColor.orange
        price.text = "\(price)"
        price.font = price.font.withSize(20)
        price.font = UIFont.boldSystemFont(ofSize: 20.0)
        header.addSubviewGrid(view: price, grid: ["x": 2.5, "y": 3.3, "width": 8, "height": 2])
        
        let category = UILabel()
        category.textColor = UIColor.red
        category.text = "\(category)"
        category.font = category.font.withSize(15)
        header.addSubviewGrid(view: category, grid: ["x": 2.5, "y": 3.6, "width": 8, "height": 2])
        
        let address = UILabel()
        address.textColor = UIColor.red
        address.text = "\(address)"
        address.font = address.font.withSize(14)
        address.font = UIFont.boldSystemFont(ofSize: 12.0)
        header.addSubviewGrid(view: address, grid: ["x": 2.5, "y": 3.9, "width": 8, "height": 2])
        
        
    }
    
}
