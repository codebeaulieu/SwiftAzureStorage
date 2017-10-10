//
//  ViewController.swift
//  AzureStorageExample
//
//  Created by Dan Beaulieu on 10/9/17.
//  Copyright © 2017 Dan Beaulieu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let connection = Values.Constants.AccountKey
        let account = try! AZSCloudStorageAccount(fromConnectionString: connection)
        let blobClient: AZSCloudBlobClient = account.getBlobClient()
        let blobContainer: AZSCloudBlobContainer = blobClient.containerReference(fromName: Values.Constants.BlobContainer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

