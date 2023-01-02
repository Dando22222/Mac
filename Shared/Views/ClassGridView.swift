//
//  ClassGridView.swift
//  Play
//
//  Created by Diane Smith on 12/13/22.
//

import SwiftUI

struct ClassGridView: View {
    
    @State var detailViewHidden : Bool = true
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                    
                    LazyVGrid(
                        columns: columns,
                        spacing: 20,
                        content: {
                        Section(
                            header:
                                VStack {
                                    Divider()
                                        .frame(height: 3)
                                        .overlay(.black.opacity(0.4))
                                    Text("Tanks")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .frame(maxWidth: .infinity, maxHeight: 5, alignment: .leading)
                                .padding()
                                    Divider()
                                        .frame(height: 3)
                                        .overlay(.black.opacity(0.4))
                                }
                                .background(Color("TankColor"))
                                
                                
                                ){
                        ClassIconView(classIcon: Image("Warrior"), iconDescription: "WAR", className: "GNB", navBarColor: Color("TankColor"))
                        ClassIconView(classIcon: Image("Gunbreaker"), iconDescription: "GNB", className: "Gunbreaker", navBarColor: (Color("TankColor")))
                        ClassIconView(classIcon: Image("DarkKnight"), iconDescription: "PLD", className: "Dark Knight", navBarColor: (Color("TankColor")))
                        ClassIconView(classIcon: Image("Paladin"), iconDescription: "PLD", className: "Paladin", navBarColor: (Color("TankColor")))
                        }
                        Section(
                            header:
                                
                                VStack {
                                    Divider()
                                        .frame(height: 3)
                                        .overlay(.black.opacity(0.4))
                                    Text("Healers")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                    .frame(maxWidth: .infinity, maxHeight: 5, alignment: .leading)
                                .padding()
                                    Divider()
                                        .frame(height: 3)
                                        .overlay(.black.opacity(0.4))
                                }
                                .background(Color("HealerColor"))
                                
                                
                                ){
                        ClassIconView(classIcon: Image("WhiteMage"), iconDescription: "WHM")
                        ClassIconView(classIcon: Image("Astrologian"), iconDescription: "AST")
                        ClassIconView(classIcon: Image("Scholar"), iconDescription: "SCH")
                        ClassIconView(classIcon: Image("Sage"), iconDescription: "SGE")
                            }
                    Section(
                        header:
                            
                            VStack {
                                Divider()
                                    .frame(height: 3)
                                    .overlay(.black.opacity(0.4))
                                Text("DPS")
                                .font(.title)
                                .foregroundColor(.white)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity, maxHeight: 5, alignment: .leading)
                            .padding()
                                Divider()
                                    .frame(height: 3)
                                    .overlay(.black.opacity(0.4))
                            }
                            .background(Color("DPSColor"))
                            
                            
                            ){
                            GroupedClassIconViews()
                            ClassIconView(classIcon: Image("BlackMage"), iconDescription: "BLM")
                            }
                        }
                            
                            
                )}
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
            }
        }

struct ClassGridView_Previews: PreviewProvider {
    static var previews: some View {
        ClassGridView()
    }
}
