//
//  ViewController.swift
//  CodeBasedNetflix
//
//  Created by t2023-m0032 on 6/5/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    let titleLabel = UILabel()
    let emailAndPhoneNumberButton = UIButton()
    let passwordButton = UIButton()
    let nicknameButton = UIButton()
    let positionButton = UIButton()
    let recommedCodeButton = UIButton()
    let signButton = UIButton()
    let addInfoLabel = UILabel()
    let addInfoSwitch = UISwitch()
    lazy var array = [titleLabel, emailAndPhoneNumberButton, passwordButton, nicknameButton, positionButton, recommedCodeButton, signButton, addInfoLabel, addInfoSwitch]
    override func viewDidLoad() {
        super.viewDidLoad()
        configureHierarchy()
        configurelayout()
        configureUI()
        
    }
    func configureHierarchy() {
//        view.addSubview(titleLabel)
//        view.addSubview(emailAndPhoneNumberLabel)
//        view.addSubview(passwordLabel)
//        view.addSubview(nicknameLabel)
//        view.addSubview(positionLabel)
//        view.addSubview(recommedCodeLabel)
//        view.addSubview(signLabel)
//        view.addSubview(addInfoLabel)
//        view.addSubview(addInfoSwitch)
        
        for i in array {
            view.addSubview(i)
        }
    }
    func configurelayout() {
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(200)
            make.height.equalTo(70)
        }
        emailAndPhoneNumberButton.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp_bottomMargin).offset(150)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(350)
            make.height.equalTo(40)
        }
        passwordButton.snp.makeConstraints { make in
            make.top.equalTo(emailAndPhoneNumberButton.snp_bottomMargin).offset(30)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(350)
            make.height.equalTo(40)
        }
        nicknameButton.snp.makeConstraints { make in
            make.top.equalTo(passwordButton.snp_bottomMargin).offset(30)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(350)
            make.height.equalTo(40)
        }
        positionButton.snp.makeConstraints { make in
            make.top.equalTo(nicknameButton.snp_bottomMargin).offset(30)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(350)
            make.height.equalTo(40)
        }
        recommedCodeButton.snp.makeConstraints { make in
            make.top.equalTo(positionButton.snp_bottomMargin).offset(30)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(350)
            make.height.equalTo(40)
        }
        signButton.snp.makeConstraints { make in
            make.top.equalTo(recommedCodeButton.snp_bottomMargin).offset(30)
            make.centerX.equalTo(view.safeAreaLayoutGuide)
            make.width.equalTo(350)
            make.height.equalTo(50)
        }
        addInfoLabel.snp.makeConstraints { make in
            make.top.equalTo(signButton.snp_bottomMargin).offset(30)
            make.leading.equalTo(25)
        }
        addInfoSwitch.snp.makeConstraints { make in
            make.top.equalTo(signButton.snp_bottomMargin).offset(30)
            make.trailing.equalTo(-25)
        }
    }
    func configureUI() {
        view.backgroundColor = .black
        titleLabel.text = "JIMMYFLIX"
        titleLabel.textColor = .red
        titleLabel.font = .systemFont(ofSize: 30, weight: .heavy)//.boldSystemFont(ofSize: 30)
        titleLabel.textAlignment = .center
        
        emailAndPhoneNumberButton.layer.backgroundColor = UIColor.darkGray.cgColor
        emailAndPhoneNumberButton.setTitle("이메일 주소 또는 전화번호", for: .normal)
        emailAndPhoneNumberButton.setTitleColor(.white, for: .normal)
        emailAndPhoneNumberButton.layer.cornerRadius = 10
    
        passwordButton.layer.backgroundColor = UIColor.darkGray.cgColor
        passwordButton.setTitle("비밀번호", for: .normal)
        passwordButton.setTitleColor(.white, for: .normal)

        passwordButton.layer.cornerRadius = 10
        
        nicknameButton.layer.backgroundColor = UIColor.darkGray.cgColor
        nicknameButton.setTitle("닉네임", for: .normal)
        nicknameButton.setTitleColor(.white, for: .normal)

        nicknameButton.layer.cornerRadius = 10
        
        positionButton.layer.backgroundColor = UIColor.darkGray.cgColor
        positionButton.setTitle("위치", for: .normal)

        positionButton.layer.cornerRadius = 10
        
        recommedCodeButton.layer.backgroundColor = UIColor.darkGray.cgColor
        recommedCodeButton.setTitle("추천 코드 입력", for: .normal)
        recommedCodeButton.setTitleColor(.white, for: .normal)

        recommedCodeButton.layer.cornerRadius = 10
        
        signButton.layer.backgroundColor = UIColor.white.cgColor
        signButton.setTitle("회원가입", for: .normal)
        signButton.setTitleColor(.black, for: .normal)
        signButton.titleLabel?.font = .boldSystemFont(ofSize: 20)

        signButton.layer.cornerRadius = 10
        
        addInfoLabel.text = "추가 정보 입력"
        addInfoLabel.textColor = .white
        addInfoLabel.font = .systemFont(ofSize: 20)
        addInfoLabel.textAlignment = .center
        
        addInfoSwitch.onTintColor = .red
    }

}

