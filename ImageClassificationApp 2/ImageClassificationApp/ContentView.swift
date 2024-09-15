import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel() // @Stateobject helps SwiftUI update the screen when data changes
    
    var body: some View {
        VStack {
            HStack{
                Text("Prediction: ")
                Text(viewModel.prediction)
                //Bottom of Hstack
                
            }
            HStack{
                Text("Confidence: ")
                Text(viewModel.confidence)
                //Bottom of Hstack
            }
            
            //camera preview that the app uses to display previews
            CameraPreview(session: viewModel.session)  //Shows the camera feed.
                .onAppear {  // This runs the camera setup code when the view appears
                    DispatchQueue.global().async { //ensure code is running in the background
                        self.viewModel.setupSession()
                    }
                }
        }
        .background(
            Image(.bluBD)
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()
        )
    }
}

#Preview {
    ContentView()
}
