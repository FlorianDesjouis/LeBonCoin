//
//  ViewController.swift
//  framework
//
//  Created by SUP'Internet 09 on 29/01/2018.
//  Copyright © 2018 SUP'Internet 09. All rights reserved.
//
import Foundation
import UIKit

class ViewController: UITableViewController {

    let arr = [
        ["img": "https://fridg-front.s3.amazonaws.com/media/products/banane_DAC0XAQ.jpg", "title": "Banane", "price": "4 500 000€", "category": "Alimentation", "address": "Paris 11e"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // let label = UILabel()
        //label.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height / 3)
        //label.text = "Label"
        //label.backgroundColor = .red
        //label.textAlignment = .center
        //label.textColor = .white
        
        //label.numberOfLines = 2
        //label.lineBreakMode = .byWordWrapping
        
        //label.font = label.font.withSize(2)
        
        //self.view.addSubview(label)
        
        // let labelYellow = UILabel()
        //labelYellow.frame = CGRect(x: 0, y: self.view.frame.height / 3, width: self.view.frame.width, height: self.view.frame.height / 3)
        //labelYellow.backgroundColor = .yellow
        //self.view.addSubview(labelYellow)
        
        //let labelRed = UILabel()
        //labelRed.frame = CGRect(x: 0, y: self.view.frame.height / 3 * 2, width: self.view.frame.width, height: self.view.frame.height / 3)
        //labelRed.backgroundColor = .red
        //self.view.addSubview(labelRed)
        
        
        //self.view.addSubviewGrid(view: label, grid: ["x": 0, "y": 2, "width": 8, "height": 8])
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 15
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath) as! ItemCell
        print(1)
        let item = arr[indexPath.row]
        
        cell.preparation(img: item["img"]!, title: item["title"]!, price: item["price"]!, category: item["category"]!, address: item["address"]!)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail" {
            if let controller = segue.destination as? CellController {
                let item = sender as? [String: String]
                controller.img = item?["img"]
                controller.name = item?["title"]
                controller.price = item?["price"]
                controller.category = item?["category"]
                controller.address = item?["address"]
                
            }
        }
    }


}


extension UIView {
    func addSubviewGrid(view: UIView, grid: [String: CGFloat]){
        
        let x = self.frame.width / 12 * grid["x"]!,
        y = self.frame.height / 12 * grid["y"]!,
        width = self.frame.width / 12 * grid["width"]!,
        height = self.frame.height / 12 * grid["height"]!
        
        view.frame = CGRect(x: x, y: y, width: width, height: height)
        
        self.addSubview(view)
    }
}
