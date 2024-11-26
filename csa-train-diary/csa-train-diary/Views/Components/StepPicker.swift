//
//  StepPicker.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 21.11.24.
//

import SwiftUI

struct StepPicker<T: AdditiveArithmetic>: View {
    var label: String
    var disabled: Bool?
    @State var step: T
    @State var value: T
    
    var body: some View {
        HStack{
            Text(label)
                .font(.title2)
            Button("-") {
                if !(disabled ?? false) {
                    value -= step
                }
            }
            .font(.title2)
            Text("\(value)")
                .font(.title2)
                .frame(width: 60)
            Button("+") {
                if !(disabled ?? false) {
                    value += step
                }
            }
            .font(.title2)
        }
    }
}


#Preview {
    StepPicker(label: "one", step: 1, value: 1)
    StepPicker(label: "two", step: 0.5 , value: 888.0)
}
