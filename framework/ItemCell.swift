//
//  ItemCell.swift
//  framework
//
//  Created by SUP'Internet 09 on 29/01/2018.
//  Copyright © 2018 SUP'Internet 09. All rights reserved.
//

import Foundation
import UIKit

class ItemCell: UITableViewCell {
    
    let img: String = ""
    let title:  String = ""
    let price: String = ""
    let category: String = ""
    let address: String = ""
    
    override func awakeFromNib() {
        self.contentView.backgroundColor = .white
        

    }
    
    func preparation(img: String, title: String, price: String, category: String, address: String){
        
        
        let imageName = URL(string: img)
        let data = try? Data(contentsOf: imageName!)
        imageView?.image = UIImage(data: data!)
        self.contentView.addSubviewGrid(view: imageView!, grid: ["x": 0, "y": 0, "width": 3, "height": 12])
        
        let title = UILabel()
        title.textColor = .blue
        title.text = "\(title)"
        self.contentView.addSubviewGrid(view: title, grid: ["x": 6, "y": 1, "width": 5, "height": 2])
        
        let price = UILabel()
        price.textColor = .orange
        price.text = "\(price)"
        price.font = price.font.withSize(12)
        self.contentView.addSubviewGrid(view: price, grid: ["x": 6, "y": 4, "width": 5, "height": 2])
        
        let category = UILabel()
        category.textColor = .blue
        category.text = "\(category)"
        category.font = price.font.withSize(12)
        self.contentView.addSubviewGrid(view: category, grid: ["x": 6, "y": 6, "width": 5, "height": 2])
        
        let address = UILabel()
        address.textColor = .blue
        address.text = "\(address)"
        address.font = price.font.withSize(12)
        self.contentView.addSubviewGrid(view: address, grid: ["x": 6, "y": 8, "width": 5, "height": 2])
        
        
    }
}
