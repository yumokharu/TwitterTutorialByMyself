//
//  Constants.swift
//  TwitterTutorialByMyself
//
//  Created by 차유민 on 2023/09/25.
//

import Firebase
import FirebaseStorage

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGES = STORAGE_REF.child("profile_images")

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")

