//
//  Lijst7View.swift
//  lijsten
//
//  Created by peter van rijn on 15/12/2020.
//

// added custom itemview and detailsview

import SwiftUI

struct Lijst7View: View {
  var lijst = [Item(id: 0, text: "een"), Item(id: 1, text: "twee"), Item(id: 2, text: "drie")]
  var body: some View {
    NavigationView {
      VStack {
        List(lijst) { item in
          NavigationLink(destination: DetailsView(text: "\(item.text)")) {
            ItemView(text: "\(item.text)!")
          }.padding()
        }
        Spacer()
      }.navigationTitle("lijsten")
    }
  }
}

struct ItemView: View {
  var text: String
  var body: some View {
    Text("item view \(text)")
  }
}

struct DetailsView: View {
  var text: String
  var body: some View {
    Text("detail view: \(text)")
  }

}


struct Lijst7View_Previews: PreviewProvider {
  static var previews: some View {
    Lijst7View()
  }
}
