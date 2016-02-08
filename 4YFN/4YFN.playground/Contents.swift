/*:
## NSBarcelona - 4YFN Competition

The challenge:  Multiples of 3 and 5

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Write a function to calculate the sum of all the multiples of 3 or 5 between numbers x and y.

*/
import Foundation


/*:
## Jesus Espejo
*/
let kFactor3: UInt64 = 3
let kFactor5: UInt64 = 5
func jesusEspejo(from from: UInt64, to: UInt64)  -> UInt64 {
    guard from <= to else { return 0 }
    return (from...to).reduce(0) { ($1 % kFactor3 == 0 || $1 % kFactor5 == 0) ? $0 + $1 : $0}
}


/*:
## Stephan Biemchewski
*/

//
// Sum numbers 1..to
//
func sumFrom1(to: Int) -> Int {
    return ((to+1)*to)/2
}

//
// Sum numbers from..to
//
func sumFrom(from: Int, to: Int) -> Int {
    return sumFrom1(to) - sumFrom1(from-1)
}

//
// Sum multiples between from..to
//
func sumMultiplesOf(multiplesOf: Int, from: Int, to:Int) -> Int {
    let start = (from + multiplesOf - 1) / multiplesOf // round up
    let end = to / multiplesOf
    return sumFrom(start, to: end) * multiplesOf
}

//
// So finally, here we are:
// Sum multiples of 3 and 5 and subtract multiples of 15
// to avoid counting some numbers twice
//
func stephanBiemchewski(from: Int, to: Int) -> Int {
    let sum3 = sumMultiplesOf(3, from: from, to: to)
    let sum5 = sumMultiplesOf(5, from: from, to: to)
    let sum15 = sumMultiplesOf(15, from: from, to: to)
    return sum3 + sum5 - sum15;
}


/*:
## Yonah Forst
*/
func yonahForst(from from: Int, to: Int) -> Int {
    let factors = (from...to).filter { $0 % 3 == 0 || $0 % 5 == 0 }
    return factors.reduce(0, combine:+)
}


/*:
## Francisco Costa
*/
func franciscoCosta(range: Range<Int>) -> Int {
    return range.filter{$0%3==0||$0%5==0}.reduce(0){$0+$1}
}


/*:
## Results
*/
func executionTimeInterval(block: () -> ()) -> CFTimeInterval {
    let start = NSDate(); // <<<<<<<<<< Start time
    block();
    let end = NSDate();   // <<<<<<<<<<   end time
    let timeInterval: Double = end.timeIntervalSinceDate(start);
    print(timeInterval)
    return timeInterval
}

executionTimeInterval{jesusEspejo(from: 1000, to: 0)}
executionTimeInterval{stephanBiemchewski(0, to:1000)}
executionTimeInterval{yonahForst(from: 0, to: 1000)}
executionTimeInterval{franciscoCosta(0..<1000)}


