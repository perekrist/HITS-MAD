//
//  ModifiersView.swift
//  HITS
//
//  Created by Кристина Перегудова on 28.09.2022.
//

import SwiftUI

struct ModifiersView: View {
  @State var text = "Hello, World!"
  @State var showAlert = false
  
  var body: some View {
    Text(text)
      .foregroundColor(.red)
      .font(.title)
      .bold()
      .padding()
      .background(
        RoundedRectangle(cornerRadius: 12)
          .shadow(radius: 20)
      )
      .padding()
      .onTapGesture {
        text += "!"
      }
      .animation(.linear, value: text)
  }
}

struct ModifiersView_Previews: PreviewProvider {
  static var previews: some View {
    ModifiersView()
      .previewLayout(.sizeThatFits)
  }
}
