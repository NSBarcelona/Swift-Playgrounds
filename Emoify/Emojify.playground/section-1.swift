// Write a Swift function that returns an array of the emojis contained in a given  string.

// - It should be one single function
// - It should accept a single string parameter
// - It should return an array of emojis, where each emoji only appears once.

// Extra points will be given for the smartest, cleanest, fastest-executing and  most original responses."


import UIKit

// Cristian Grau
func emojifyChristian(string: String) -> [String] {
    var emojis: [String] = []
    
    for var i = 0; i < countElements(string); i++ {
        var currentString = string.substringWithRange(Range<String.Index>(start: advance(string.startIndex, i), end: advance(advance(string.startIndex, i), 1)))
        if (currentString.utf16Count > 1) {
            if (!contains(emojis, currentString)) {
                emojis.append(currentString)
            }
        }
    }
    return emojis
}

// Daferpi
func emojifyDaferpi(value:String) -> [Character] {
    let emojiList = ["😄", "😃", "😀", "😊", "☺️", "😉", "😍", "😘", "😚", "😗", "😙", "😜", "😝", "😛", "😳", "😁", "😔", "😌", "😒", "😞", "😣", "😢", "😂", "😭", "😪", "😥", "😰", "😅", "😓", "😩", "😫", "😨", "😱", "😠", "😡", "😤", "😖", "😆", "😋", "😷", "😎", "😴", "😵", "😲", "😟", "😦", "😧", "😈", "👿", "😮", "😬", "😐", "😕", "😯", "😶", "😇", "😏", "😑", "👲", "👳", "👮", "👷", "💂", "👶", "👦", "👧", "👨", "👩", "👴", "👵", "👱", "👼", "👸", "😺", "😸", "😻", "😽", "😼", "🙀", "😿", "😹", "😾", "👹", "👺", "🙈", "🙉", "🙊", "💀", "👽", "💩", "🔥", "✨", "🌟", "💫", "💥", "💢", "💦", "💧", "💤", "💨", "👂", "👀", "👃", "👅", "👄", "👍", "👎", "👌", "👊", "✊", "✌️", "👋", "✋", "👐", "👆", "👇", "👉", "👈", "🙌", "🙏", "☝️", "👏", "💪", "🚶", "🏃", "💃", "👫", "👪", "👬", "👭", "💏", "💑", "👯", "🙆", "🙅", "💁", "🙋", "💆", "💇", "💅", "👰", "🙎", "🙍", "🙇", "🎩", "👑", "👒", "👟", "👞", "👡", "👠", "👢", "👕", "👔", "👚", "👗", "🎽", "👖", "👘", "👙", "💼", "👜", "👝", "👛", "👓", "🎀", "🌂", "💄", "💛", "💙", "💜", "💚", "❤️", "💔", "💗", "💓", "💕", "💖", "💞", "💘", "💌", "💋", "💍", "💎", "👤", "👥", "💬", "👣", "💭", "🐶", "🐺", "🐱", "🐭", "🐹", "🐰", "🐸", "🐯", "🐨", "🐻", "🐷", "🐽", "🐮", "🐗", "🐵", "🐒", "🐴", "🐑", "🐘", "🐼", "🐧", "🐦", "🐤", "🐥", "🐣", "🐔", "🐍", "🐢", "🐛", "🐝", "🐜", "🐞", "🐌", "🐙", "🐚", "🐠", "🐟", "🐬", "🐳", "🐋", "🐄", "🐏", "🐀", "🐃", "🐅", "🐇", "🐉", "🐎", "🐐", "🐓", "🐕", "🐖", "🐁", "🐂", "🐲", "🐡", "🐊", "🐫", "🐪", "🐆", "🐈", "🐩", "🐾", "💐", "🌸", "🌷", "🍀", "🌹", "🌻", "🌺", "🍁", "🍃", "🍂", "🌿", "🌾", "🍄", "🌵", "🌴", "🌲", "🌳", "🌰", "🌱", "🌼", "🌐", "🌞", "🌝", "🌚", "🌑", "🌒", "🌓", "🌔", "🌕", "🌖", "🌗", "🌘", "🌜", "🌛", "🌙", "🌍", "🌎", "🌏", "🌋", "🌌", "🌠", "⭐️", "☀️", "⛅️", "☁️", "⚡️", "☔️", "❄️", "⛄️", "🌀", "🌁", "🌈", "🌊", "🎍", "💝", "🎎", "🎒", "🎓", "🎏", "🎆", "🎇", "🎐", "🎑", "🎃", "👻", "🎅", "🎄", "🎁", "🎋", "🎉", "🎊", "🎈", "🎌", "🔮", "🎥", "📷", "📹", "📼", "💿", "📀", "💽", "💾", "💻", "📱", "☎️", "📞", "📟", "📠", "📡", "📺", "📻", "🔊", "🔉", "🔈", "🔇", "🔔", "🔕", "📢", "📣", "⏳", "⌛️", "⏰", "⌚️", "🔓", "🔒", "🔏", "🔐", "🔑", "🔎", "💡", "🔦", "🔆", "🔅", "🔌", "🔋", "🔍", "🛁", "🛀", "🚿", "🚽", "🔧", "🔩", "🔨", "🚪", "🚬", "💣", "🔫", "🔪", "💊", "💉", "💰", "💴", "💵", "💷", "💶", "💳", "💸", "📲", "📧", "📥", "📤", "✉️", "📩", "📨", "📯", "📫", "📪", "📬", "📭", "📮", "📦", "📝", "📄", "📃", "📑", "📊", "📈", "📉", "📜", "📋", "📅", "📆", "📇", "📁", "📂", "✂️", "📌", "📎", "✒️", "✏️", "📏", "📐", "📕", "📗", "📘", "📙", "📓", "📔", "📒", "📚", "📖", "🔖", "📛", "🔬", "🔭", "📰", "🎨", "🎬", "🎤", "🎧", "🎼", "🎵", "🎶", "🎹", "🎻", "🎺", "🎷", "🎸", "👾", "🎮", "🃏", "🎴", "🀄️", "🎲", "🎯", "🏈", "🏀", "⚽️", "⚾️", "🎾", "🎱", "🏉", "🎳", "⛳️", "🚵", "🚴", "🏁", "🏇", "🏆", "🎿", "🏂", "🏊", "🏄", "🎣", "☕️", "🍵", "🍶", "🍼", "🍺", "🍻", "🍸", "🍹", "🍷", "🍴", "🍕", "🍔", "🍟", "🍗", "🍖", "🍝", "🍛", "🍤", "🍱", "🍣", "🍥", "🍙", "🍘", "🍚", "🍜", "🍲", "🍢", "🍡", "🍳", "🍞", "🍩", "🍮", "🍦", "🍨", "🍧", "🎂", "🍰", "🍪", "🍫", "🍬", "🍭", "🍯", "🍎", "🍏", "🍊", "🍋", "🍒", "🍇", "🍉", "🍓", "🍑", "🍈", "🍌", "🍐", "🍍", "🍠", "🍆", "🍅", "🌽", "🏠", "🏡", "🏫", "🏢", "🏣", "🏥", "🏦", "🏪", "🏩", "🏨", "💒", "⛪️", "🏬", "🏤", "🌇", "🌆", "🏯", "🏰", "⛺️", "🏭", "🗼", "🗾", "🗻", "🌄", "🌅", "🌃", "🗽", "🌉", "🎠", "🎡", "⛲️", "🎢", "🚢", "⛵️", "🚤", "🚣", "⚓️", "🚀", "✈️", "💺", "🚁", "🚂", "🚊", "🚉", "🚞", "🚆", "🚄", "🚅", "🚈", "🚇", "🚝", "🚋", "🚃", "🚎", "🚌", "🚍", "🚙", "🚘", "🚗", "🚕", "🚖", "🚛", "🚚", "🚨", "🚓", "🚔", "🚒", "🚑", "🚐", "🚲", "🚡", "🚟", "🚠", "🚜", "💈", "🚏", "🎫", "🚦", "🚥", "⚠️", "🚧", "🔰", "⛽️", "🏮", "🎰", "♨️", "🗿", "🎪", "🎭", "📍", "🚩", "🇯🇵", "🇰🇷", "🇩🇪", "🇨🇳", "🇺🇸", "🇫🇷", "🇪🇸", "🇮🇹", "🇷🇺", "🇬🇧", "1⃣", "2⃣", "3⃣", "4⃣", "5⃣", "6⃣", "7⃣", "8⃣", "9⃣", "0⃣", "1️⃣", "2️⃣", "3️⃣", "4️⃣", "5️⃣", "6️⃣", "7️⃣", "8️⃣", "9️⃣", "0️⃣", "🔟", "🔢", "#️⃣", "🔣", "⬆️", "⬇️", "⬅️", "➡️", "🔠", "🔡", "🔤", "↗️", "↖️", "↘️", "↙️", "↔️", "↕️", "🔄", "◀️", "▶️", "🔼", "🔽", "↩️", "↪️", "ℹ️", "⏪", "⏩", "⏫", "⏬", "⤵️", "⤴️", "🆗", "🔀", "🔁", "🔂", "🆕", "🆙", "🆒", "🆓", "🆖", "📶", "🎦", "🈁", "🈯️", "🈳", "🈵", "🈴", "🈲", "🉐", "🈹", "🈺", "🈶", "🈚️", "🚻", "🚹", "🚺", "🚼", "🚾", "🚰", "🚮", "🅿️", "♿️", "🚭", "🈷", "🈸", "🈂", "Ⓜ️", "🛂", "🛄", "🛅", "🛃", "🉑", "㊙️", "㊗️", "🆑", "🆘", "🆔", "🚫", "🔞", "📵", "🚯", "🚱", "🚳", "🚷", "🚸", "⛔️", "✳️", "❇️", "❎", "✅", "✴️", "💟", "🆚", "📳", "📴", "🅰", "🅱", "🆎", "🅾", "💠", "➿", "♻️", "♈️", "♉️", "♊️", "♋️", "♌️", "♍️", "♎️", "♏️", "♐️", "♑️", "♒️", "♓️", "⛎", "🔯", "🏧", "💹", "💲", "💱", "©", "®", "™", "❌", "‼️", "⁉️", "❗️", "❓", "❕", "❔", "⭕️", "🔝", "🔚", "🔙", "🔛", "🔜", "🔃", "🕛", "🕧", "🕐", "🕜", "🕑", "🕝", "🕒", "🕞", "🕓", "🕟", "🕔", "🕠", "🕕", "🕖", "🕗", "🕘", "🕙", "🕚", "🕡", "🕢", "🕣", "🕤", "🕥", "🕦", "✖️", "➕", "➖", "➗", "♠️", "♥️", "♣️", "♦️", "💮", "💯", "✔️", "☑️", "🔘", "🔗", "➰", "〰", "〽️", "🔱", "◼️", "◻️", "◾️", "◽️", "▪️", "▫️", "🔺", "🔲", "🔳", "⚫️", "⚪", "🔴", "🔵", "🔻", "⬜️", "⬛️", "🔶", "🔷", "🔸", "🔹"]
    var emojisInStringList = [Character]()
    for charString in value {
        if (contains(emojiList, String(charString)) == true) {
            if (contains(emojisInStringList, charString) == false){
                emojisInStringList.append(charString)
            }
        }
    }
    return emojisInStringList
}

