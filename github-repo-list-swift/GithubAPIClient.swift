//
//  FISGithubAPIClient.swift
//  github-repo-list-swift
//
//  Created by Haaris Muneer on 6/28/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class GithubAPIClient
{
    
    class func getRepositoriesWithCompletion(completion: (NSArray) -> ())
    {
        
       // var temp = []
        
        let urlString = "\(githubAPIURL)/repositories?client_id=\(githubClientID)&client_secrets=\(githubClientSecret)"
        
        let session = NSURLSession.sharedSession()

        if let url = NSURL(string: urlString)
        {
            let githubTask = session.dataTaskWithURL(url, completionHandler:
                { (data, response, error) in
            if let data = data
            {
                do {
                    let responseData = try NSJSONSerialization.JSONObjectWithData(data, options: []) as! NSArray
                    completion(responseData)
                }
                catch
                {
                    print("error")
                }
            }
        })
            
        githubTask.resume()
            
    }
        
}
    
    
}

