//
//  ViewController.swift
//  key_chain_ex_query
//
//  Created by Hoang Duc on 07/09/2024.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private var updateButton: UIButton!
    @IBOutlet private var readButton: UIButton!
    @IBOutlet private var label: UILabel!
    @IBOutlet private var deleteButton: UIButton!
    
    private let secureStorage = SecureStorage()
    private let defaultAccName = "flutter_secure_storage_service"
    private let defaultAccessibility = "first_unlock"
    private let defaultGroupId: String? = nil
    private let defaultKey = "test"
    private let defaultSynchronizable = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction private func updateAction() {
        let result = secureStorage.write(key: defaultKey, value: "Test", groupId: defaultGroupId, accountName: defaultAccName, synchronizable: defaultSynchronizable, accessibility: defaultAccessibility)
        label.text = "Key chain write result with \(String(describing: result.status)) & value is \(String(describing: "Test"))"
    }
    
    @IBAction private func readAction() {
        let result = secureStorage.read(key: defaultKey, groupId: defaultGroupId, accountName: defaultAccName)
        label.text = "Key chain query result with \(String(describing: result.status)) & value is \(String(describing: result.value))"
    }
    
    @IBAction private func deleteAction() {
        let result = secureStorage.delete(key: defaultKey, groupId: defaultGroupId, accountName: defaultAccName)
        label.text = "Key chain delete result with \(String(describing: result.status)) & value is \(String(describing: result.value))"
    }

}

