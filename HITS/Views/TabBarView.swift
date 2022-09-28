//
//  TabBarView.swift
//  HITS
//
//  Created by Кристина Перегудова on 28.09.2022.
//

import SwiftUI

struct TabBarView: View {
  var body: some View {
    TabView {
      Text("HomeScreen")
        .tabItem {
          Image(systemName: "house.fill")
          Text("Home")
        }
      Text("NotificationScreen")
        .tabItem {
          Image(systemName: "bell.fill")
          Text("Notification")
        }
      Text("ProfileScreen")
        .tabItem {
          Image(systemName: "person.fill")
          Text("Profile")
        }
    }
  }
}

struct TabBarView_Previews: PreviewProvider {
  static var previews: some View {
    TabBarView()
  }
}
