//
//  UpgradeViewController.swift
//  PortalApp
//
//  Created by Ben Scheirman on 1/19/21.
//

import UIKit

class UpgradeViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureSubviews()
    }
    
    private func configureSubviews() {
        view.backgroundColor = .white
        
        let background = BackgroundView()
        view.addSubview(background)
        NSLayoutConstraint.activate([
            background.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            background.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            background.topAnchor.constraint(equalTo: view.topAnchor),
            background.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

class BackgroundView: CustomView {
    override func setupView() {
        let imageView = UIImageView(image: UIImage(named: "night-scene"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.6)
        ])
        
        let fadeToBlack = GradientView()
        fadeToBlack.isOpaque = false
        fadeToBlack.startColor = .clear
        fadeToBlack.endColor = .black
        fadeToBlack.locations = [0.25, 0.58]
        fadeToBlack.translatesAutoresizingMaskIntoConstraints = false
        addSubview(fadeToBlack)
        
        NSLayoutConstraint.activate([
            fadeToBlack
                .leadingAnchor.constraint(equalTo: leadingAnchor),
            fadeToBlack
                .trailingAnchor.constraint(equalTo: trailingAnchor),
            fadeToBlack
                .topAnchor.constraint(equalTo: topAnchor),
            fadeToBlack
                .bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}

#if DEBUG
import SwiftUI

struct UpgradeViewController_Previews: PreviewProvider {
    static var previews: some View {
        ViewControllerPreview<UpgradeViewController>()
    }
}
#endif
