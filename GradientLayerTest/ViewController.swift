//
//  ViewController.swift
//  GradientLayerTest
//
//  Created by Seunghun Yang on 2022/05/17.
//

import UIKit
import SnapKit

class Cell: UICollectionViewCell {
    static let identifier = "Cell"
    
    override func layoutSubviews() {
        contentView.layer.cornerRadius = contentView.frame.width / 2.0
    }
}

class ViewController: UIViewController {
    
    let layer0 = CAGradientLayer()
    
    private let containerView = UIView()
    
    private(set) lazy var layer: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.locations = [0, 0.22]
        layer.frame = CGRect(x: 0.0, y: 0.0, width: self.view.frame.width, height: 25)
        return layer
    }()
    
    private(set) lazy var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 4, left: 26, bottom: 4, right: 26)
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(Cell.self, forCellWithReuseIdentifier: Cell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    let colors: [UIColor] = [
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
        .red,
        .orange,
        .yellow,
        .green,
        .blue,
        .black,
        .white,
        .cyan,
        .magenta,
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(containerView)
        containerView.snp.makeConstraints { make in
            make.edges.equalTo(view.safeAreaLayoutGuide)
        }
        
        containerView.addSubview(collectionView)
        collectionView.snp.makeConstraints { make in
            make.edges.equalToSuperview()
        }
        
        containerView.layer.addSublayer(layer)
    }
    
    override func viewDidLayoutSubviews() {
        layer.colors = [
            UIColor.systemBackground.cgColor,
            UIColor.systemBackground.withAlphaComponent(0).cgColor
        ]
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        14
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        14
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width - 52 - 14 * 6) / 7.0
        return CGSize(width: width, height: width)
    }
}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        colors.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: Cell.identifier, for: indexPath)
        cell.contentView.backgroundColor = colors[indexPath.item]
        return cell
    }
}
