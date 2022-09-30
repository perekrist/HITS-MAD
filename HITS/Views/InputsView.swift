//
//  InputsView.swift
//  HITS
//
//  Created by Кристина Перегудова on 28.09.2022.
//

import SwiftUI

struct InputsView: View {
  @State var count = 0
  @State var text = ""
  @State var isToggle = false
  @State var sliderValue = 0.0
  @State var date: Date = Date(timeIntervalSince1970: 0)
  
  var body: some View {
    VStack(spacing: 20) {
      // MARK: - Button
      HStack {
        Button {
          count += 1
        } label: {
          Text("Tap")
            .padding()
        }
        Text("Count: \(count)")
          .padding()
      }
      
      // MARK: - TextField
      TextField("This is a TextField", text: $text)
        .padding()
      
      // MARK: - Toggle
      Toggle(isOn: $isToggle) {
        Text("Toggle")
          .padding()
      }
      ToggleView(isToggle: $isToggle)
      
      // MARK: - Slider
      HStack {
        Slider(value: $sliderValue, in: 0...10)
          .padding()
        Text(String(format: "%.2f", sliderValue))
          .padding()
      }
      
      // MARK: - DatePicker
      DatePicker("DatePicker", selection: $date)
        .padding()
    }.padding()
    
  }
}

struct ToggleView: View {
  @Binding var isToggle: Bool
  
  var body: some View {
    Toggle(isOn: $isToggle) {
      Text("Toggle")
        .padding()
    }
  }
}

struct InputsView_Previews: PreviewProvider {
  static var previews: some View {
    InputsView()
      .previewLayout(.sizeThatFits)
  }
}