// Miguel Cabeça

func emojifyMiguel(lake : String) -> Array<String> {
    return NSSet(array: Array(lake).map{String($0)}.filter{switch Array($0.unicodeScalars).first!.value { case 0x1F1E6...0x1F1FF, 0x1F300...0x1F5FF, 0x1F600...0x1F64F, 0x1F680...0x1F6FF, 0x2600...0x26FF, 0x2700...0x27BF: return true default: return false }}).allObjects as Array<String>
}

// Juan José García Villaescusa
func emojifyJuan(string: String) -> [Character] {
    // return array, initailly empty
    var selection = [Character]()
    // loops through every char in the string
    for character in string {
        // finds out if the char gets two 16 bits words (is emoji)
        let isEmoji = String(character).utf16Count == 2
        // finds out if the char is aleady included in the selection
        let containsChar = contains(selection, character)
        // if is not included and is an emoji character, adds the character to the array
        if !containsChar && isEmoji {
            selection.append(character)
        }
    }
    // returns array
    return selection
}



// Lluis Gerard
func emojifyLluis(string: String) -> Array<Character> {
    var array : Array<Character> = []
    var previousCharacter : Character? = nil
    // Counts each emoji as 1 character and SORTED :)
    for unit in sorted(string) {
        // Emojis have 2 Unicode characters in UTF16
        // And just first time the character appears (because it's sorted)
        if String(unit).utf16Count == 2 && previousCharacter != unit {
            if (previousCharacter != unit) {
                array.append(unit)
            }
            previousCharacter = unit
        }
    }
    
    return array
}




let testString = "NSBarcelona🏂🏂🏂es🐊🐶🐊una🍔comunidad🇪🇸increíble💻of📱D📱E📱V📱E📱L📱O📱P📱E📱R📱S📱巴萨🍣バルセロナ🍔🍟🍔🍟🍔"

//Best Answer
emojifyChristian(testString)

//Correct answer, but requires declaration of all emojis to work
emojifyDaferpi(testString)

//Correct answer, array is not ordered
emojifyMiguel(testString)

//Good answers, but fails to catch Spanish flag emoji
emojifyJuan(testString)

//Also fail to catch Spanish flat emoji, and return order incorrect
emojifyLluis(testString)
