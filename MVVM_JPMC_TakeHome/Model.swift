//
//  Model.swift
//  MVVM_JPMC_TakeHome
//
//  Created by Kyle Essenmacher on 7/31/22.
//


struct School: Codable {
    let dbn: String
    let school_name: String
    let num_of_sat_test_takers: String
    let sat_critical_reading_avg_score: String
    let sat_math_avg_score: String
    let sat_writing_avg_score: String
}


extension School {
    
    static var dummy: School {
        .init(dbn: "1",
              school_name: "NYC High",
              num_of_sat_test_takers: "10",
              sat_critical_reading_avg_score: "20",
              sat_math_avg_score: "30",
              sat_writing_avg_score: "30")
    }
}


//{"dbn":"01M292","school_name":"HENRY STREET SCHOOL FOR INTERNATIONAL STUDIES","num_of_sat_test_takers":"29","sat_critical_reading_avg_score":"355","sat_math_avg_score":"404","sat_writing_avg_score":"363"}


//struct User: Codable {
//    let id: Int
//    let name: String
//    let username: String
//    let email: String
//    let phone: String
//    let website: String
//}
//
//
//extension User {
//
//    static var dummy: User {
//        .init(id: 1,
//              name: "Tunde Ads",
//              username: "tundsdev",
//              email: "tunds@gmail.com",
//              phone: "0161-MANNY-ON-THE-MAp",
//              website: "tundsdev.com")
//    }
//}
