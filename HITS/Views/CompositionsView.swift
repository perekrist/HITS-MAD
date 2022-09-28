//
//  CompositionsView.swift
//  HITS
//
//  Created by Кристина Перегудова on 28.09.2022.
//

import SwiftUI

struct CompositionsView: View {
  @State var colors: [Color] = [.red, .green, .blue]
  
  
  var body: some View {
    HStack(spacing: 40) {
      VStack(spacing: 5) {
        Text("VStack")
        VStack {
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
      VStack(spacing: 5) {
        Text("HStack")
        HStack {
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
      VStack(spacing: 5) {
        Text("ZStack")
        ZStack {
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
    }.padding()
      .padding(.top, 40)
  }
}

struct CompositionsView_Previews: PreviewProvider {
  static var previews: some View {
    CompositionsView()
      .previewLayout(.sizeThatFits)
  }
}
