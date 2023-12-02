//
//  ExploreView.swift
//  MyShelves
//
//  Created by Tatum Manning on 12/1/23.
//

import SwiftUI
import Kingfisher

struct ExploreView: View {
    
    @ObservedObject var explore = ExploreViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(explore.listResults.results.books) { book in
                    NavigationLink {
                        //Book Detail
                    } label: {
                        VStack {
                            Text(book.title)
                                .font(Font.custom("American Typewriter", size: 20)).underline()
                            KFImage(book.book_image).scaledToFit()
                        }

                    }

                }
                
            }
            .task {
                await explore.fetchList()
            }
            .listStyle(.grouped)
            .navigationTitle("NYT Best Sellers")
            .alert(isPresented: $explore.hasError, error: explore.error) {
                Text("")
            }
        }

        
        
    }
}

#Preview {
    ExploreView()
}

    
