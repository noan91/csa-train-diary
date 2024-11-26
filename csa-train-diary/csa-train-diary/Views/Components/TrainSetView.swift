//
//  SetView.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 21.11.24.
//

import SwiftUI

struct TrainSetView: View {
    var exercises: [TrainExcercise]
    @State var trSet: TrainSet
    var body: some View {
        VStack {
            
            Picker ("excercise", selection: $trSet.exercise) {
                ForEach(exercises) { ex in
                    Text(ex.name).tag(ex)
                }
            }
            .pickerStyle(.wheel)
            .frame(height: 120)
            
           
            if trSet.intencity != nil {
                HStack{
                    StepPicker(label: "Intencity:", step:0.5, value:  trSet.intencity!)
                }
            }
            StepPicker(label:"Reps:", step: 1, value:  trSet.reps)
            
        }
        .buttonStyle(.borderless)
    }
}


#Preview {
    let exList: [TrainExcercise] = [TrainExcercise(name: "pull up", target: "back"), TrainExcercise(name: "push up", target: "chest")]
    let set1 = TrainSet(exercise: TrainExcercise(name: "pull up", target: "back"), counter: .reps, reps: 10, intencity: nil)
    let set2 = TrainSet(exercise: TrainExcercise(name: "push up", target: "chest"), counter: .reps, reps: 10, intencity: 40)
    TrainSetView(exercises: exList, trSet: set1)
    TrainSetView(exercises: exList, trSet: set2)
}
