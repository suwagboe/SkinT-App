//
//  feedViewController.swift
//  ActualSkinTeaApp
//
//  Created by Pursuit on 1/8/20.
//  Copyright © 2020 Pursuit. All rights reserved.
//

import UIKit

class feedViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var allProducts = [Products]() {
        didSet{
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        loadProducts()
//self.navigationController?.navigationBar.barTintColor = UIColor.red
       // self.navigationController
        
        // makes the bottom (tab bar)part into the same color
        tabBarController?.tabBar.barTintColor = UIColor(red: 195/255, green: 190/255, blue: 255/255, alpha: 1)

        // FOR THE TEXT
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor(red: 195/255, green: 190/255, blue: 255/255, alpha: 1)]
        
        //
        //navigationController?.navigationBar.barTintColor = UIColor(red: 195/255, green: 190/255, blue: 255/255, alpha: 1)

        UINavigationBar.appearance().backgroundColor = UIColor(red: 195/255, green: 190/255, blue: 255/255, alpha: 1)

        //UIBarButtonItem.appearance().tintColor = UIColor.magenta

        
        
       // UINavigationBar.appearance().tintColor = UIColor(red: 195/255, green: 190/255, blue: 255/255, alpha: 1)

    }
    
    private func loadProducts() {
        
        ProductsAPIClient.fetchProducts(completion: {
            [weak self] result in
            switch result {
                
            case .failure(let appError):
                DispatchQueue.main.async {
                    self?.showAlert(title: "App Error", message: "This failed because \(appError)")
        }
            case .success(let product):
                self?.allProducts = product
            }
         })
        
        
    }
    

}

extension feedViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allProducts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // we are using a custom feed cell
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "feedCell", for: indexPath) as? feedCell else {
            fatalError("the cell is not being properly accessed.. couldn't dequqe")
        }
        let product = allProducts[indexPath.row]
        
        cell.configureCell(for: product)
        
        //cell.backgroundColor =
        
        return cell
    }
    
}

extension feedViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
