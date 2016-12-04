/**
 * Swift-like for playgroud
 *
 * Author: Giacomo Piva - http://www.giacomopiva.com
 *
 */

import RealmSwift

class Walk: Object {
    dynamic var date: NSDate?                   // Data dell'attività fisica
    dynamic var speed: Double = 0.0             // Velocità media dell'attività fisica in km/h
    dynamic var duration: Int = 0               // Durata dell'attività fisica in secondi
    dynamic var created_at: NSDate = NSDate()   // Momento del salvataggio
    
    static func lastest(days: Int = kDefaultLastDaysQuery) -> Results<Walk> {
        let daysAgo = Double(-1*(60*60*24*days))
        let startDate = NSDate().dateByAddingTimeInterval(daysAgo)
        let realm = try! Realm()
        let predicate = NSPredicate(format: "date >= %@", startDate)
        let results = realm.objects(Walk.self).filter(predicate).sorted("date", ascending: false)
        return results
    }
    
    static func inDate(date: NSDate = NSDate()) -> Results<Walk> {
        let realm = try! Realm()
        let predicate = NSPredicate(format: "date = %@", date)
        let results = realm.objects(Walk.self).filter(predicate).sorted("date", ascending: false)
        return results
    }
    
    func store() {
        let realm = try! Realm()
        try! realm.write {
            realm.add(self)
        }
    }
}
