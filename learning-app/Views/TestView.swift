//
//  TestView.swift
//  learning-app
//
//  Created by user on 6/16/21.
//

import SwiftUI

struct TestView: View {
    
    @EnvironmentObject var model:ContentModel
    
    @State var selectedAnswerIndex: Int?
    @State var submitted = false
    
    @State var numCorrect = 0
    
    var body: some View {
        
        if model.currentQuestion != nil {
            
            VStack {
                // Question number
                Text("Question \(model.currentQuestionIndex + 1) of \(model.currentModule?.test.questions.count ?? 0)")
                    .padding(.leading, 20)
                
                // Question
                CodeTextView()
                    .padding(.horizontal, 20)
                
                // Answers
                ScrollView{
                    VStack {
                        ForEach (0..<model.currentQuestion!.answers.count, id: \self) {index in
                            
                            Button {
//                                Track the selected index
                                selectedAnswerIndex = index
                                
                            } label: {
                                
                                ZStack {
                                    
                                    if submitted == false {
                                        RectangleCard(color: index ==
                                                        selectedAnswerIndex ? .gray : .white )
                                            .frame(height: 48)
                                    }
                                }
                            }
                        }
                    }
                }
                
                // Button
            }
            .navigationBarTitle("\(model.currentModule?.category ?? "") Test")
            
        }
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
