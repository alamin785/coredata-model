//
//  ViewController.swift
//  coremodel
//
//  Created by alamin on 4/8/19.
//  Copyright © 2019 alamin. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,NSFetchedResultsControllerDelegate,UITableViewDataSource,UITableViewDelegate{

    @IBOutlet weak var tabledata: UITableView!
    
    var cor:NSFetchedResultsController = NSFetchedResultsController<NSFetchRequestResult>()
    
    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    
    
  func request() -> NSFetchRequest<NSFetchRequestResult> {
    
    let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Info")
    let sort = NSSortDescriptor(key: "writer", ascending: true)
    request.sortDescriptors = [sort]
    return request
    
}
    
    
func getcore()-> NSFetchedResultsController<NSFetchRequestResult> {
    
    cor = NSFetchedResultsController(fetchRequest: request(), managedObjectContext: context, sectionNameKeyPath: nil, cacheName: nil)
    
    
    return cor
}
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        cor = getcore()
        cor.delegate = self
    
        do{
            
          try cor.performFetch()
            
        }catch{
            
         print(error)
            return
            
        }
        
        self.tabledata.reloadData()
}
       
   
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (cor.sections?[section].numberOfObjects)!

    
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "core") as! coreTableViewCell
        let arr = cor.object(at: indexPath) as! Info
        
        cell.labelone.text = arr.bookname
        cell.labeltwo.text = arr.writer
        cell.imageoutlet.image = UIImage(data:(arr.img)! as Data)
        return cell
    }

}

