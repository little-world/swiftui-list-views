//
//  Lijst9ViewView.swift
//  lijsten
//
//  Created by peter van rijn on 15/12/2020.
//

import SwiftUI

struct Lijst9View: View {
  var body: some View {

    GeometryReader { geo in
      ScrollView {
        ForEach(1..<100) { index in
          Text("hello \(index)")
          .padding()
          .frame(width: geo.size.width - 6, height: geo.size.height / 10, alignment: .leading)
          .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
          .background(Color.yellow)
          .padding(3)
        }
      }
    }
  }
}

struct Lijst9View_Previews: PreviewProvider {
  static var previews: some View {
    Lijst9View()
  }
}
