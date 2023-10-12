//
//  mainView.swift
//  kides zoo
//
//  Created by Mahdi Ababneh on 10/10/2023.
//

import SwiftUI

struct mainView: View {
    
    @AppStorage("Paging")var paging:Int=0

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    mainView()
}
