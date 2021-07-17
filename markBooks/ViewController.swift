//
//  ViewController.swift
//  markBooks
//
//  Created by Hüseyin Özdemir on 16.07.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var ericNames = [String]()
    var ericImages = [UIImage]()
    
    @IBOutlet var tableView: UITableView!
    var chosenName = ""
    var chosenImage = UIImage()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.backButtonTitle = "geri"
        navigationItem.title = "eric"
        
        tableView.delegate = self
        tableView.dataSource = self
      
        ericNames.append("eric one")
        ericNames.append("eric two")
        
        
        ericImages.append(UIImage(named: "eric1.jpg")!)
        ericImages.append(UIImage(named: "eric2.png")!)
        
        
    
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            ericNames.remove(at: indexPath.row)
            ericImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
            
        }
    }
    
    
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = ericNames[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ericNames.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenName = ericNames[indexPath.row]
        chosenImage = ericImages[indexPath.row]
        
        performSegue(withIdentifier: "toImagePage", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImagePage"{
            var destinationVc = segue.destination as! ViewControllerImage
            destinationVc.selectedImage = chosenImage
            destinationVc.selectedName = chosenName
        }
    }


    

}
