//
//  SetView.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 21.11.24.
//

import SwiftUI

struct TrainSetView: View {
    @State var trSet: TrainSet
    var body: some View {
        VStack (alignment: .leading) {
            Text(trSet.exercise.name)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                
            HStack {
                VStack(alignment: .leading) {
                    Text("weight:")
                    Text("\(trSet.intencity)")
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                }
                
                Spacer()
                VStack (alignment: .leading) {
                    Text("reps:")
                    Text("\(trSet.reps)")
                        .font(/*@START_MENU_TOKEN@*/.title2/*@END_MENU_TOKEN@*/)
                }
                
            }
        }
        .padding(/*@START_MENU_TOKEN@*/.all, 6.0/*@END_MENU_TOKEN@*/)
    }
}


#Preview {
    
    TrainSetView(trSet: defaultTrainSets[0])
   
}
