import Foundation
import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    
    var body: some View {
        Text(choiceText)
            .font(.title)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text")
    }
}