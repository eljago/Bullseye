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
  @State var sliderValue: Double = 50.0
  
  var body: some View {
    VStack {
      Spacer()
      
      // Target row
      HStack {
        Text("Put the bullseye as close as you can to:")
        Text(/*@START_MENU_TOKEN@*/"100"/*@END_MENU_TOKEN@*/)
      }

      Spacer()
      
      // Slider row
      HStack {
        Text("1")
        Slider(value: self.$sliderValue, in: 1...100)
        Text("100")
      }

      Spacer()
      
      // Button row
      Button(action: {
        print("Button pressed")
        self.alertIsVisible = true
      }) {
        Text(/*@START_MENU_TOKEN@*/"Hit me!"/*@END_MENU_TOKEN@*/)
      }
      .alert(isPresented: $alertIsVisible) { () ->
        Alert in
        let roundedSliderValue: Int = Int(self.sliderValue.rounded())
        return Alert(
          title: Text("Hello There!"),
          message: Text("The slider's value is \(roundedSliderValue)."),
          dismissButton: .default(Text("Awesome"))
        )
      }

      Spacer()
      
      // Score row
      HStack {
        Button(action: {
          
        }) {
          Text("Start over")
        }
        Spacer()
        Text("Score:")
        Text("999999")
        Spacer()
        Text("Round")
        Text("999")
        Spacer()
        Button(action: {
          
        }) {
          Text("Info")
        }
      }
      .padding(.bottom, 20)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView().previewLayout(.fixed(width: 896, height: 414))
  }
}
