import SwiftUI

struct EmojiView: View {
    var emoji: String
    init(emoji: String) {
        self.emoji = emoji
    }
    var body: some View {
        Text(emoji)
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    struct CheckBoxViewHolder: View {
        var body: some View {
            EmojiView(emoji: "👋🏼")
        }
    }

    static var previews: some View {
        CheckBoxViewHolder()
    }
}
