//
//  ViewController.swift
//  Times Tables
//
//  Created by Nicolas Guerrero on 7/31/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var slider: UISlider!
    
    @IBAction func sliderChanged(_ sender: Any) {
        table.reloadData()
    }
    
    
    @IBOutlet weak var table: UITableView!
    
 
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 50
    }
    

    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = String((Int(slider.value * 20)) * (indexPath.row + 1))
        
        return cell
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

