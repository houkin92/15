//
//  FirstViewController.swift
//  基本配件3
//
//  Created by 方瑾 on 2019/1/16.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBOutlet weak var backGroundSwitch: UISwitch!
    
    @IBOutlet weak var selectedImageView: UIImageView!
    
    @IBOutlet weak var imagePageControl: UIPageControl!
    var imageName = ["东海","南海","西海","北海","东南海"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backGroundSwitch.addTarget(self, action: #selector(changeBackGround), for: .valueChanged)
        imagePageControl.addTarget(self, action: #selector(changeImage), for: .valueChanged)
        backGroundSwitch.isOn = false

        backGroundSwitch .onTintColor = .brown
        backGroundSwitch.thumbTintColor = .green
        let photoName = imageName[imagePageControl.currentPage]
        selectedImageView.image = UIImage(named: photoName)
        
      
    }
    
    
    
    @objc func changeBackGround(_ sender: UISwitch) {//sender表示存放按键本身
    //表示selector类的一种方法
//        if sender .isOn {
//            self.view.backgroundColor = .black
//            textLabel.textColor = .white
//        } else {
//            self.view.backgroundColor = .black
//            textLabel.textColor = .white
//        }
            setupView(beSelected: sender.isOn)

    }
    
    @objc func changeImage(_ sender: UIPageControl) {
//        print(sender.currentPage)
        let photoName = imageName[sender.currentPage]
        selectedImageView.image = UIImage(named:photoName)
    }
    
    //let m = (x > y)? a:b    三目运算符号
    func setupView(beSelected:Bool){
        if beSelected {
//            self.view.backgroundColor = .black
//            textLabel.textColor = .white
            self.view.backgroundColor = beSelected ? .white : .black
            textLabel.textColor =  beSelected ? .black : .white
//        } else {
//            self.view.backgroundColor = .black
//            textLabel.textColor = .white
//        }
        
    }
    
}
}
