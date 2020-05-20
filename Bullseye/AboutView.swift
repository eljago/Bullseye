//
//  AboutView.swift
//  Bullseye
//
//  Created by Arturo Espinoza Carrasco on 20-05-20.
//  Copyright © 2020 Arturo Espinoza Carrasco. All rights reserved.
//

import SwiftUI

struct AboutView: View {
  
  let beige = Color(red: 255.0/255.0, green: 214.0/255.0, blue: 179.0/255.0)
  
  struct AboutHeadingStyle: ViewModifier {
    func body(content: Content) -> some View {
      return content
        .foregroundColor(Color.black)
        .font(Font.custom("Arial Rounded MT Bold", size: 30.0))
        .padding(.top, 20.0)
        .padding(.bottom, 20.0)
    }
  }
  
  struct AboutBodyStyle: ViewModifier {
    func body(content: Content) -> some View {
      return content
        .foregroundColor(Color.black)
        .font(Font.custom("Arial Rounded MT Bold", size: 16.0))
        .padding(.leading, 60.0)
        .padding(.trailing, 60.0)
        .padding(.bottom, 20.0)
    }
  }
  
  var body: some View {
    Group {
      VStack {
        Text("🎯 Bullseye 🎯").modifier(AboutHeadingStyle())
        Text("This is Bullseye, the game where you can win points and earn fame by dragging a slider.").modifier(AboutBodyStyle()).lineLimit(nil)
        Text("Your goal is to place the slider as close as possible to the target value. The closer you are, the more points you score.").modifier(AboutBodyStyle()).lineLimit(nil)
        Text("Enjoy!").modifier(AboutBodyStyle())
      }
      .navigationBarTitle("About Bullseye")
      .background(beige)
    }
    .background(Image("Background"))
  }
}

struct AboutView_Previews: PreviewProvider {
  static var previews: some View {
    AboutView().previewLayout(.fixed(width: 896, height: 414))
  }
}
