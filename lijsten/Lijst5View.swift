//
//  Lijst5View.swift
//  lijsten
//
//  Created by peter van rijn on 15/12/2020.
//

// added navigation link and detail view

import SwiftUI

struct Lijst5View: View {
  var lijst = [Item(id: 0, text: "een"), Item(id: 1, text: "twee"), Item(id: 2, text: "drie")]
  var body: some View {
    NavigationView {
      VStack {
        ForEach(lijst) { item in
          NavigationLink(destination: Text("Detail View \(item.text)")) {
            Text("Hello, world \(item.text)!")
          }.padding()
        }
        Spacer()
      }.navigationTitle("lijsten")

    }
  }
}

struct Lijst5View_Previews: PreviewProvider {
  static var previews: some View {
    Lijst5View()
  }
}
