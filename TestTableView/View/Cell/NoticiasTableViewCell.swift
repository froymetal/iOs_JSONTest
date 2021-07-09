//
//  NoticiasTableViewCell.swift
//  TestTableView
//
//  Created by Field Employee on 7/6/21.
//

import UIKit

class NoticiasTableViewCell: UITableViewCell {
    //MARK: Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
