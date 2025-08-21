import Foundation
import CoreData

class HighScoreViewModel: ObservableObject {
    let container: NSPersistentContainer
    
    @Published var highScores: [HighScoreEntity] = []
    
    init() {
        container = NSPersistentContainer(name: "HighScoreDataModel")
        
        //Load the data
        container
            .loadPersistentStores { description, error in
                if let error {
                    print("Loading error: \(error.localizedDescription)")
                } else {
                    print("Loading SUCCESSFUL")
                }
            }
        //Fetch data into highScores
        fetchHighScores()
    }
    
    func fetchHighScores() {
        
    }
    
}
