//
//  trackerViewController.swift
//  OurEarth
//
//  Created by Apple on 8/1/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import UIKit
import CoreData

class trackerViewController: UIViewController {
    
    @IBOutlet weak var trashNumber: UILabel!
    @IBOutlet weak var trashText: UITextField!
    
    @IBOutlet weak var compostNumber: UILabel!
    
    @IBOutlet weak var compostText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        UserDefaults.standard.set("String", forKey: "Key")
    
    let string = UserDefaults.standard.object(forKey:"Key")
        getNum()
    }
    
    func getNum() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let coreDataNum = try? context.fetch(TrashLabel.fetchRequest()) as? TrashLabel {
                trashText.text = String(coreDataNum.trashCount)
                print(coreDataNum.trashCount)
            }
        }
    }
    
    @IBAction func trashButton(_ sender: Any) {
        if let newfile = trashText.text {
            trashNumber.text = newfile
            }
        
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let numToSave = TrashLabel(entity: TrashLabel.entity(), insertInto: context)
            
//            numToSave.trashCount = trashText.text
            
            if let newNum = trashText.text {
                numToSave.trashCount = Int64(newNum)!
            }
            
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
            navigationController?.popViewController(animated: true)
        }
        getNum()
    }
   
    @IBAction func compostButton(_ sender: Any) {
        if let newfile =  compostText.text {
            compostNumber.text = newfile
        }
    }
    
    }

