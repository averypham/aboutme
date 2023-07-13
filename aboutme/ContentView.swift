import SwiftUI

struct ContentView: View {
    @State private var presentAlert = false
    var body: some View {
        ZStack{
            Color(.systemGray2)
                .ignoresSafeArea()
            VStack(alignment: .leading, spacing:20.0){
                Image("dog")
                    .resizable()
                    .aspectRatio(contentMode:
                            .fit)
                    .cornerRadius(20)
                HStack(spacing: 20.0){
                    Text("        Avery")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("Pham")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }
             
                Button("Click here") {
                    presentAlert = true
                        
                }
                
                .alert("I like to hang out with my golden retriever and go climbing and skiing.", isPresented: $presentAlert) {
                    Button("Ok", role: .cancel) {}
                    
                }
                
                
                .font(.title2)
                        
                        .buttonStyle(.borderedProminent)
    
                        .tint(.blue)
                        
                        .bold()
                
                        .font(Font.custom("Helvetica Neue", size: 24.0))
                
                        .padding()
                
                        .foregroundColor(Color.white)
                
                        .background(Color("AccentColor"))
                
                        .cornerRadius(0)
                
                        
            }
            
            
            
        }
        .padding()
        .background(Rectangle() .foregroundColor(.white))
        .shadow(radius: 30)
        .padding()
        
    }
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}

