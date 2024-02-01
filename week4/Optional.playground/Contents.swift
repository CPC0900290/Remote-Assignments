import UIKit

/*:
 4. (Advanced) Please complete the following function that prints a pyramid made of asterisks.
 
 For example, here’s what the output of 'printPyramid(layers: 5)' should be:
 ```
     *
    ***
   *****
  *******
 *********
 ```
 */


func printPyramid(layers: Int) {
    
    
    // TODO: print a pyramid
    for i in 1...layers {
        let space = layers - i
        let value = (i * 2) - 1
        for _ in stride(from: 0, to: space, by: 1) {
            print(" ", terminator: "")
        }

        for _ in 1...value {
            print("*", terminator: "")
        }
        print("\n")
    }
    
}
printPyramid(layers: 5)



/*:
 5. (Optional) Do you have any App ideas that you are interested in and want to develop?
  
  List them along with a brief description (2 sentences at most), and no need to consider the availability, required techniques and business models at all.
 */

/*:
 1. 社群軟體：打造自由化個人化的主頁，主軸更多是在個人照片、心情、學習筆記等等的紀錄，類似於過去無名小站的概念。
 2. 新聞瀏覽器：提供各大新聞媒體的統整，並且設置討論板塊。
 */
