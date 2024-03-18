//
//  ViewController.swift
//  SwiftTableView - Kitap
//
//  Created by Aydın Kutlu on 15.03.2024.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var charactersName = [String]()
    var charactersImagesName = [String]()
    
    var selectedName = ""
    var selectedImage = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        charactersName.append("Traveler")
        charactersName.append("Paimon")
        charactersName.append("Hu Tao")
        charactersName.append("Ganyu")
        charactersName.append("Nahida")
        
        charactersImagesName.append("traveler")
        charactersImagesName.append("paimon")
        charactersImagesName.append("hu tao")
        charactersImagesName.append("ganyu")
        charactersImagesName.append("nahida")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return charactersName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = charactersName[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            charactersName.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedName = charactersName[indexPath.row]
        selectedImage = charactersImagesName[indexPath.row]
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.selectName = selectedName
            destinationVC.selectImage = selectedImage
            
        }
    }

}

