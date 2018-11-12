//
//  ViewController.swift
//  taskCollection
//
//  Created by Sriram Prasad on 11/11/18.
//  Copyright © 2018 FullStackNet. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {

    let names = ["names","kartrhik","Ramredd22y","Ramreddycccc","Ramreddyggg","Ramreddyggg","Ramnnnreddy","Ramreddvvvy","Ramreddbbby","Ramreddhhhy","Ramreddy","Ramreddy","Ramreddy","Ramreddy","Ramreddy","Ramreddy","Ramreddy","Ramreddy","Ramreddy","Ramreddy","self.contentView.autoresizingMask.insert(.flexibleHeight)"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.backgroundColor = .white
//        collectionVie
        collectionView.register(CollectCell.self, forCellWithReuseIdentifier: "cell")
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectCell
        cell.name.text = names[indexPath.row]
        
            return cell
    }
   
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.size.width - 12 * 3) / 2 //some width
        let height = width *  0.2//ratio
        return CGSize(width: width, height: height)

    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("touched")
    }

}

class CollectCell: UICollectionViewCell {
    let name: UILabel  = {
       let label  = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.layer.cornerRadius = label.frame.height/2
        label.backgroundColor = .red
        label.translatesAutoresizingMaskIntoConstraints = false
         return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
//        self.contentView.autoresizingMask.insert(.flexibleHeight)
//        self.contentView.autoresizingMask.insert(.flexibleWidth)
//        backgroundColor = .yellow
        
        addSubview(name)
        setupConstraints()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupConstraints(){
        
        let constraint  =
[
        name.topAnchor.constraint(equalTo: topAnchor),
        name.leadingAnchor.constraint(equalTo: leadingAnchor,constant: 10),
        name.bottomAnchor.constraint(equalTo: bottomAnchor),
        name.trailingAnchor.constraint(equalTo: trailingAnchor,constant: -10),

      ]
        
        
        NSLayoutConstraint.activate(constraint)
    }
}
