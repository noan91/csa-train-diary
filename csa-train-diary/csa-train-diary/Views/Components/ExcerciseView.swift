//
//  ExcerciseView.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 26.10.24.
//

import SwiftUI

struct ExcerciseView: View {
    var targets: [TrainExcerciseTarget]
    @State var exercise: TrainExcercise
    var body: some View {
        VStack{
            
            List {
                TextField("Excercise name", text: $exercise.name)
                Picker ("target", selection: $exercise.target) {
                    ForEach(targets, id: \.self) { target in
                        Text(target).tag(target)
                        
                        
                    }
                }
                .pickerStyle(.inline)
                
            }
        }
    }
}

#Preview {
    ExcerciseView(targets: defaultTrainExcerciseTargets, exercise: TrainExcercise(name: "pull up", target: "back"))
}
