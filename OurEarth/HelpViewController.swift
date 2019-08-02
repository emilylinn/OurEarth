//
//  HelpViewController.swift
//  OurEarth
//
//  Created by Apple on 8/2/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import Foundation
import UIKit

class HelpViewController: UIViewController {
    
    @IBOutlet weak var kabDonateBut: UIButton!
    @IBOutlet weak var kabVolunteerBut: UIButton!
    
    @IBOutlet weak var OCDonateBut: UIButton!
    @IBOutlet weak var OCVolunteerBut: UIButton!
    
    
    @IBOutlet weak var byeDonateBut: UIButton!
    
    @IBOutlet weak var byeVolunteerBut: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    self.kabDonateBut.layer.cornerRadius = 5
    self.kabVolunteerBut.layer.cornerRadius = 5
    self.OCDonateBut.layer.cornerRadius = 5
    self.OCVolunteerBut.layer.cornerRadius = 5
    self.byeDonateBut.layer.cornerRadius = 5
    self.byeVolunteerBut.layer.cornerRadius = 5
    }
    
    @IBAction func kabDonateButton(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.kab.org/donate")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func kabVolunteerButton(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://www.kab.org/volunteer")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func ocDonate(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "https://donate.oceanconservancy.org/page/40745/donate/1?promo_name=Donate_button&promo_position=TopRight&promo_creative=Evergreen&_ga=2.261704397.1763861987.1564751214-922816743.1564587910&ea.tracking.id=19KPGPEAXX")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func ocVolunteerButton(_ sender: Any) {
        
         UIApplication.shared.open(URL(string: "https://oceanconservancy.org/action-center/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func bbDonateButton(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://www.byebyeplasticbags.org/donation/")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func bbVolunteerButton(_ sender: Any) {
        
        UIApplication.shared.open(URL(string: "http://www.byebyeplasticbags.org/bbpbglobal/")! as URL, options: [:], completionHandler: nil)
    }
}
