//
//  HomeViewController.swift
//  Yummie
//
//  Created by Le Tong Minh Hieu on 26/06/2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var categoryCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "1", name: "Africad Dish 1", image: "https://picsum.photos/100/200"),
        .init(id: "1", name: "Africad Dish 2", image: "https://picsum.photos/100/200"),
        .init(id: "1", name: "Africad Dish 3", image: "https://picsum.photos/100/200"),
        .init(id: "1", name: "Africad Dish 4", image: "https://picsum.photos/100/200"),
        .init(id: "1", name: "Africad Dish 5", image: "https://picsum.photos/100/200")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Yummie"
        setupCollections()
        registerCells()
    }
    
    private func setupCollections() {
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
    }
    
    private func registerCells() {
        categoryCollectionView.registerFromNib(forCellClass: CategoryColllectionViewCell.self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let rightBarButton = UIBarButtonItem(image: UIImage(systemName: "cart.circle.fill"), style: .done, target: self, action: #selector(addItem))
        rightBarButton.tintColor = .systemRed
        navigationItem.rightBarButtonItem = rightBarButton
    }
    
    @objc private func addItem() {
        
    }
}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoryCollectionView.dequeueReusableCell(type: CategoryColllectionViewCell.self, for: indexPath)
        cell.setup(category: categories[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: categoryCollectionView.frame.width / 3, height: 50)
    }
}
