//
//  ViewController.swift
//  FirstSwift
//
//  Created by baosight  on 16/1/29.
//  Copyright © 2016年 Baosight. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label:UILabel?;

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.whiteColor();
        let button = UIButton.init(type: .System);
        button.frame = CGRectMake(20, 20, 100, 20);
        button.setTitle("Click Me!!", forState: .Normal);
        button.addTarget(self, action: "didClickButton", forControlEvents: .TouchUpInside);
        self.view.addSubview(button);
        
        self.label = UILabel.init(frame: CGRectMake(20, 100, 120, 21));
        self.label?.text = "UserName";
        self.view.addSubview(self.label!);
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated);
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func didClickButton() {
        let alert = UIAlertController.init(title: "Wow", message: "You clicked the button!", preferredStyle: .ActionSheet);
        let alertAction = UIAlertAction.init(title:"OK!", style: .Cancel) { (alertAction:UIAlertAction?) -> Void in
            NSLog("%@--%@", "ok, dismiss the alert",(alertAction?.title)!);
            let user = User.init();
            self.label!.text = user.name;
          alert.dismissViewControllerAnimated(true, completion: { () -> Void in

          })
        };
        alert.addAction(alertAction);
        self.showViewController(alert, sender: nil);
        
        
    }


}

