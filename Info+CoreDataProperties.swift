//
//  Info+CoreDataProperties.swift
//  coremodel
//
//  Created by alamin on 4/8/19.
//  Copyright © 2019 alamin. All rights reserved.
//
//

import Foundation
import CoreData


extension Info {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Info> {
        return NSFetchRequest<Info>(entityName: "Info")
    }

    @NSManaged public var writer: String?
    @NSManaged public var bookname: String?
    @NSManaged public var img: NSData?

}
