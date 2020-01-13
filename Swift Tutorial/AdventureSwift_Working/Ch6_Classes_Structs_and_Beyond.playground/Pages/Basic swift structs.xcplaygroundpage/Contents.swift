// Declaring a new struct
struct Level {
    let levelID: Int
    var levelObjectives: [String]
    var levelDescription: String {
        return "Level ID: \(self.levelID)"
    }
    
    init(id: Int, objectives: [String]) {
        self.levelID = id
        self.levelObjectives = objectives
    }
    
    func queryObjectives() {
        for objective in levelObjectives {
            print("\(objective)")
        }
    }
    
    mutating func completeObjective(index: Int) {
        levelObjectives.remove(at: index)
    }
}
var objectives = ["Find the lost cat", "Collect all gemstones", "Defeat the big boss"]
var level1 = Level(id: 1, objectives: objectives)

// Value types again
var defaultLevel = level1

level1.completeObjective(index: 0)
level1.queryObjectives()

defaultLevel.queryObjectives()

