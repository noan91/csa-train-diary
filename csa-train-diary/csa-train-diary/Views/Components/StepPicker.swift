//
//  StepPicker.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 21.11.24.
//

import SwiftUI

struct StepPicker<T: AdditiveArithmetic>: View {
    var label: String
    @State var step: T
    @State var value: T
    
    var body: some View {
        HStack{
            Text(label)
            Button("-") {
                value -= step
            }
            Text("\(value)")
            Button("+") {
                value += step
            }
        }
    }
}


#Preview {
    StepPicker(label: "one", step: 1, value: 1)
    StepPicker(label: "two", step: 0.5 , value: 11.0)
}
