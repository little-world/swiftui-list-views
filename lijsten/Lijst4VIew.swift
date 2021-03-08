//
//  Lijst4VIew.swift
//  lijsten
//
//  Created by peter van rijn on 15/12/2020.
//

// added navigation bar

import SwiftUI

struct Lijst4VIew: View {
  var lijst = [Item(id: 0, text: "een"), Item(id: 1, text: "twee"), Item(id: 2, text: "drie")]
  var body: some View {
    NavigationView {
      VStack {
        ForEach(lijst) { item in
          Text("Hello, world \(item.text)!")
           .padding()
        }
        Spacer()
      }.navigationTitle("lijsten")

    }
  }
}


struct Lijst4VIew_Previews: PreviewProvider {
  static var previews: some View {
    Lijst4VIew()
  }
}
