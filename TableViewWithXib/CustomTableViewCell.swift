//
//  CustomTableViewCell.swift
//  TableViewWithXib
//
//  Created by 이지원 on 2023/08/06.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    static let id = "CustomTableViewCell"

    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
