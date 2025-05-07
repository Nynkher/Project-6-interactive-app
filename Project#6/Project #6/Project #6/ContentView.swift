import SwiftUI

// This is the main view of our application.
struct ContentView: View {
    // @State is a property wrapper that allows us to modify a value from within a view
    // and have the view automatically update when the value changes.
    // We'll use this to store the text that changes.
    @State private var message: String = "Hello, SwiftUI!"

    // The 'body' property is what SwiftUI uses to render the view.
    var body: some View {
        // VStack is a vertical stack that arranges its children in a vertical line.
        VStack(spacing: 20) { // Add some spacing between elements
            // Text view to display our message.
            Text(message)
                .font(.largeTitle) // Make the text larger
                .padding() // Add some padding around the text

            // Button view that triggers an action when tapped.
            Button(action: {
                // This is the action that happens when the button is tapped.
                // We'll change the message here.
                if message == "Hello, SwiftUI!" {
                    message = "You tapped the button!"
                } else {
                    message = "Hello, SwiftUI!"
                }
            }) {
                // This is the label for the button.
                Text("Tap Me!")
                    .font(.headline) // Style the button text
                    .padding() // Add padding to make the button tappable area larger
                    .background(Color.blue) // Set the button background color
                    .foregroundColor(.white) // Set the button text color
                    .cornerRadius(10) // Round the corners of the button
            }
        }
        .padding() // Add padding around the VStack
    }
}

// This is the preview provider, which allows Xcode to display a live preview of your view.
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

