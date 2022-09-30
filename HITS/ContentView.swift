//
//  ContentView.swift
//  HITS
//
//  Created by Кристина Перегудова on 28.09.2022.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Компоненты")) {
          NavigationLink {
            FormsView()
              .frame(maxHeight: .infinity, alignment: .top)
          } label: {
            Text("Формы")
          }
          NavigationLink {
            CompositionsView()
              .frame(maxHeight: .infinity, alignment: .top)
          } label: {
            Text("Композиция")
          }
          NavigationLink {
            InputsView()
              .frame(maxHeight: .infinity, alignment: .top)
          } label: {
            Text("Компоненты с вводом/выводом")
          }
        }
        NavigationLink(destination: ListView()) {
          Text("Таблица")
        }
        NavigationLink(destination: TabBarView()) {
          Text("Табы")
        }
      }.navigationTitle("SwiftUI")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice(PreviewDevice(rawValue: "iPhone 13"))
      .previewDisplayName("iPhone 13")
    
    ContentView()
      .previewDevice(PreviewDevice(rawValue: "iPhone 8 Plus"))
      .previewDisplayName("iPhone 8 Plus")
  }
}
