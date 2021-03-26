//import SwiftUI
//
//struct ContentView: View {
//    let array = ["Peter", "Paul", "Mary", "Anna-Lena", "George", "John", "Greg", "Thomas", "Robert", "Bernie", "Mike", "Benno", "Hugo", "Miles", "Michael", "Mikel", "Tim", "Tom", "Lottie", "Lorrie", "Barbara"]
//    @State private var searchText = ""
//    @State private var showCancelButton: Bool = false
//
//    var body: some View {
//
//        NavigationView {
//            VStack {
//                // Search view
// .animation(.default) // animation does not work properly
//
//                List {
//                    // Filtered list of names
//                    ForEach(array.filter{$0.hasPrefix(searchText) || searchText == ""}, id:\.self) {
//                        searchText in Text(searchText)
//                    }
//                }
//                .navigationBarTitle(Text("Search"))
//                .resignKeyboardOnDragGesture()
//            }
//        }
//    }
//}
//
//
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//           ContentView()
//              .environment(\.colorScheme, .light)
//
//           ContentView()
//              .environment(\.colorScheme, .dark)
//        }
//    }
//}
//
//extension UIApplication {
//    func endEditing(_ force: Bool) {
//        self.windows
//            .filter{$0.isKeyWindow}
//            .first?
//            .endEditing(force)
//    }
//}
//
//struct ResignKeyboardOnDragGesture: ViewModifier {
//    var gesture = DragGesture().onChanged{_ in
//        UIApplication.shared.endEditing(true)
//    }
//    func body(content: Content) -> some View {
//        content.gesture(gesture)
//    }
//}
//
//extension View {
//    func resignKeyboardOnDragGesture() -> some View {
//        return modifier(ResignKeyboardOnDragGesture())
//    }
//}
