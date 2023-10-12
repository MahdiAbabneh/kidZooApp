//
//  mainView.swift
//  kides zoo
//
//  Created by Mahdi Ababneh on 10/10/2023.
//

import SwiftUI

struct mainView: View {
    
    @AppStorage("Paging")var paging:Int=0
    @State var animalArrayImageName : [String] = ["cat","fox","lion","rakoon","shark","tiger","cat","fox","lion","rakoon","shark","tiger"]
    var gridLayoutColoum : [GridItem]=[
        GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    
    var body: some View {
        VStack{
            mainViewTabBar().padding(.bottom,30)
            LazyVGrid(columns:gridLayoutColoum){
                ForEach(animalArrayImageName,id: \.self){
                    item in
                    Image(item)
                        .resizable()
                        .scaledToFill()
                        .padding()
                        .background(Color("AccentColor"))
                        .frame(width: 90, height: 90,alignment: .center)
                        .cornerRadius(50)
                }
                
            }
            Spacer()

        }
    }
}

#Preview {
    mainView()
}
