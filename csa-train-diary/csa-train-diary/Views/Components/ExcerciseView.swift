//
//  ExcerciseView.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 26.10.24.
//

import SwiftUI

struct ExcerciseView: View {
    @State var exercise: TrainExcercise
    var body: some View {
        VStack{
        
            List {
                TextField("Excercise name", text: $exercise.name)
                Picker(selection: $exercise.target){
                    Text("back").tag("back")
                    Text("legs").tag("legs")
                    Text("chest").tag("chest")
                } label: {
                    Text("\(exercise.target)")
                }
            }
        }
    }
}

#Preview {
    ExcerciseView(exercise: TrainExcercise(name: "pull up", target: "back"))
}
