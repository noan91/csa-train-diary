//
//  TrainView.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 21.11.24.
//

import SwiftUI

struct TrainView: View {
    @State var train: Train
    @State var newSet: TrainSet
    var exercises: [TrainExcercise]
    var body: some View {
        Text("TrainView")
        List {
            ForEach(train.sets.map(\.self)) {set  in
                TrainSetView(trSet: set)
            }
        }
        .listStyle(.sidebar)
        .buttonStyle(BorderlessButtonStyle())
        TrainSetEditView(exercises: exercises, trSet: newSet)
        HStack {
            Button(action: addSet) {
                Label("end", systemImage: "minus")
            }
            Spacer()
            Button(action: addSet) {
                Label("Add Item", systemImage: "plus")
            }
        }
      
    }
    private func addSet() {
        
    }
    private func deleteSet(offsets: IndexSet) {
        
    }
}


#Preview {
  
    TrainView(train: Train(date: Date(), sets: defaultTrainSets), newSet: TrainSet(exercise: defaultTrainExcercises[0], counter: .reps, reps: 4, intencity: 22), exercises: defaultTrainExcercises)
}
