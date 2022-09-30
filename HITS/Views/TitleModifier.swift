//
//  TitleModifier.swift
//  HITS
//
//  Created by Кристина Перегудова on 28.09.2022.
//

import SwiftUI

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.largeTitle)
      .foregroundColor(.white)
      .padding()
      .background(.blue)
      .clipShape(RoundedRectangle(cornerRadius: 10))
  }
}

extension View {
  func titleStyle() -> some View {
    modifier(TitleModifier())
  }
}

struct TitleModifier_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      Text("Hello, world!")
        .modifier(TitleModifier())
      
      Text("Hello, world!")
        .titleStyle()
    }.padding()
      .previewLayout(.sizeThatFits)
  }
}

