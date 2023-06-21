import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 20/255, green: 28/255, blue: 58/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    
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
                HStack {
                    Spacer(minLength: 50)
                    Button(action: {
                        print("Tapped on true")
                    }) {
                        Text("True")
                            .font(.title)
                            .bold()
                            .padding(20)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(accentColor)
                            .cornerRadius(10)
                    }
                    Spacer()
                    Button(action: {
                        print("Tapped on false")
                    }) {
                        Text("False")
                            .font(.title)
                            .bold()
                            .padding(20)
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(accentColor)
                            .cornerRadius(10)
                    }
                    Spacer(minLength: 50)
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
