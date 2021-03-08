//
//  CourseList.swift
//  animated-text-1
//
//  Created by peter van rijn on 09/10/2020.
//

import SwiftUI



struct Course: Identifiable {
    var id = UUID()
    var name: String
}

struct CourseView: View {
    var course: Course
    var size: CGSize
    var body: some View {
        ZStack {
            VStack {
                Image(systemName: "video").position(x: 20, y: 20)
                Text(course.name)
                    .font(Font.custom("Helvetica Neue Light", size: 40))
                    .foregroundColor(Color.init( red: 50 / 255, green: 100 / 255 , blue: 255 / 255))
                    .padding(.top, -100)
                Spacer()
            }
            .background(
                Image("image1")
                    .resizable()
                    .aspectRatio(CGSize(width: size.width - 80, height: size.width / 2.3), contentMode: .fill)
                    .edgesIgnoringSafeArea(.all)
                
            )
            .cornerRadius(10)
            .frame(width: size.width - 30, height: size.width / 2.3)
            .foregroundColor(.blue)
            
        }
    }
    
}

struct CourseList: View {
    var courses = [Course(name: "first"), Course(name: "second"), Course(name: "third"), Course(name: "fourth"), Course(name: "fifth"), Course(name: "sixth"), Course(name: "seventh"), Course(name: "eighth")]
    var body: some View {
        GeometryReader { geometry in
            
            ScrollView {
                LazyVStack {
                    ForEach(courses, id: \.id)  { course in
                        CourseView(course: course, size: geometry.size)
                            .padding(1)
                    }
                }
            }
        }
        
    }
}

struct CourseList_Previews: PreviewProvider {
    static var previews: some View {
        CourseList()
    }
}
