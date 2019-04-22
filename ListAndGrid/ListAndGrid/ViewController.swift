//
//  ViewController.swift
//  ListAndGrid
//
//  Created by Suraj Prasad on 25/02/19.
//  Copyright © 2019 Suraj Prasad. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    //MARK:- IBOutlets
    @IBOutlet weak var listView: UIButton!
    @IBOutlet weak var gridView: UIButton!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var tableView: UITableView!
    
    //MARK:- DataSource Arrays
    let foodNames = ["Special Egg Dish","Pizza Combo","Pizza Italiano","Veggie Mega Burger","Mc French Fries","Non-Veg Special","Mix Salad","Special Egg Dish","Pizza Combo","Pizza Italiano","Veggie Mega Burger","Mc French Fries","Non-Veg Special","MIx Salad"]
    let foodDescriptions = ["It Contains an omellete and some spicy stuffs.","It contains 3 pizzas of different categories.","It contains special Italian Pizza overloaded with cheese.","It contains the gaint burger with a lot of veggies.","It contains Mc Donald's special potato fries with masala twist.","It contains 3 delicious foods -chichen,fish and egg curry together.","It contains all required food items to keep you fit and healthy","It Contains an omellete and some spicy stuffs.","It contains 3 pizzas of different categories.","It contains special Italian Pizza overloaded with cheese.","It contains the gaint burger with a lot of veggies.","It contains Mc Donald's special potato fries with masala twist.","It contains 3 delicious foods -chichen,fish and egg curry together.","It contains all required food items to keep you fit and healthy"]
    let foodImages = ["food1","food2","food3","food4","food5","food6","food7","food1","food2","food3","food4","food5","food6","food7"]
    
    //MARK:- LifeCycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CollectionViewCell")
        
        tableView.isHidden = false
        collectionView.isHidden = true
        listView.backgroundColor = UIColor.black
        gridView.backgroundColor = UIColor.blue
    }
    //MARK:- IBActions
    @IBAction func ListViewClicked(_ sender: Any) {
        listView.backgroundColor = UIColor.black
        gridView.backgroundColor = UIColor.blue
        tableView.isHidden = false
        collectionView.isHidden = true
        
    }
    @IBAction func GridViewClicked(_ sender: Any) {
        listView.backgroundColor = UIColor.blue
        gridView.backgroundColor = UIColor.black
        tableView.isHidden = true
        collectionView.isHidden = false
    }
    //MARK:- TableView Delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return foodNames.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell {
            cell.listFoodName.text = foodNames[indexPath.row]
            cell.listFoodDescription.text = foodDescriptions[indexPath.row]
            cell.listFoodImage.image = UIImage(named: foodImages[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    //MARK:- CollectionView Delegates
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodNames.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CollectionViewCell", for: indexPath) as? CollectionViewCell {
            cell.gridFoodName.text = foodNames[indexPath.row]
            cell.gridFoodImage.image = UIImage(named:foodImages[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width/2 - 8, height: 250)
    }
}

