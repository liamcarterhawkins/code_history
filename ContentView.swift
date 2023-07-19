import SwiftUI

struct ContentView: View {
    let question = Question (
        questionText: "What was the first computer bug?",
        possibleAnswers: ["Ant", "Fly", "Moth", "Beetle"],
        correctAnswerIndex: 2
    )
    
    @state var mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    var body: some View {
        ZStack {
            mainColor.edgesIgnoringSafeArea(.all)
            VStack {
                Text("1/10")
                    .font(.body)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                HStack(spacing: 14) {
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(action: {
                            print("Tapped on button \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .red
                        }) {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
