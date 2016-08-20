//
//  TableViewController.swift
//  TableVIew4U
//
//  Created by Jeremy Petter on 2016-08-17.
//  Copyright © 2016 JeremyPetter. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var dogs = [Dog]()

    override func viewDidLoad() {
        super.viewDidLoad()

        dogs = [
            Dog(name:"dog 1", image: UIImage(named: "dog1")!),
            Dog(name:"dog 2", image: UIImage(named: "dog2")!),
            Dog(name:"dog 3", image: UIImage(named: "dog3")!),
            Dog(name:"dog 4", image: UIImage(named: "dog4")!),
            Dog(name:"dog 5", image: UIImage(named: "dog5")!),
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return dogs.count
    }


    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let cell = tableView.dequeueReusableCellWithIdentifier("MyCellReuseIdentifier", forIndexPath: indexPath) as! TableViewCell

        let dog = dogs[indexPath.row]

        cell.myImageView.image = dog.image
        cell.myLabel.text = dog.name

        return cell
    }

    // MARK: - Actions

    @IBAction func addDog(sender: AnyObject) {

        let newDog = Dog(name: "beautiful dog", image: UIImage(named: "dog6")!)
        dogs.insert(newDog, atIndex: 0)
        //tableView.reloadData()
        tableView.beginUpdates()

        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
        tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)

        tableView.endUpdates()
    }

}