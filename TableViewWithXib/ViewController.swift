//
//  ViewController.swift
//  TableViewWithXib
//
//  Created by 이지원 on 2023/08/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: TableViewComponent!
    
    private var data = ["1", "2", "3", "4", "5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCustomTableView()
    }
    
    private func setupCustomTableView() {
        guard let customTableView = Bundle.main.loadNibNamed("TableViewComponent", owner: nil)?.first as? TableViewComponent else { return }
        customTableView.frame = customView.bounds
        customTableView.setupTableView()
        customTableView.setData(with: data)
        customView.addSubview(customTableView)
    }
}

