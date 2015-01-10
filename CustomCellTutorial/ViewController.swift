//
//  ViewController.swift
//  CustomCellTutorial
//
//  Created by Taikai Takeda on 1/7/15.
//  Copyright (c) 2015 bigsea. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{

    @IBOutlet weak var tableView: UITableView!

    var friends:[Friend] = [Friend]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.setupFriends()
        
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupFriends() {
        var f1 = Friend(name: "Ken", imageUrl: NSURL(string: "http://waka111.com/wp-content/uploads/2014/08/watanabek.jpg"))
        var f2 = Friend(name: "Erika", imageUrl: NSURL(string: "http://dqaeric34olch.cloudfront.net/lists/57514/sawajirierika1.jpg/original?1416322567"))
        var f3 = Friend(name: "Anna", imageUrl: NSURL(string: "http://cdnvideo.dolimg.com/cdn_assets/b5da8e4c0046a83b81dbd945719f6b354edd764b.jpg"))
        
        friends.append(f1)
        friends.append(f2)
        friends.append(f3)
    }
    

    // functions needed to be implemented
    // for table view

    // セクション数
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    // セクションの行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }
    


    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {

        let cell: CustomCell = tableView.dequeueReusableCellWithIdentifier("CustomCell", forIndexPath: indexPath) as CustomCell
        
        println(cell)

        cell.setCell(friends[indexPath.row])
        
        return cell
    }
    

}

