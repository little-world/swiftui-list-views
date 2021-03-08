//
//  Lijst2View.swift
//  lijsten
//
//  Created by peter van rijn on 15/12/2020.
//

// added lijst var

import SwiftUI

struct Lijst2View: View {
  var lijst = ["een", "twee", "drie"]
  var body: some View {
    VStack {
      ForEach(lijst, id: \.self) { item in
        Text("Hello, world \(item)!")
        .padding()
      }
    }
  }
}

struct Lijst2View_Previews: PreviewProvider {
  static var previews: some View {
    Lijst2View()
  }
}
