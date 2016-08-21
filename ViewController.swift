//
//  ViewController.swift
//  webview
//
//  Created by Shlap Shleeb on 21‏/8‏/2016.
//  Copyright © 2016 ShlapShleeb. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webview: UIWebView!
    @IBAction func stop(sender: AnyObject) {
        webview.stopLoading()
        print("true")
    }
    @IBAction func refresh(sender: AnyObject) {
        webview.reload()
        print("true")
    }
    @IBAction func back(sender: AnyObject) {
        webview.goBack()
        print("true")
    }
    @IBAction func fowrward(sender: AnyObject) {
        webview.goForward()
        print("true")
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "https://www.google.com")
        
        let request = NSURLRequest(URL: url!); webview.loadRequest(request)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

