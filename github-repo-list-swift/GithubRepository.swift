//
//  FISGithubRepository.swift
//  github-repo-list-swift
//
//  Created by Haaris Muneer on 6/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubRepository
{
    var fullName = NSString()
    var htmlURL = NSURL()
    var repositoryID = NSString()
    
    init(dictionary: NSDictionary)
    {
        if let name = dictionary["full_name"]
        {
            fullName = name as! NSString
        }
        if let dictionaryURL = dictionary["html_url"]
        {
            if let url = NSURL(string: dictionaryURL as! String)
            {
                htmlURL = url
            }
        		
            if let repoID = dictionary["id"]
            {
                repositoryID = String(repoID)
            }
            
        }
    }
}
