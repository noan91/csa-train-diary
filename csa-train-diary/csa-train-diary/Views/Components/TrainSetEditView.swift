//
//  TrainSetEditView.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 26.11.24.
//

import SwiftUI

struct TrainSetEditView: View {
    var exercises: [TrainExcercise]
    @State var trSet: TrainSet
    var body: some View {
        VStack(alignment: .center) {
            
            Picker ("excercise", selection: $trSet.exercise) {
                ForEach(exercises) { ex in
                    Text(ex.name).tag(ex)
                }
            }
            .pickerStyle(.wheel)
            .frame(height: 120)

            
            StepPicker(label: "Intencity:", step: 0.5, value:  trSet.intencity)
                .padding(.bottom, 5.0)

            StepPicker(label:"Reps:", step: 1, value:  trSet.reps)
                .padding(.bottom, 5.0)
      
        }
        .padding(.horizontal, 10)
        
        .border(.gray, width: 1)
        .cornerRadius( 20)
        //.shadow(radius: 25)
        
        
    }
}


#Preview {
    TrainSetEditView(exercises: defaultTrainExcercises, trSet: defaultTrainSets.first!)
}
