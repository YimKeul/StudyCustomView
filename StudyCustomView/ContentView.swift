//
//  ContentView.swift
//  StudyCustomView
//
//  Created by yimkeul on 2023/03/09.
//

import SwiftUI


struct MyView<Content :View>: View  {
    let content: () -> Content
    init(@ViewBuilder content : @escaping () -> Content){
        self.content = content
    }
    
    var body: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Divider()
            content()
        }
        .modifier(MyStyle())
    }
}

struct MyStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(Color.cyan)
            .foregroundColor(.white)
            .cornerRadius(8)
    }
}


struct ContentView: View {
    var body: some View {
        VStack{
            MyView {
                Text("2")
                Text("3")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
