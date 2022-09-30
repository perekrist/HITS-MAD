//
//  CompositionsView.swift
//  HITS
//
//  Created by Кристина Перегудова on 28.09.2022.
//

import SwiftUI

struct CompositionsView: View {
  
  var body: some View {
    HStack(alignment: .top, spacing: 40) {
      VStack(spacing: 5) {
        Text("VStack")
        VStack {
          circles()
        }
      }
      VStack(spacing: 5) {
        Text("HStack")
        HStack {
          circles()
        }
      }
      VStack(spacing: 5) {
        Text("ZStack")
        ZStack {
          circles()
        }
      }
    }.padding(40)
  }
  
  @ViewBuilder
  private func circles() -> some View {
    Circle()
      .foregroundColor(.red.opacity(0.7))
      .frame(width: 40, height: 40)
    Circle()
      .foregroundColor(.green.opacity(0.7))
      .frame(width: 30, height: 30)
    Circle()
      .foregroundColor(.blue.opacity(0.7))
      .frame(width: 20, height: 20)
  }
}

struct CompositionsView_Previews: PreviewProvider {
  static var previews: some View {
    CompositionsView()
      .previewLayout(.sizeThatFits)
  }
}
