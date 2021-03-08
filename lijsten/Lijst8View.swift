//
//  Lijst8View.swift
//  lijsten
//
//  Created by peter van rijn on 15/12/2020.
//

// lazy grid added

import SwiftUI

struct Lijst8View: View {
  var koloms = [GridItem](repeating: GridItem(.flexible(), spacing: 5), count: 2)
  var lijst = [Item(id: 0, text: "een"), Item(id: 1, text: "twee"), Item(id: 2, text: "drie"), Item(id: 3, text: "vier")]
  var body: some View {
    LazyVGrid(columns: koloms) {
      ForEach(lijst) { item in
        Text("Hello, world \(item.text)!")
      }
      .padding(10)
    }
  }
}

struct Lijst8View_Previews: PreviewProvider {
  static var previews: some View {
    Lijst8View()
  }
}
