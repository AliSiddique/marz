//
//  CertificatesViewModel.swift
//  marzi
//
//  Created by Ali Siddique on 03/04/2023.
//

import Foundation
import Firebase

final class CertificatesViewModel: ObservableObject {
    @Published var certificates: [Certificates] = []
    init() {
        fetchCertificates()
    }
    func fetchCertificates() {
        let db = Firestore.firestore()
        db.collection("certificates").getDocuments() { (querySnapshot, error) in
            if let error = error {
                print("error: \(error)")
            } else {
                if let querySnapshot = querySnapshot {
                    for document in querySnapshot.documents {
                        let data = document.data()
                        let id = data["id"] as? String ?? ""
                        let instructor = data["instructor"] as? String ?? ""
                        let logo = data["logo"] as? String ?? ""
                        let date = data["date"] as? String ?? ""
                        let certificate = Certificates(id: id, instructor: instructor, logo: logo, date: date)
                        self.certificates.append(certificate)
                        print(data)
                    }
                }
            }
        }
    }
}
