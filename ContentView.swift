import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
    let buttonLabels = ["Ant", "Bee", "Moth", "Beetle"]
    
    var body: some View {
        ZStack {
            mainColor.edgesIgnoringSafeArea(.all)
            VStack {
                Text("1/10")
                    .font(.body)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                Text("What was the first computer bug")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                Spacer()
                HStack(spacing: 24) {
                    ForEach(buttonLabels, id: \.self) { label in
                        Button(action: {
                            print("Tapped on \(label)")
                        }) {
                            Text(label)
                                .font(.body)
                                .bold()
                                .multilineTextAlignment(.center)
                                .padding()
                                .border(accentColor, width: 4)
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
