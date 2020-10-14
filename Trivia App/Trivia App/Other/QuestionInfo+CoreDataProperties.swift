//
//  QuestionInfo+CoreDataProperties.swift
///  Trivia App
//
//  Created by chitranjan singh on 14/10/20.
//  Copyright © 2020 chitranjan singh. All rights reserved.
//
//

import Foundation
import CoreData


extension QuestionInfo {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<QuestionInfo> {
        return NSFetchRequest<QuestionInfo>(entityName: "QuestionInfo")
    }

    @NSManaged public var name: String?
    @NSManaged public var que1: String?
    @NSManaged public var ans1: String?
    @NSManaged public var que2: String?
    @NSManaged public var ans2: String?
    @NSManaged public var date: Date?

}
