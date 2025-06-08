import SwiftUI

struct ImagePreviewDestinationView: View {
    let image: UIImage?
    
    var body: some View {
        if let image = image {
            ImagePreviewView(image: image)
        } else {
            EmptyView()
        }
    }
}
