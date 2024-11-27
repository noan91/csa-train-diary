//
//  TrainPlanView.swift
//  csa-train-diary
//
//  Created by Стас Чечура on 26.11.24.
//

import SwiftUI

struct TrainPlanView: View {
    @State var plan: TrainPlan
    var body: some View {
        Text("TrainPlanView")
       
    }
}

#Preview {

    TrainPlanView(plan: TrainPlan(name: "String", weeks: []))
}
