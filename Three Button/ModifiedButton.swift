//
//  ModifiedButton.swift
//  Three Button
//
//  Created by Лариса Терегулова on 05.05.2023.
//

import UIKit

class ModifiedButton: UIButton {
    
    func settingButton() {
        backgroundColor = .blue
        setTitleColor(.white, for: .normal)
        setImage(.init(systemName: "arrow.right.circle.fill"), for: .normal)
        layer.cornerRadius = 10
        clipsToBounds = true
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    func settingEdgeInsets() {
        var customConfiguration = UIButton.Configuration.filled()
        
        let spacing: CGFloat = 8
        let edgeLeftRight: CGFloat = 14
        let edgeTopBottom: CGFloat = 10

        customConfiguration.contentInsets = NSDirectionalEdgeInsets(top: edgeTopBottom, leading: edgeLeftRight, bottom: edgeTopBottom, trailing: edgeLeftRight)
        customConfiguration.imagePlacement = .trailing
        customConfiguration.imagePadding = spacing
        configuration = customConfiguration
    }
    
    override func tintColorDidChange() {
        super.tintColorDidChange()
        if tintAdjustmentMode == .dimmed {
            backgroundColor = .systemGray
            layer.backgroundColor = UIColor.systemGray.cgColor
            layer.cornerRadius = 10
        } else {
            backgroundColor = .blue
            layer.backgroundColor = UIColor.blue.cgColor
        }
    }
    
    override var isHighlighted: Bool {
           didSet {
               UIView.animate(withDuration: 0.1, delay: 0, options: [.beginFromCurrentState, .allowUserInteraction]) {
                   self.transform = self.isHighlighted ? CGAffineTransform(scaleX: 0.9, y: 0.9) : CGAffineTransform(scaleX: 1, y: 1)
                }
           }
       }
}
