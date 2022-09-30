//
//  FormsView.swift
//  HITS
//
//  Created by Кристина Перегудова on 28.09.2022.
//

import SwiftUI

struct FormsView: View {
  var body: some View {
    VStack(spacing: 20) {
      ZStack {
        RoundedRectangle(cornerRadius: 24)
          .foregroundColor(.red)
        Text("RoundedRectangle(cornerRadius: 24)")
      }
      ZStack {
        Rectangle()
          .foregroundColor(.green)
        Text("Rectangle()")
      }
      ZStack {
        Ellipse()
          .foregroundColor(.blue)
        Text("Ellipse()")
      }
      ZStack {
        Circle()
          .foregroundColor(.orange)
        Text("Circle()")
      }
      ZStack {
        Capsule()
          .foregroundColor(.yellow)
        Text("Capsule()")
      }
      VStack {
        ///
        /// Системные картинки беруться из SF Symbols
        ///
        Image(systemName: "person.fill")
          .resizable()
          .frame(width: 50, height: 50)
        Text("Image(systemName: \"person.fill\")")
          .font(.system(size: 24))
      }
      VStack {
        Text("Hello, world!")
          .font(.title)
        Text("Text(\"Hello, world!\")")
          .font(.system(size: 24))
      }
    }.padding()
  }
}

struct FormsView_Previews: PreviewProvider {
  static var previews: some View {
    FormsView()
      .previewLayout(.sizeThatFits)
  }
}

