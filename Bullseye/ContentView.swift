//
//  ContentView.swift
//  Bullseye
//
//  Created by Arturo Espinoza Carrasco on 09-05-20.
//  Copyright © 2020 Arturo Espinoza Carrasco. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  
  @State var alertIsVisible: Bool = false
//  @State var whosThereIsVisible: Bool = false
  
  var body: some View {
    VStack {
      Text("Welcome to my first App")
        .fontWeight(.semibold)
        .foregroundColor(Color.green)
      Button(action: {
        print("Button pressed")
        self.alertIsVisible = true
      }) {
        Text(/*@START_MENU_TOKEN@*/"Hit me!"/*@END_MENU_TOKEN@*/)
      }
      .alert(isPresented: $alertIsVisible) { () ->
        Alert in
        return Alert(title: Text("Hello There!"), message: Text("This is my first pop-up."), dismissButton: .default(Text("Awesome")))
      }
//      Button(action: {
//        self.whosThereIsVisible = true
//      }) {
//        Text("Knock Knock")
//      }
//      .alert(isPresented: $whosThereIsVisible) { () ->
//        Alert in
//        return Alert(
//          title: Text("Who's there?"),
//          message: Text("Little old lady."),
//          dismissButton: .default(Text("Little old lady who?"))
//        )
//      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
