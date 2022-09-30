//
//  ListView.swift
//  HITS
//
//  Created by Кристина Перегудова on 30.09.2022.
//

import SwiftUI

struct ColorItem: Identifiable {
  let id = UUID().uuidString
  let name: String
  let color: Color
}

struct ListView: View {
  @State private var colors = [ColorItem]()
  
  var body: some View {
    ///
    /// Чтобы список правильно работал, важно передать признак уникальности в объектах, которые будут входить в состав отображаемых элементов.
    ///
    /// Одним из простых способов будет подписать объект под протокол Identifiable.
    ///
  
    List(colors) { item in
      Text(item.name)
        .foregroundColor(item.color)
    }.onAppear {
      createColors()
    }
  }
  
  private func createColors(_ count: Int = 10) {
    colors.append(contentsOf: Array(repeating: ColorItem(name: "Red", color: .red),
                                    count: count))
    colors.append(contentsOf: Array(repeating:  ColorItem(name: "Green", color: .green),
                                    count: count))
    colors.append(contentsOf: Array(repeating: ColorItem(name: "Blue", color: .blue),
                                    count: count))
    colors.shuffle()
  }
}

struct ListView_Previews: PreviewProvider {
  static var previews: some View {
    ListView()
  }
}
