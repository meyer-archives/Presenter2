//
//  ViewController.swift
//  Presenter
//
//  Created by Mike Meyer on 2014/10/14.
//  Copyright (c) 2014 Meyer Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL(string: "http://apple.com")
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func doRefresh(AnyObject) {
        webView.reload()
    }
    
    @IBAction func goBack(AnyObject) {
        webView.goBack()
    }
    
    @IBAction func goForward(AnyObject) {
        webView.goForward()
    }
    
    @IBAction func stop(AnyObject) {
        webView.stopLoading()
    }
}

