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
        TextField("Excercise name", text: $exercise.name)
        Picker("Target", selection: $exercise.target){
            
                
        }
    }
}

#Preview {
    ExcerciseView(exercise: TrainExcercise(name: "pull up", target: "back"))
}
