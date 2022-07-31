//
//  UserDetailView.swift
//  MVVM_JPMC_TakeHome
//
//  Created by Kyle Essenmacher on 7/31/22.
//
import Foundation
import SwiftUI

struct SchoolDetailView: View {
    
    let school: School
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading) {
                School
                
                Divider()
                
                num_of_sat_takers
                
                Divider()
                
                critical_reading_avg_score
                
                Divider()
                
                math_avg_score
                
                Divider()
                
                writing_avg_score
                
            }
            .frame (maxWidth: .infinity, alignment: .leading)
            .padding()
            .background(.gray.opacity(0.1), in: RoundedRectangle (cornerRadius: 10,
                                                                  style: .continuous))
            .padding()
            .navigationTitle( "SAT Details")
        }
    }
}

private extension SchoolDetailView {
    
    var School: some View {
        VStack(alignment: .leading,
               spacing: 12) {
            Text("school name")
                .bold()
            Text(school.school_name)
        }
    }
    
    var num_of_sat_takers: some View {
        VStack(alignment: .leading,
              spacing: 12) {
            Text ("number of students taking the SAT")
                .bold()
            Text(school.num_of_sat_test_takers)
        }
    }
    
    var critical_reading_avg_score: some View {
        VStack(alignment: .leading,
              spacing: 12) {
            Text ("critical reading average SAT score")
                .bold()
            Text(school.sat_critical_reading_avg_score)
        }
    }
    var math_avg_score: some View {
        VStack(alignment: .leading,
              spacing: 12) {
            Text ("math average SAT score")
                .bold()
            Text(school.sat_math_avg_score)
        }
    }
    var writing_avg_score: some View {
        VStack(alignment: .leading,
              spacing: 12) {
            Text ("writing average SAT score")
                .bold()
            Text(school.sat_writing_avg_score)
        }
    }
    

}
struct UserDetailView_Previews: PreviewProvider {
    static var previews: some View{
        SchoolDetailView(school: .dummy)
            .previewLayout(.sizeThatFits)
    }
}

