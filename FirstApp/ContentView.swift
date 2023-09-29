
import SwiftUI

struct RedView: View {
    var body: some View {
        NavigationView(content: {
            VStack{
                CircleNumber(color: .red, number: 1)
                    .navigationBarTitle("Página 1", displayMode: .inline)
                    .offset(y: -40)
                NavigationLink(destination: BlueView()) {
                    Text("Próximo")
                        .font(.system(size: 20))
                        .frame(width: 230, height: 60)
                        .background(.blue)
                        .foregroundStyle(.white)
                        .clipShape(.rect(cornerRadius: 16))
                }
            }
        })
    }
}

struct BlueView: View {
    var body: some View {
        VStack{
            CircleNumber(color: .cyan, number: 2)
                .navigationTitle("Página 2")
                .offset(y: -40)
            NavigationLink(destination: GreenView()) {
                Text("Próximo")
                    .frame(width: 230, height: 60)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.rect(cornerRadius: 16))
            }
        }
    }
}

struct GreenView: View {
    var body: some View {
        VStack{
            CircleNumber(color: .green, number: 3)
                .navigationTitle("Página 3")
                .offset(y: -40)
            NavigationLink(destination: BlueView()) {
                Text("Próximo")
                    .frame(width: 230, height: 60)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.rect(cornerRadius: 16))
            }
        }
    }
}

struct CircleNumber: View {
    
    var color: Color
    var number: Int
    
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 200)
                .foregroundStyle(color)
            Text("\(number)")
                .font(.system(size: 100, weight: .bold))
                .foregroundStyle(.white)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}


