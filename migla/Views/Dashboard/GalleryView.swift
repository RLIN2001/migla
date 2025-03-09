import SwiftUI

struct GalleryView: View {
    @State private var selectedFilter = "Week"
    let filters = ["Week", "Category", "All"]
    
    let galleryItems = [
        GalleryItem(title: "ceremonia del tè", image: "tea_ceremony", date: "2024"),
        GalleryItem(title: "hiking 2023", image: "hiking", date: "2023"),
        GalleryItem(title: "acquario genova 2024", image: "aquarium", date: "2024")
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            HStack {
                Spacer()
                
               
                Spacer()
            }
            .padding()
            .padding(.top, 40)
            .background(Color.white)
            
            HStack(spacing: 15) {
                ForEach(filters, id: \.self) { filter in
                    Button(action: {
                        selectedFilter = filter
                    }) {
                        Text(filter)
                            .foregroundColor(selectedFilter == filter ? .black : .gray)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 10)
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(selectedFilter == filter ? 
                                          (filter == "Week" ? Color.gray.opacity(0.2) :
                                           filter == "Category" ? Color.orange.opacity(0.2) :
                                           Color.blue.opacity(0.2))
                                          : Color.clear)
                            )
                    }
                }
            }
            .padding()
            
            ScrollView {
                VStack(spacing: 15) {
                    ForEach(galleryItems) { item in
                        GalleryCard(item: item)
                    }
                }
                .padding()
            }
            .background(Color(UIColor.systemYellow).opacity(0.1))
        }
        .ignoresSafeArea()
    }
}

struct GalleryItem: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let date: String
}

struct GalleryCard: View {
    let item: GalleryItem
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
            
            Text(item.title)
                .font(.title3)
                .fontWeight(.medium)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: [.black.opacity(0.5), .clear]),
                        startPoint: .bottom,
                        endPoint: .top
                    )
                )
        }
        .frame(maxWidth: .infinity)
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

#Preview {
    GalleryView()
}
