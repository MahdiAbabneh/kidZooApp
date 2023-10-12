//
//  kides_zooApp.swift
//  kides zoo
//
//  Created by Mahdi Ababneh on 10/10/2023.
//

import SwiftUI

@main
struct kides_zooApp: App {
    @AppStorage("Paging")var paging:Int=0
    init() {
        paging=0
    }

    var body: some Scene {
        WindowGroup {
            if paging==0{
                LoginPage()
            }
            else if paging==1{
                SignUp()
            }
            else{
                mainView()
            }
        }
    }
}
