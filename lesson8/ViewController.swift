//
//  ViewController.swift
//  lesson8
//
//  Created by Dmitrii Nazarov on 14.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    let posts = TableData.mockData()
    
    lazy var tableView: UITableView = {
        $0.dataSource = self
        $0.delegate = self
        $0.register(PostCell.self, forCellReuseIdentifier: PostCell.reuseID)
        $0.separatorColor = UIColor.clear
        $0.separatorStyle = .none
        return $0
    }(UITableView(frame: view.frame, style: .plain))
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .red
        setupNavigationBar()
        view.addSubview(tableView)
    }
    private func setupNavigationBar() {
        navigationController?.navigationBar.backgroundColor = .red
       // navigationController?.navigationBar.barTintColor = .red
        
        let circleViewOne = UIView()
        circleViewOne.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        circleViewOne.layer.cornerRadius = circleViewOne.frame.size.width / 2
        circleViewOne.backgroundColor = .systemBlue
        
        let circleViewTwo = UIView()
        circleViewTwo.frame = CGRect(x: 0, y: 0, width: 20, height: 20)
        circleViewTwo.layer.cornerRadius = circleViewTwo.frame.size.width / 2
        circleViewTwo.backgroundColor = .systemBlue
        
        let leftBarButtonItem = UIBarButtonItem(customView: circleViewOne)
        self.navigationItem.leftBarButtonItem = leftBarButtonItem
        
        let rightBarButtonItem = UIBarButtonItem(customView: circleViewTwo)
        self.navigationItem.rightBarButtonItem = rightBarButtonItem
    }
    
}


extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PostCell.reuseID, for: indexPath) as! PostCell
        
        let item = posts[indexPath.row]
        cell.setupView(item: item)
        
        return cell
    }
    
    
}
