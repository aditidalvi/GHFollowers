//
//  GFButton.swift
//  GHFollowers
//
//  Created by Aditi Dalvi on 27/04/25.
//

import UIKit

class GFButton: UIButton {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("This could not be implemented") // used for initialization on a storyboard
    }
    
    init(color: UIColor,
         title: String) {
        super.init(frame: .zero)
        self.backgroundColor = color
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        titleLabel?.textColor = .white
        translatesAutoresizingMaskIntoConstraints = false // tells to use auto layout
    }

}
