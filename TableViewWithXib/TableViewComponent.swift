//
//  TableViewComponent.swift
//  TableViewWithXib
//
//  Created by 이지원 on 2023/08/06.
//

import UIKit

final class TableViewComponent: UIView {
    
    var data: [String] = []
    @IBOutlet weak var tableView: UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: CustomTableViewCell.id, bundle: .main), forCellReuseIdentifier: CustomTableViewCell.id)
    }
    
    func setData(with data: [String]) {
        self.data = data
        tableView.reloadData()
    }
}

extension TableViewComponent: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.id, for: indexPath) as? CustomTableViewCell else {
            return UITableViewCell()
        }
        cell.titleLabel.text = data[indexPath.row]
        return cell
    }
}
