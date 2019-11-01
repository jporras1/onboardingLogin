//
//  PageCell.swift
//  onboardingLogin
//
//  Created by Javier Porras jr on 10/30/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

class PageCell: UICollectionViewCell {
    static let reuseIdentifier = "PageCellReuseIdentifier"
    var page: Page? {
        didSet{
            guard let page = page else {return}
            var imageName = page.imageName
            if UIDevice.current.orientation.isLandscape{
                imageName += "_landscape"
            }
            imageView.image = UIImage(named: imageName)
            let color = UIColor(white: 0.2, alpha: 1)
            let attributedText = NSMutableAttributedString(string: page.title, attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20, weight: UIFont.Weight.medium), NSAttributedString.Key.foregroundColor: color])
            
            attributedText.append(NSAttributedString(string: "\n\n\(page.message)", attributes: [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14), NSAttributedString.Key.foregroundColor: color]))
            
            let paragraphStyle = NSMutableParagraphStyle()
            paragraphStyle.alignment = .center
            
            let length = attributedText.string.count
            attributedText.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSRange(location: 0, length: length))
            
            textView.attributedText = attributedText
        }
    }
    
    let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(named: "page1")
        imageView.backgroundColor = .yellow
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let textView: UITextView = {
        let textView = UITextView()
        textView.text = "Sample Text For Now"
        textView.isEditable = false
        //textView.textAlignment = .center
        //textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.contentInset = UIEdgeInsets(top: 24, left: 0, bottom: 0, right: 0)
        return textView
    }()
    let lineSeparatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(white: 0.9, alpha: 1)
        return view
    }()
   
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Handlers
    
    fileprivate func setupViews() {
        backgroundColor = .white
        addSubview(imageView)
        addSubview(textView)
        addSubview(lineSeparatorView)
        imageView.anchorToTop(topAnchor, left: leftAnchor, bottom: textView.topAnchor, right: rightAnchor)
        lineSeparatorView.anchorToTop(nil, left: leftAnchor, bottom: textView.topAnchor, right: rightAnchor)
        lineSeparatorView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        textView.anchorWithConstantsToTop(nil, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 16, bottomConstant: 0, rightConstant: 16)
        textView.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.3).isActive = true
    }
}
