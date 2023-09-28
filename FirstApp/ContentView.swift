
import SwiftUI

struct ContentView: View {
    @State var number = 0
    
    var body: some View {
        ZStack{
            Image("Java_BG")
                .resizable()
                .ignoresSafeArea(.all)
                .scaledToFill()
                .opacity(0.4)
            VStack {
                Text(number <= 10 ? "\(number)" : "Estourou o limite já")
                    .font(.system(size: number <= 10 ? 90 : 40))
                    .bold()
                    .foregroundStyle(number == 10 ? .red : .white)
                
                Spacer()
                    .frame(height: 100)
                HStack {
                    Button(action: decrement){
                        Text("-")
                            .font(.system(size: 50))
                            .bold()
                            .padding(EdgeInsets(top: 10, leading: 50, bottom: 10, trailing: 50))
                    }
                    .background(.red)
                    .foregroundColor(.white)
                    .clipShape(.rect(cornerRadius: 10))
                    Spacer()
                        .frame(width: 50)
                    Button(action: increment){
                        Text("+")
                            .font(.system(size: 50))
                            .padding(EdgeInsets(top: 10, leading: 50, bottom: 10, trailing: 50))
                    }
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(.rect(cornerRadius: 10))
                }
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        }
        .background(.black)
    }
    
    func increment(){
        if(number <= 10){
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


