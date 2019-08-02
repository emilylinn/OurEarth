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
    
    @IBOutlet weak var recycleNumber: UILabel!
    @IBOutlet weak var recycleText: UITextField!
    
    
    var trashPieces : Int64 = 0
    var compostPieces : Int64 = 0
    var recycleItems : Int64 = 0
    var trashArray : [TrashLabel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        UserDefaults.standard.set("String", forKey: "Key")
    
    let string = UserDefaults.standard.object(forKey:"Key")
        getNum()
    }
    
    func getNum() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            if let coreDataNum = try? context.fetch(TrashLabel.fetchRequest()) as? [TrashLabel] {
                trashArray = coreDataNum
                trashNumber.text = String(trashArray[0].trashCount)
                print(trashArray[0].trashCount)
                
            }
        }
    }
    
    @IBAction func trashButton(_ sender: Any) {
        if let newfile = trashText.text {
            trashNumber.text = newfile
            }
        if let newNum = trashText.text {
            trashPieces += Int64(newNum)!
        }
        
        trashNumber.text = String(trashPieces)
        
//        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
//
//            let numToSave = TrashLabel(entity: TrashLabel.entity(), insertInto: context)
//
////            numToSave.trashCount = trashText.text
//
//                numToSave.trashCount = trashPieces
////            try? context.save()
//
//(UIApplication.shared.delegate as? AppDelegate)?.saveContext()
//            print(numToSave.trashCount)
//        }
//        print(trashArray[0])
////        getNum()
   }
   
    @IBAction func compostButton(_ sender: Any) {
        if let newfile =  compostText.text {
            compostNumber.text = newfile
        }
        if let newNum = compostText.text {
            compostPieces += Int64(newNum)!
        }
        
        compostNumber.text = String(compostPieces)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            
            let numToSave = TrashLabel(entity: TrashLabel.entity(), insertInto: context)
            
            //            numToSave.trashCount = trashText.text
            
            numToSave.trashCount = trashPieces
            //            try? context.save()
            
            (UIApplication.shared.delegate as? AppDelegate)?.saveContext()
            print(numToSave.trashCount)
        }
        print(trashArray[0])
        //        getNum()
        
    }
    
    @IBAction func recycleButton(_ sender: Any) {
        if let newfile =  recycleText.text {
            recycleNumber.text = newfile
        }
        if let newNum = recycleText.text {
            recycleItems += Int64(newNum)!
        }
        
        recycleNumber.text = String(recycleItems)
    }
    
    }

