//
//  ContentView.swift
//  MVVM_JPMC_TakeHome
//
//  Created by Kyle Essenmacher on 7/31/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = SchoolsViewModel()
    
    var body: some View {
        ZStack {
            if vm.isLoading {
                ProgressView()
            } else {
                NavigationView {
                    List {
                        ForEach(vm.schools, id: \.dbn) { school in
                            
                            SchoolInfoView(school_name: school.school_name)
                                .background(
                                    NavigationLink("", destination: SchoolDetailView(school: school))
//                                    takes out the carrot if you want, but i like the carrot
//                                        .opacity(0)
                                )
                        }
                        .listRowSeparator(.hidden)
                    }
                    .listStyle(.plain)
                    .navigationTitle("Schools")
                }
             }
        }
        .task {
        
            do {
                try await vm.fetchSchools()
            } catch {
                print (error)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
