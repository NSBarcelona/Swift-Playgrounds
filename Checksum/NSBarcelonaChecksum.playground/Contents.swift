//@phelgo
func phelgoMemberCheck(memberID: String) -> Bool {
    var a = Array(memberID.characters).map { Int(String($0))! }, b = [9, 0]
    func f(n: Int) { if (n < b[0]) { b[0] = n }; if (n > b[1]) { b[1] = n } }
    for var i = 0, s = false; i < a.count - 1; i++ { s ? f(a[i]*3) : f(a[i]); s = !s }
    return (b[0]+b[1])%10 == a[a.count-1]
}

phelgoMemberCheck("314159265359")
phelgoMemberCheck("493770365")
phelgoMemberCheck("127")
phelgoMemberCheck("128")
phelgoMemberCheck("12")

//@joanromano
extension Int {
    var isOdd: Bool { return self % 2 != 0 }
}

func joanMemberCheck(memberID: String) -> Bool {
    var digits = memberID.characters.flatMap { Int(String($0)) }
    let checkDigit = digits.popLast()!
    let checkValues = digits.enumerate().map { $0.isOdd ? $1 * 3 : $1 }
    let sum = checkValues.minElement()! + checkValues.maxElement()!
    return sum % 10 == checkDigit
}

joanMemberCheck("314159265359")
joanMemberCheck("493770365")
joanMemberCheck("127")
joanMemberCheck("128")
joanMemberCheck("12")
