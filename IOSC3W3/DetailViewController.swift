//
//  DetailViewController.swift
//  IOSC3W3
//
//  Created by Mauricio Jacobo Romero on 05/10/2016.
//  Copyright © 2016 MJ. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailDescriptionLabel: UILabel!
    @IBOutlet weak var navigationBar: UINavigationItem!
    @IBOutlet weak var bookTitle: UITextView!
    @IBOutlet weak var bookAuthors: UITextView!
    @IBOutlet weak var bookCover: UIImageView!

    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            if let label = self.detailDescriptionLabel {
                label.text = detail.timestamp!.description
                navigationBar.title = detail.isbn
                bookTitle.text = detail.title
                bookAuthors.text = detail.authors
                if (!detail.imgurl!.isEmpty) {
                    if let iurl = NSURL(string: detail.imgurl!) {
                        if let data = NSData(contentsOf: iurl as URL){
                            bookCover.image = UIImage (data: data as Data)
                        }
                    }
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    var detailItem: Event? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }



}

