//
//  TabBarView.swift
//  HITS
//
//  Created by Кристина Перегудова on 28.09.2022.
//

import SwiftUI

enum Tab: Int, CaseIterable {
  case home, notification, profile
  
  var title: String {
    switch self {
    case .home:
      return "Home"
    case .notification:
      return "Notification"
    case .profile:
      return "Profile"
    }
  }
  
  var imageName: String {
    switch self {
    case .home:
      return "house.fill"
    case .notification:
      return "bell.fill"
    case .profile:
      return "person.fill"
    }
  }
}

struct TabBarView: View {
  private var tabs: [Tab] = Tab.allCases
  
  var body: some View {
    TabView {
      ///
      /// По аналогии с List нужно указывать признак уникальности
      /// 
      ForEach(tabs, id: \.self) { tab in
        Text("\(tab.title) Screen")
          .tabItem {
            Image(systemName: tab.imageName)
            Text(tab.title)
          }
      }
    }
  }
}

struct TabBarView_Previews: PreviewProvider {
  static var previews: some View {
    TabBarView()
  }
}
