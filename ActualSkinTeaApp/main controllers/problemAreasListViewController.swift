//
//  problemAreasListViewController.swift
//  ActualSkinTeaApp
//
//  Created by Pursuit on 1/5/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class problemAreasListViewController: UIViewController {

    // MARK: Outlets and Variables
    
    @IBOutlet weak var tableView: UITableView!
    
    var selectedArea = [String]()
//       didSet {
//         //might need dispatch queue.
//     tableView.reloadData()
//       }
   
     
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // initTableView()
        print(selectedArea)
        print("Things they cliecked \(selectedArea)")
        tableView.dataSource = self
        updateUI()
    }
    
    private func updateUI() {
        tableView.reloadData()
        self.navigationController!.navigationBar.tintColor = UIColor(red: 195/255, green: 190/255, blue: 255/255, alpha: 1)

    }
    
//    func initTableView() {
//       let tableView = UITableView()
//       tableView.frame = self.view.frame
//       tableView.dataSource = self
//       tableView.delegate = self
//       tableView.backgroundColor = UIColor(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
//
//        //colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
//       tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
//       self.view.addSubview(tableView)
//    }
    
    // MARK: Actions make impacts

    

}

extension problemAreasListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return selectedArea.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "problemAreasCell", for: indexPath)
        
        cell.textLabel?.textColor = .white
        cell.textLabel?.text = selectedArea.first
        return cell
    }
    
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//       let footerView = UIView()
//       footerView.backgroundColor = UIColor(red: 0.9686274529, green:
//       0.78039217, blue: 0.3450980484, alpha: 1)
//       footerView.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height:
//       100)
//       let button = UIButton()
//       button.frame = CGRect(x: 20, y: 10, width: 300, height: 50)
//       button.setTitle("CustomButton", for: .normal)
//       button.setTitleColor( UIColor(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
//       button.backgroundColor = UIColor(red: 0.721568644, green:
//       0.8862745166, blue: 0.5921568871, alpha: 1)
//       footerView.addSubview(button)
//       return footerView
//    }
    
}

extension problemAreasListViewController: UITableViewDelegate {
    
    
    
}
