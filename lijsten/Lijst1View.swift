//
//  ContentView.swift
//  lijsten
//
//  Created by peter van rijn on 15/12/2020.
//

// added for each

import SwiftUI

struct Lijst1View: View {
  var body: some View {
    VStack {
      ForEach(1..<4) { index in
        Text("Hello, world \(index)!")
        .padding()
      }
    }
  }
}

struct Lijst1View_Previews: PreviewProvider {
  static var previews: some View {
    Lijst1View()
  }
}
