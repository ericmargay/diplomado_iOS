//
//  CaptionedImage.swift
//  MyFirstApp
//
//  Created by Diplomado on 13/10/23.
//

import UIKit

class CaptionedImage: UIView {

    @IBOutlet weak var captionLabel: UILabel!
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var contentView: UIView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    private func setupView() {
        Bundle.main.loadNibNamed("CaptionedImage", owner: self)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(contentView)
        topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        leftAnchor.constraint(equalTo: contentView.leftAnchor).isActive = true
        rightAnchor.constraint(equalTo: contentView.rightAnchor).isActive = true
    }
}
