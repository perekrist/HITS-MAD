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
        NavigationLink(destination: FormsView()) {
          Text("Формы")
        }
        NavigationLink(destination: CompositionsView()) {
          Text("Композиции")
        }
        NavigationLink(destination: InputsView()) {
          Text("Компоненты с вводом/выводом")
        }
        NavigationLink(destination: ModifiersView()) {
          Text("Модификаторы")
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
