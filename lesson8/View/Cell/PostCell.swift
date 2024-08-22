//
//  PostCell.swift
//  lesson8
//
//  Created by Dmitrii Nazarov on 15.08.2024.
//

import UIKit

class PostCell: UITableViewCell {
    static let reuseID = "PostCell"
    
    //MARK: UI
    lazy var cellView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .placeholderText
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        return $0
    }(UIView())
    
    lazy var nameLabel = createLabel(text: "Name Surname", font: .boldSystemFont(ofSize: 20), textColor: .white)
    
    lazy var descriptionLabel = createLabel(text: "HaHahaHahaHahaHahaHahaHahaHahahaHaHahaHahaHahaHahaHahaHahaHahahaHaHahaHahaHahaHahaHahaHahaHahaha", font: .systemFont(ofSize: 12), textColor: .white)
    
    lazy var imageOne: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        //$0.backgroundColor = .red
        $0.image = .img1
        $0.heightAnchor.constraint(equalToConstant: 160).isActive = true
        $0.layer.cornerRadius = 25
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    lazy var imageTwo: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = .img2
        $0.heightAnchor.constraint(equalToConstant: 110).isActive = true
        $0.widthAnchor.constraint(equalToConstant: 110).isActive = true
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    lazy var imageThree: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = .img3
        $0.heightAnchor.constraint(equalToConstant: 110).isActive = true
        $0.widthAnchor.constraint(equalToConstant: 110).isActive = true
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    lazy var imageFour: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = .img4
        $0.heightAnchor.constraint(equalToConstant: 110).isActive = true
        $0.widthAnchor.constraint(equalToConstant: 110).isActive = true
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        return $0
    }(UIImageView())
    
    lazy var btn: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setTitle("show details", for: .normal)
        $0.backgroundColor = .black
        $0.layer.cornerRadius = 20
        $0.clipsToBounds = true
        return $0
    }(UIButton())
    
    
    
    
    
    
    //MARK: INIT
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Private methods
    func createLabel(text: String, font: UIFont, textColor: UIColor) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = font
        label.textColor = textColor
        label.numberOfLines = 0
        //label.sizeToFit()
        return label
    }
    
    
    private func setupConstraints() {
        addSubviews()
        
        NSLayoutConstraint.activate([
            cellView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            cellView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            cellView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15),
            cellView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
        
            imageOne.topAnchor.constraint(equalTo: cellView.topAnchor, constant: 15),
            imageOne.leadingAnchor.constraint(equalTo: cellView.leadingAnchor, constant: 20),
            imageOne.trailingAnchor.constraint(equalTo: cellView.trailingAnchor, constant: -20),
            
            
            nameLabel.topAnchor.constraint(equalTo: imageOne.topAnchor, constant: 70),
            nameLabel.leadingAnchor.constraint(equalTo: imageOne.leadingAnchor, constant: 20),
            nameLabel.trailingAnchor.constraint(equalTo: imageOne.trailingAnchor, constant: -20),
        
//
            
            descriptionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            descriptionLabel.leadingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
            descriptionLabel.trailingAnchor.constraint(equalTo: nameLabel.trailingAnchor),
            
            imageTwo.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 15),
            imageTwo.leadingAnchor.constraint(equalTo: imageOne.leadingAnchor),
            
            imageThree.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 15),
            imageThree.centerXAnchor.constraint(equalTo: imageOne.centerXAnchor),
            
            imageFour.topAnchor.constraint(equalTo: imageOne.bottomAnchor, constant: 15),
            imageFour.trailingAnchor.constraint(equalTo: imageOne.trailingAnchor),
            
            btn.topAnchor.constraint(equalTo: imageTwo.bottomAnchor, constant: 15),
            btn.leadingAnchor.constraint(equalTo: imageOne.leadingAnchor),
            btn.trailingAnchor.constraint(equalTo: imageOne.trailingAnchor),
            btn.heightAnchor.constraint(equalToConstant: 50),
            
            cellView.bottomAnchor.constraint(equalTo: btn.bottomAnchor,constant: 10)
        
        ])
    }
    
    private func addSubviews() {
        contentView.addSubview(cellView)
        cellView.addSubview(imageOne)
        imageOne.addSubview(nameLabel)
        imageOne.addSubview(descriptionLabel)
        cellView.addSubview(imageTwo)
        cellView.addSubview(imageThree)
        cellView.addSubview(imageFour)
        cellView.addSubview(btn)
        
        
    }
    
    func setupView(item: TableData) {
        imageOne.image = UIImage(named: item.imageOne)
        imageTwo.image = UIImage(named: item.imageTwo)
        imageThree.image = UIImage(named: item.imageThree)
        imageFour.image = UIImage(named: item.imageFour)
        nameLabel.text = item.name
        descriptionLabel.text = item.descr
        
        
        
   }
}
