//
//  IBHomeViewController.swift
//  LogMyRun
//

import UIKit
import CoreData

class IBHomeViewController: UIViewController {

    var managedObjectContext : NSManagedObjectContext?
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.destinationViewController.isKindOfClass(IBNewRunViewController) {
            if let newRunVC = segue.destinationViewController as? IBNewRunViewController {
                newRunVC.managedObjectContext = managedObjectContext
            }
        }
    }
    
    
    
}
