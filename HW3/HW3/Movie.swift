//
//  Movie.swift
//  HW3
//
//  Created by 張哲瑋 on 2021/10/20.
//

import Foundation
import SwiftUI

struct Movie: Identifiable{
    let id = UUID()
    let name: String
    let videoURL: String
    let picURL: String
    let description: String
    let videoYTURL: String
}

extension Movie {
    static let tenet = Movie(name: "TENET 天能", videoURL: "https://movietrailers.apple.com/movies/wb/tenet/tenet-trailer-2_h480p.mov", picURL: "https://upload.wikimedia.org/wikipedia/zh/f/f9/Tenet_2020_poster.jpg", description:
"""
《TENET天能》（英語：Tenet）是一部於2020年上映英國與美國合拍的科幻動作驚悚片，由克里斯多福·諾蘭編劇和執導。主演包括約翰·大衛·華盛頓、羅伯·派汀森、伊莉莎白·戴比基、蒂普·卡柏迪亞、米高·肯恩和肯尼斯·布萊納。
《TENET天能》由華納兄弟定於2020年8月26日開始先在海外市場上映，之後於2020年9月3日在美國上映。
""", videoYTURL: "")
    static let dunkirk = Movie(name: "Dunkirk 敦克爾克大行動", videoURL: "http://movietrailers.apple.com/movies/wb/dunkirk/dunkirk-trailer-3_h480p.mov", picURL: "https://upload.wikimedia.org/wikipedia/zh/8/86/Dunkirk_2017_Poster.jpg", description:
"""
《敦克爾克大行動》（英語：Dunkirk）是一部2017年由英國、法國、美國及荷蘭合拍的驚悚戰爭電影[4][nb 1]，由克里斯多福·諾蘭執導和編劇，並與艾瑪·湯瑪斯共同監製。主演包括菲昂·懷海德、湯姆·格林-卡尼、傑克·洛登、湯姆·哈迪、肯尼斯·布萊納、阿紐林·巴納德、哈利·斯泰爾和席尼·墨菲。故事背景設定為第二次世界大戰，主要敘述敦克爾克戰役。
諾蘭在撰寫故事時，是以空中、陸地和海洋三個角度來組成敘事。此外，諾蘭還努力透過細節來營造懸念，因為劇本極少有對白。拍攝於2016年5月23日在法國的敦克爾克進行，攝影師霍伊泰·凡·霍伊泰馬以IMAX70毫米和65毫米的大格式電影膠片來拍攝。
《敦克爾克大行動》由華納兄弟負責發行，並定於2017年7月21日在美國上映[2]。電影上映後獲得了一致好評，其敘事手法、演員的表現、配樂都深受讚譽。
""", videoYTURL: "")
    static let interstellar = Movie(name: "Interstellar 星際效應", videoURL: "http://movietrailers.apple.com/movies/paramount/interstellar/interstellar-tlr4_h480p.mov", picURL: "https://upload.wikimedia.org/wikipedia/zh/b/bc/Interstellar_film_poster.jpg", description: """
             這是一個處於未來的時代，在這時代，人們因為大自然的反撲。有一種叫做枯死病的病毒散播在空氣中，導致許多作物逐漸枯死，甚至是無法繼續在地球上種植。
             在這個大面積饑荒的時代，科技已然不是人類追求的第一了，明顯地，為了活下去，人類只能無奈地種植所剩不幾的適應這惡劣地球的食物。
             於是，主角尋找適合人類移民的星球，踏上了拯救人類的旅程。
""", videoYTURL: "")
    static let inception = Movie(name: "Inception 全面啟動", videoURL: "http://trailers.apple.com/movies/wb/inception/inception-tlr1_h480p.mov", picURL: "https://upload.wikimedia.org/wikipedia/zh/7/7f/Inception_ver3.jpg", description: """
《全面啟動》（英語：Inception，中國大陸譯《盜夢空間》，香港譯《潛行兇間》）是一部於2010年上映的美國科幻動作驚悚片，由美國華納兄弟發行，克里斯多福·諾蘭身兼編劇和導演，由李奧納多·狄卡皮歐、席尼·墨菲、渡邊謙、瑪莉詠·柯蒂亞、喬瑟夫·高登-拉維特、湯姆·哈迪、艾倫·佩姬以及米高·肯恩等主演。於2010年7月16日起在全美上映，同期分為普通版及IMAX版本上映。
""", videoYTURL: "")
    static let darkKnightRise = Movie(name: "The Dark Knight Rises 黑暗騎士：黎明昇起", videoURL: "http://movietrailers.apple.com/movies/wb/thedarkknightrises/darkknightrises-tlr4_h480p.mov", picURL: "https://upload.wikimedia.org/wikipedia/zh/8/8f/TheDarkKnightRise.png", description: """
背景設定於上部《黑暗騎士》的八年後，新敵人班恩的無情虛假革命迫使隱居的布魯斯·韋恩復出成為蝙蝠俠，並從核危機之中拯救高譚市。劇情靈感來源自著名蝙蝠俠漫畫《蝙蝠俠：騎士隕落》、《蝙蝠俠：黑暗騎士歸來》和《蝙蝠俠：無人地帶》。導演克里斯多福·諾蘭最初對電影蝙蝠俠第三部的發展有所猶豫，由於前作《黑暗騎士》獲得的高評價，諾蘭擔心三部曲可能無法超越二部曲的優異表現，但最終同意製作。拍攝地點包含焦特布爾、倫敦、諾丁漢、格拉斯哥、洛杉磯、紐約市、紐華克及匹茲堡。諾蘭使用IMAX 70毫米膠片攝影機拍攝多數場景，包含電影的前六分鐘，以強化畫面的品質。
""", videoYTURL: "")
    static let darkKnight = Movie(name: "The Dark Knight 黑暗騎士", videoURL: "http://trailers.apple.com/movies/wb/the_dark_knight/the_dark_knight-tlr1_h480p.mov", picURL: "https://upload.wikimedia.org/wikipedia/zh/4/40/Thedarkknight.jpg", description: """
電影中，布魯斯·韋恩／蝙蝠俠（貝爾飾演）、詹姆斯·高登（歐德曼飾演）與哈維·丹特（艾克哈特飾演）聯手打擊高譚市的黑幫，但其行動被高智商罪犯小丑（萊傑飾演）所破壞，後者企圖削弱蝙蝠俠的影響力，並讓高譚市陷入混亂。導演對本片的基本概念，分別來自小丑在1940年首次登場的漫畫章節，另外包含著名漫畫《蝙蝠俠：致命玩笑》及《蝙蝠俠：漫長的萬聖節》中的故事。
""", videoYTURL: "")
    static let darkKnightBegin = Movie(name: "Batman Begins 蝙蝠俠：開戰時刻", videoURL: "", picURL: "https://upload.wikimedia.org/wikipedia/zh/e/ef/Batman_begins_poster.jpg", description: """
故事主要講述布魯斯·韋恩所經歷的蝙蝠恐懼、目睹父母被殺、以及一步一步成為蝙蝠俠開始的故事，並阻止邪惡反派忍者大師和稻草人試圖摧毀城市的陰謀。當中部分劇情參考了許多蝙蝠俠著名漫畫：《倒地不起的人》、《蝙蝠俠：漫長的萬聖節》、《蝙蝠俠：元年》；其曾經改編過動畫電影。
""", videoYTURL: "https://youtu.be/mV9v7SpFL8g")
    static let thePrestige = Movie(name: "The Prestige 頂尖對決", videoURL: "http://trailers.apple.com/movies/touchstone/the_prestige/the_prestige_h480p.mov", picURL: "https://vbmspic.video.friday.tw/MOVIE/4708/4708_1563734_M.jpg", description: """
電影由休·傑克曼與克里斯汀·貝爾分別主演勞勃與艾佛，大衛·鮑伊飾演尼古拉·特斯拉，米高·肯恩、史嘉蕾·喬韓森、派波兒·普拉寶、安迪·瑟克斯與麗貝卡·豪爾也主演本片。諾蘭和貝爾、肯恩也是繼《蝙蝠俠：開戰時刻》後再次合作，也是與攝影師瓦利·菲斯特、美術指導納森·克羅利、配樂作曲家大衛·朱蘭以及剪輯者再度聯手。
普利斯特的書信體小說由克里斯多夫·諾蘭和他的弟弟強納森·諾蘭改編成電影劇本，以強納森獨特的非線性敘事結構改編搬上銀幕。電影於2006年10月20日發行，得到極高的票房，並獲得奧斯卡金像獎最佳攝影與最佳美術指導提名
""", videoYTURL: "https://youtu.be/RLtaA9fFNXU")
    static let insomnia = Movie(name: "Insomnia 針鋒相對", videoURL: "", picURL: "https://image.enjoymovie.net/nl9qujfoYnIZc9Bld6Kp2s4O5rA=/640x869/smart/core/p/K1ABMvQN3j.jpg", description: """
兩名洛杉磯警探杜馬和艾克哈特奉派到阿拉斯加協助調查一宗17歲少女的謀殺案，在一次引誘真兇的圍捕行動中，杜馬失手誤殺了艾克哈特，這個意外使得他從此被失眠纏身，再加上適逢當地夏天的極晝，讓他失去了以往的穩健辦案的風格和對案情的敏銳度。然而雪上加霜的是，謀殺案的嫌犯華特以此事威脅杜馬和自己合作脫罪，而當地女警艾莉也發現杜馬有些不對勁。面對艾莉質疑的眼光和華特陰險狡獪的嘴臉，杜馬內心的正義感油然而生，他決定挺身而出和華特攤牌……
""", videoYTURL: "https://youtu.be/emIHzg4VH8A")
    static let memento = Movie(name: "Memento 記憶拼圖", videoURL: "", picURL: "https://play-lh.googleusercontent.com/_iJ7ksJG_Grcne6o1X7TFwLwC0_ntIXHkCzXl2zPMqMV6bGmgHwj9kASAkb6oUPASio", description: """
雷納·薛爾比，一名保險公司理賠部的傑出稽查員，常常能揪出詐保案件，與嬌妻過著平淡而幸福的生活，在普通的一個夜晚，他發現嬌妻被兩名歹徒姦殺，雖然其中一名歹徒當場死於薛爾比槍下，但另一名歹徒痛毆薛爾比頭部後逃逸無蹤，導致薛爾比發生了順進性失憶症，警方給的破案報告中，也有十二頁被不明人士撕毀，薛爾比只掌握了兇手名為「John G」，他因為記憶力減弱，腦海中每次只能留下數分鐘的回憶，為了要報殺妻之仇，殺死逍遙法外的「John G」，薛爾比扮演起了偵探，用拍立得照片、字條與刺青，時時刻刻記下「John G」的線索，過程中薛爾比也遇到了兩位幫忙緝凶的好朋友，分別是女酒保娜塔麗與形跡可疑的泰迪，但此時薛爾比卻有一種直覺，好友似乎也與他愛妻的命案有關
""", videoYTURL: "https://youtu.be/CVxC6d_sIoo")
}
