import Foundation

public class FreddyAndChukky
{
    static let Scope = "Movie"
    public init(){
        
    }
    public func FreddyScream() -> String{
        return "Freddy is screaming"
    }
    public func ChukkyScream() -> String{
        return "Chukky is screaming"
    }
    
    //declaring static methods
    //With this we can override our static method
    public class func NoBodyScream(){
        print("😍 Roxana & Alexa😍")
    }
    //it is equivalent
    public static func OthersScream(){
        print("Others are screaming in \(Scope) as well 🤪🤪🤪")
    }
}
public class SonsFreddyAndChukky : FreddyAndChukky
{
    override public class func NoBodyScream() {
        print("Method class static 'NoBodyScream' is called")
    }
}
