//
//  ContentProvider.swift
//  NetologyTVTopshelfExtension
//
//  Created by Aliaksei Zhemblouski on 04.04.2022.
//

import TVServices

class ContentProvider: TVTopShelfContentProvider {

    override func loadTopShelfContent(completionHandler: @escaping (TVTopShelfContent?) -> Void) {
        // Fetch content and call completionHandler
        completionHandler(nil);
    }

}

