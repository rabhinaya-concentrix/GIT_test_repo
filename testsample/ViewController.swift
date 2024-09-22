//
//  ViewController.swift
//  testsample
//
//  Created by abhinaya on 21/08/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.edgesForExtendedLayout = [.top]
        self.extendedLayoutIncludesOpaqueBars = true
        self.navigationItem.title = "vc1"
        self.view.backgroundColor = .green
        //        let scroll = UIScrollView()
        //        scroll.translatesAutoresizingMaskIntoConstraints = false
        ////        scroll.delegate = self
        //        contentView.addSubview(scroll)
        //        NSLayoutConstraint.activate([
        //            scroll.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
        //            scroll.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
        //            scroll.topAnchor.constraint(equalTo: self.contentView.topAnchor),
        //            scroll.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor)
        //        ])
        //        let button = UIButton(frame: CGRect(x: 150, y: 750, width: 100, height: 50))
        //
        //        button.setTitle("hello", for: .normal)
        //        button.addTarget(self, action: #selector(didTap), for: .touchUpInside)
        //        button.backgroundColor = .green
        //        scroll.addSubview(button)
        //        NSLayoutConstraint.activate([
        //            button.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
        //            button.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
        //            button.topAnchor.constraint(equalTo: scroll.topAnchor, constant: 500),
        //            button.bottomAnchor.constraint(equalTo: scroll.bottomAnchor, constant: -50)
        //        ])

        let cview = UIView()
        self.view.addSubview(cview)
        cview.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cview.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            cview.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            cview.topAnchor.constraint(equalTo: self.view.topAnchor),
            cview.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
                
        let button = UIButton(frame: CGRect(x: 150, y: 150, width: 100, height: 50))
        button.setTitle("hello", for: .normal)
        button.addTarget(self, action: #selector(didTap), for: .touchUpInside)
        button.backgroundColor = .green
        cview.addSubview(button)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Set navigation bar appearance for this view controller
        self.navigationController?.navigationBar.barTintColor = UIColor.white
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.black]
    }
@objc
    func didTap() {
        let vc = ViewController2()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

