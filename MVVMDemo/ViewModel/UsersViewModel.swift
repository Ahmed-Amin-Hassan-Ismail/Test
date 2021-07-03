//
//  UsersViewModel.swift
//  MVVMDemo
//
//  Created by Amin  on 6/30/21.
//  Copyright © 2021 AhmedAmin. All rights reserved.
//

import Foundation


class UsersViewModel {
    
    private var APIService: APIServices
    private var bindViewModelToController: () -> ()
    
    init(APIService: APIServices , completion: @escaping () -> ()) {
        self.APIService = APIService
        self.bindViewModelToController = completion
    }
}
