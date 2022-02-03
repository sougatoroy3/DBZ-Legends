import Subsonic
import SwiftUI

struct ContentView: View {
    let names = ["Goku", "Gohan", "Vegeta", "Piccolo"]
    let colums=[
        GridItem(.adaptive(minimum: 250))
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: colums)
                {
                    ForEach(names, id: \.self) {name in
                        Button{
                        play(sound: "\(name).m4r")
                        print("You tapped on \(name)")
                        } label:{
                            Image(name)
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(25)
                                .padding(.horizontal)
                        }
                    }
                }
            }
            .navigationTitle("DBZ Legends")
        }
        .navigationViewStyle(.stack)
    }
}
