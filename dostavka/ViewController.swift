//
//  ViewController.swift
//  dostavka
//
//  Created by q on 08.05.2023.
//

import UIKit


class ViewController: UIViewController {

    let myImageView: UIImageView = UIImageView()
    let myTopLabel: UILabel = UILabel()
    let myNameStackLabel: UILabel = UILabel()
    let myStackView: UIStackView = UIStackView()
    
    var aa = AvtorisacLabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        view.addSubview(myImageView)
        myImageView.image = UIImage(named: "fon")
        
        
        
    }

    override func viewWillLayoutSubviews() {
        setContraintsImage()
        setContraintsTopLabel()
        configurStackView()
    }

    func setContraintsImage() {
        myImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myImageView.leftAnchor.constraint(equalTo: view.leftAnchor),
            myImageView.rightAnchor.constraint(equalTo: view.rightAnchor),
            myImageView.topAnchor.constraint(equalTo: view.topAnchor),
            myImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)

        ])

    }

    func setContraintsTopLabel() {

        let labelTopFrame = CGRect(x: 30 , y: 81, width: 341, height: 59)
        myTopLabel.frame = labelTopFrame
        myTopLabel.layer.cornerRadius = 30
        myTopLabel.layer.masksToBounds = true
        myTopLabel.text = "Доставка от Витали"
        myTopLabel.backgroundColor = .red
        
        myTopLabel.textColor = UIColor.white
        myTopLabel.textAlignment = NSTextAlignment.center
        
        view.addSubview(myTopLabel)


        
    }
    
    
    

    
    func configurStackView() {


        view.addSubview(myStackView)
//        let StackLabel = CGRect(x: 30 , y: 81, width: 341, height: 59)
//      myNameStackLabel.frame = StackLabel
        
        myStackView.axis = .horizontal
        //myStackView.distribution = .equalCentering
        myStackView.distribution = .fill
        myStackView.alignment = .top
        myStackView.alignment = .center

        myStackView.spacing = 20
        myStackView.backgroundColor = .white
        myStackView.layer.cornerRadius = 30

        myStackView.addArrangedSubview(aa)
        setContraintsMyStackView()



    }
    func setContraintNameStackLabel() {


        myNameStackLabel.text = "Авторизация"
        myNameStackLabel.layer.cornerRadius = 30
        myNameStackLabel.layer.masksToBounds = true
        myNameStackLabel.backgroundColor = .red

        myNameStackLabel.textColor = UIColor.black
        myNameStackLabel.textAlignment = NSTextAlignment.center
        
    }
    
   
    
    
    
//    let setContraintsMyNameStackView = {
//
//        myNameStackLabel.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            NSLayoutConstraint(item: myNameStackLabel, attribute: .height, relatedBy: .equal, toItem: myStackView, attribute: .notAnAttribute, multiplier: 1, constant: 30),
//            NSLayoutConstraint(item: myNameStackLabel, attribute: .width, relatedBy: .equal, toItem: myStackView, attribute: .notAnAttribute, multiplier: 1, constant: 30),
//            NSLayoutConstraint(item: myNameStackLabel, attribute: .top, relatedBy: .equal, toItem: myStackView, attribute: .top, multiplier: 1, constant: 30),
//            NSLayoutConstraint(item: myNameStackLabel, attribute: .bottom, relatedBy: .equal, toItem: myStackView, attribute: .bottom, multiplier: 1, constant: 30)
//
//        ])
//
//
//    }
    
    func setContraintsMyStackView() {

        myStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            myStackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            myStackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            myStackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 300),
            myStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -90)

        ])


    }
    

}















