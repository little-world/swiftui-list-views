//
//  Lijst3View.swift
//  lijsten
//
//  Created by peter van rijn on 15/12/2020.
//

// added Item struct

import SwiftUI

struct Lijst3View: View {
  var lijst = [Item(id: 0, text: "een"), Item(id: 1, text: "twee"), Item(id: 2, text: "drie")]
  var body: some View {
    VStack {
      ForEach(lijst) { item in
        Text("Hello, world \(item.text)!")
        .padding()
      }
    }
  }
}

struct Item: Identifiable {
  var id: Int
  var text: String
}

struct Lijst3View_Previews: PreviewProvider {
  static var previews: some View {
    Lijst3View()
  }
}
