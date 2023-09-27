
import SwiftUI

struct ContentView: View {
    @State var number = 0
    
    var body: some View {
        VStack {
            Text("\(number)")
                .font(.largeTitle)
                .bold()
            Spacer()
                .frame(height: 100)
            HStack {
                Button("Clique", action: increment)
                    .buttonStyle(.borderedProminent)
                Spacer()
                    .frame(width: 50)
                Button("Clique", role: .destructive, action: decrement)
                    .buttonStyle(.borderedProminent)
            }
        }
        .font(.title)
    }
    
    func increment(){
        if(number < 10){
            self.number += 1
        }
    }
    
    func decrement(){
        if(number > 0){
            self.number -= 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


