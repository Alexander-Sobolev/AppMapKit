//
//  ViewController.swift
//  AppMapKit
//
//  Created by Alexander Sobolev on 11.07.2021.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController {
    
    private let mapView: MKMapView = {
        let mapView = MKMapView()
        mapView.translatesAutoresizingMaskIntoConstraints = false
        return mapView
    }()
    
    private let addAdressButton: UIButton = {
        let button = UIButton()
        button.setTitle("Add Adress", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
     
    private let routeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Route", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isHidden = true
        return button
    }()
    
    private let resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reset", for: .normal)
        button.setTitleColor(UIColor.red, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.isHidden = true
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addAdressButton.addTarget(self, action: #selector(addAdressButtonTapped), for: .touchUpInside)
        routeButton.addTarget(self, action: #selector(routeButtonTapped), for: .touchUpInside)
        resetButton.addTarget(self, action: #selector(resetButtonTapped), for: .touchUpInside)
        
        setConstraints()
    }
    
    @objc func addAdressButtonTapped() {
        print("TapAdd")
    }
    
    @objc func routeButtonTapped() {
        print("TapRoute")
    }
    
    @objc func resetButtonTapped() {
        print("TapReset")
    }


}

extension ViewController {
    
    func setConstraints() {
        view.addSubview(mapView)
        NSLayoutConstraint.activate([
        
            mapView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            mapView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            mapView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            mapView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        ])
        
        mapView.addSubview(addAdressButton)
        NSLayoutConstraint.activate([
            addAdressButton.topAnchor.constraint(equalTo: mapView.topAnchor, constant: 50),
            addAdressButton.trailingAnchor.constraint(equalTo: mapView.trailingAnchor, constant: -20),
            addAdressButton.heightAnchor.constraint(equalToConstant: 70),
            addAdressButton.widthAnchor.constraint(equalToConstant: 170)
        ])
        
        mapView.addSubview(routeButton)
        NSLayoutConstraint.activate([
            routeButton.leadingAnchor.constraint(equalTo: mapView.leadingAnchor, constant: 20),
            routeButton.bottomAnchor.constraint(equalTo: mapView.bottomAnchor, constant: -30),
            routeButton.widthAnchor.constraint(equalToConstant: 100),
            routeButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        mapView.addSubview(resetButton)
        NSLayoutConstraint.activate([
            resetButton.trailingAnchor.constraint(equalTo: mapView.trailingAnchor, constant: -20),
            resetButton.bottomAnchor.constraint(equalTo: mapView.bottomAnchor, constant: -30),
            resetButton.widthAnchor.constraint(equalToConstant: 100),
            resetButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}













