//
//  TabBarViewController.swift
//  Movies Review NYT
//
//  Created by Fábio França on 19/08/20.
//  Copyright © 2020 music.com.chama. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setupTabBar()
    }

    func setupTabBar() {
        let reviewsVC = UINavigationController(rootViewController: ReviewsCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout()))
        reviewsVC.tabBarItem = UITabBarItem(title: "Reviews", image: nil, tag: 0)
        
        let searchVC = UINavigationController(rootViewController: SearchCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout()))
        searchVC.tabBarItem = UITabBarItem(title: "Search", image: nil, tag: 1)
        
        let favoritesVC = UINavigationController(rootViewController: FavoritesTableViewController())
        favoritesVC.tabBarItem = UITabBarItem(title: "Favorites", image: nil, tag: 2)
        
        viewControllers = [reviewsVC,searchVC,favoritesVC]
    }
    
//    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
//        guard let navigations = viewControllers else { return }
//        let navigation = navigations[item.tag] as? UINavigationController
//        navigation?.popToRootViewController(animated: true)
//    }

}
