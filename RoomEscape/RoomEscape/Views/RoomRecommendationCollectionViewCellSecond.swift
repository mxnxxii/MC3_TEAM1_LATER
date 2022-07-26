//
//  RoomCollectionViewCell.swift
//  RoomEscape
//
//  Created by Hyeon-sang Lee on 2022/07/19.
//

import UIKit

class RoomRecommendationCollectionViewCellSecond: UICollectionViewCell {
    
    @IBOutlet weak var roomImage: UIImageView!
    @IBOutlet weak var roomName: UILabel!
    @IBOutlet weak var storeName: UILabel!
    @IBOutlet weak var stars: UIStackView!
    @IBOutlet weak var starImage1: UIImageView!
    @IBOutlet weak var starImage2: UIImageView!
    @IBOutlet weak var starImage3: UIImageView!
    @IBOutlet weak var starImage4: UIImageView!
    @IBOutlet weak var starImage5: UIImageView!
    @IBOutlet weak var selectionCover: UIView!
    
    override var isSelected: Bool {
        didSet {
            if isSelected {
                configureSelection()
            } else {
                configureDeselection()
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionCover.layer.cornerRadius = 10
        selectionCover.layer.borderColor = UIColor.mainPurple?.cgColor
        
    }
    
    private func configureSelection() {
        selectionCover.layer.borderWidth = 1
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.isSelected = false
        }
    }
    
    private func configureDeselection() {
        selectionCover.layer.borderWidth = 0
    }
}
