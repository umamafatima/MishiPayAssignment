//
//  ProductListViewController.swift
//  BarCodeScanner
//
//  Created by Truweight Wellness Pvt Ltd on 01/01/21.
//  Copyright © 2021 Truweight Wellness Pvt Ltd. All rights reserved.
//

import UIKit



class ProductListViewController: UIViewController {
    @IBOutlet weak var productListtableView: UITableView!

    var productListArray : [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setUpUI()
    }
    
    func setUpUI() {
        
        self.productListtableView.delegate = self
        self.productListtableView.dataSource = self
        
        self.productListtableView.tableFooterView = UIView()
    }
    
    @IBAction func presentScanBarCodeVC(sender: UIButton) {
        let barCodeVC = self.storyboard?.instantiateViewController(withIdentifier: "BarCodeScannerViewController") as! BarCodeScannerViewController
        barCodeVC.delegate = self
        self.present(barCodeVC, animated: true, completion: nil)
    }
    
}

extension ProductListViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as! ProductTableViewCell
            
        let productData =  self.productListArray[indexPath .row]
        cell.productNameLabel.text = productData.name ?? ""
        cell.productPriceLabel.text = "Rs. \(productData.price ?? "" )"
        if let imageName = productData.image {
            cell.productImageView.image = UIImage(named: imageName)
        }
        
        return cell
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.productListArray.count
    }

   
}

extension ProductListViewController: productInfoDelegate {
    func sendProductData(scannedData: Product?) {
        if let productObj = scannedData {
            productListArray.insert(productObj, at: 0)
            productListtableView.reloadData()
        }
    }
}
