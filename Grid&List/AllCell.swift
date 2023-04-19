

import UIKit

class AllCell: UICollectionViewCell {
    
    
    @IBOutlet weak var allCell: AllCell!
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBOutlet weak var labelText: UILabel!
    
    override func awakeFromNib() {
        imageView.layer.cornerRadius = 3
        imageView.layer.masksToBounds = true
        labelText.layer.cornerRadius = 3
        labelText.layer.masksToBounds = true
        allCell.layer.cornerRadius = 3
        allCell.layer.masksToBounds = true
    }
}
