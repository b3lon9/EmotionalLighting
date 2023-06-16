//
//  ViewController.swift
//  EmotionalLighting
//
//  Created by 김주환 on 2023/06/16.
//

import UIKit

class ViewController: UIViewController {

    // 제목
    var titleLabel:UILabel = {
        // 선언과 동시에 정의하는것
        
        // let 인스턴스를 생성하는것
        let label = UILabel()
        label.text = "Hello World!"
        label.textAlignment = .center   // 텍스트 정렬
        label.font = UIFont.boldSystemFont(ofSize: 50)  // 폰트설정
        label.textColor = .white    // 텍스트 색상 적용
        
        
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // swift는 세미콜론을 작성하지 않는다
        // view는 전체그림이라고 이해하면 된다
        view.backgroundColor = .red
        
        view.addSubview(titleLabel) // 상단에서 만든 titleLabel을 넣는다
        
        // 가로, 세로 중앙정렬 작업
        // constraint 제약을 두다...
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.centerXAnchor.constraint(equalTo:view.centerXAnchor).isActive = true     // 부모뷰 중앙에 맞춤
        titleLabel.centerYAnchor.constraint(equalTo:view.centerYAnchor).isActive = true
         
    }


}

