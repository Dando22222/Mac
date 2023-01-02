//
//  GroupedClassIconViews.swift
//  Play
//
//  Created by Diane Smith on 12/14/22.
//

import SwiftUI

struct GroupedClassIconViews: View {
    var body: some View {
        Group {
            ClassIconView(classIcon: Image("Samurai"), iconDescription: "SAM")
            ClassIconView(classIcon: Image("Reaper"), iconDescription: "RPR")
            ClassIconView(classIcon: Image("Monk"), iconDescription: "MNK")
            ClassIconView(classIcon: Image("Dragoon"), iconDescription: "DRG")
            ClassIconView(classIcon: Image("Ninja"), iconDescription: "NIN")
            ClassIconView(classIcon: Image("Bard"), iconDescription: "BRD")
            ClassIconView(classIcon: Image("Machinist"), iconDescription: "MCH")
            ClassIconView(classIcon: Image("Dancer"), iconDescription: "DNC")
            ClassIconView(classIcon: Image("RedMage"), iconDescription: "RDM")
            ClassIconView(classIcon: Image("Summoner"), iconDescription: "SMN")
        }
    }
}

struct GroupedClassIconViews_Previews: PreviewProvider {
    static var previews: some View {
        GroupedClassIconViews()
    }
}
