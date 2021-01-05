//
//  NewArticleViewController.swift
//  DiceToDive
//
//  Created by MM on 05/01/2021.
//  Copyright © 2021 MM. All rights reserved.
//

import UIKit

class NewArticleViewController: UIViewController {
    
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var imgThumbnail: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblText: UILabel!
    
    var index = 0
    
    var images: [UIImage] = [
        #imageLiteral(resourceName: "img_lifestyle1"), #imageLiteral(resourceName: "img_lifestyle2"), #imageLiteral(resourceName: "img_lifestyle4"), #imageLiteral(resourceName: "img_lifestyle3")
    ]
    
    var titles: [String] = [
        "\"Tụi mình thôi nha, có người thương em nhiều hơn anh.\"",
        "Bóc Term: Dry January là gì mà Gen Z tích cực ủng hộ?",
        "\"Hơi chậm, nhưng đường còn dài, và em còn trẻ anh ơi.\"",
        "Ai cũng thường có một thần tượng cho riêng mình."
    ]
    
    var texts: [String] = [
        """
    Ở thành phố Paro, Bhutan. Ngày 1.

    - Người Bhutan khi lạy, bọn anh không chỉ chắp tay lên ngực với ý nghĩa kính cẩn, mà nó còn là hình thức thanh tẩy nữa. Đầu tiên là để 2 tay trên đỉnh đầu - tượng trưng cho Thân Thể, sau đó là đến miệng - tượng trưng cho Lời Nói và cuối cùng mới tới ngực - tượng trưng cho Suy Nghĩ.

    Đây là 3 nơi, trong niềm tin của người Bhutan theo đạo Phật, đại diện cho những tính xấu của loài người, là ba cái van cần phải mở, phải xả hết ra, mới có chỗ trống để đón nhận những suy nghĩ, năng lượng tích cực khi đứng trước các đấng Vĩ Đại.

    - Vậy điều xấu xa nhất anh từng làm là gì?

    - Để coi…

    Khi anh chia tay với bạn gái gần nhất của mình, lúc đó anh cũng không ngờ là 2 đứa phải xa nhau nữa kia, bởi vì đã yêu xa ngay từ đầu rồi mà.

    Nhưng anh đoán, những kilomet núi đồi giữa 2 đứa, những cuộc gọi ngắt quãng do sóng điện thoại chập chừng mỗi đêm trên dãy Himalayas. Hay những mộng tưởng xa vời của anh khi nghĩ rằng, mình chỉ cần bình tĩnh mà yêu, thì mọi chuyện sẽ đâu vào đấy...

    Nhưng không, tất cả những điều đó đã khiến cổ chùn bước. Một ngày nọ, cổ gọi anh như thường lệ và nói tụi mình thôi nha, có người thương em nhiều hơn anh.

    Lúc đó anh tức và giận run lên, đến mức không kiểm soát được bản thân. Bằng cách nào đó, anh đã quên toàn bộ những tiêu chuẩn và đạo đức của bản thân mình đặt ra trong suốt hai mươi mấy năm nghe theo Phật, để uống một lúc… 2 chai bia.

    - Hai chai bia???

    - Ừ, những hai chai bia...

    “Tan Chảy” là series thuật lại những câu chuyện tuyệt đẹp về cuộc sống, được thực hiện và đăng tải lần đầu tại It’s Happened to be Vietnam.
    """,
        """
        1. Dry January là gì?

        Dry January /draɪ ˈdʒænjuəri/ (danh từ), hay tháng Một “khô”, là thử thách không bia bọt, rượu chè, các đồ uống có cồn nói chung, vào tháng đầu tiên của năm. Mục đích của người tham gia thường là để giải độc cơ thể sau một mùa lễ hội “ngập ngụa” trong ăn nhậu.

        Dry January còn có cách viết khác là Drynuary.

        2. Nguồn gốc của Dry January?

        Dry January ban đầu là chiến dịch quyên góp từ thiện của tổ chức phi lợi nhuận Alcohol Change, tại Vương Quốc Anh năm 2013. Nguyên nhân xuất phát từ việc lượng tiêu thụ rượu bia ở đây tăng mạnh trong khoảng thời gian một tuần trước Giáng sinh cho đến hết đêm giao thừa.


        3. Vì sao Dry January trở nên phổ biến?

        Sự phổ biến của Dry January tăng dần đều qua các năm, nhưng đặc biệt nổi lên vào năm 2019, và bắt đầu lan rộng sang khắp châu Âu và Bắc Mỹ. Hai nguyên nhân lớn bao gồm:

        Thái độ của người tiêu dùng đối với rượu bia có thay đổi lớn, đặc biệt là Gen Z
        Sự xuất hiện của các loại đồ uống thay thế
        Theo nghiên cứu của Mintel, Gen Z có xu hướng sợ “tụt hậu” (FOMO). Khi thấy bạn bè hoặc thần tượng của mình kiêng hoặc cắt giảm đồ uống có cồn, họ có động lực thúc đẩy để làm điều tương tự. Một số thậm chí còn kéo dài thử thách thêm vài tháng.

        Dù nhiều người chế giễu ý tưởng “rượu mạnh không cồn”, các khoản đầu tư gần đây cho thấy ngành công nghiệp rượu bia đang nhìn nhận vấn đề này một cách nghiêm túc. Thị trường bia không cồn toàn cầu được dự đoán sẽ vượt 25 tỷ USD vào năm 2024.

        Ở nước ta, một số loại bia không cồn cũng đã xuất hiện (Sagota, Steiger, Bavaria, Oettinger...). Tháng 3 năm 2020, Heineken Việt Nam chính thức cho ra mắt loại bia chay Heineken 0.0 với 0.0% độ cồn và chỉ chứa 69 calo trong mỗi lon/chai dung tích 330ml. Khi quy định pháp luật quản lý rượu bia ngày càng nghiêm ngặt, phân khúc còn non trẻ này sẽ là đất diễn cho nhiều thương hiệu bia trong tương lai.



        Với kỷ lục tốc độ tiêu thụ rượu bia đứng top đầu thế giới, năm nay chúng ta có nên tham gia thử thách Dry January cùng 6.5 triệu người Anh?

        4. Dùng Dry January như thế nào?

        Tiếng Anh

        A: Wanna grab a beer tonight?

        B: Oh man. How’s your Drynuary going?

        Tiếng Việt

        A: Tối nay làm vài ve không?

        B: Ủa, tưởng tháng này ông kiêng?

        

        #BócTerm là series bóc tem những từ ngữ mới đang thịnh hành cùng Vietcetera.
        """,
        """
        - Năm ngoái là năm tệ nhứt trong cuộc đời em: Em làm thêm công việc tài xế lái xe, chở khách lên núi gặp sương mù khách chửi một tràng rồi đòi em trả tiền lại. Người yêu sau 5 năm mặn nồng thì bỏ em đòi đi theo thằng bạn học của em, mà để xát thêm muối vô vết thương thì thằng này siêu giàu, xe đi thì phải Ferrari mới chịu, còn nhà thì ở khu biệt thự của Đài Trung này. Trong khi của cải vật chất thì em không có gì quý tại lúc đó em mê chơi quánh bài quánh bạc, thắng được 3000 đô thì thua cũng hết 3000 đô. Thậm chí 26 tuổi mà vẫn còn ở với mẹ, người ngợm lại xấu xí thừa cân. Gần đây thì mới nghe tin con bồ cũ em chuẩn bị cưới thằng kia luôn rồi.

        - Vậy năm nay em còn lại gì?

        - Năm nay, cuối cùng em đã tự lập và dọn được ra ở riêng, nhận nuôi 5 con mèo và quan trọng nhất: biết được mình thích gì.

        Em mê những công việc không bó buộc, được tự do đi đây đi đó và gặp gỡ nhiều người, nghe nhiều câu chuyện khác nhau. Nên giờ em sẽ cố gắng trau dồi thiệt giỏi tiếng Anh rồi ráng xin vào mấy công ty du lịch bự bự ở Đài Loan. Em cũng bỏ luôn cờ bạc nên cũng dành dụm được chút ít tiền để chuẩn bị mua xe hơi riêng, 2 tuần em đi quánh tennis với bạn một lần, thỉnh thoảng nếu rảnh thì qua dắt 4 con chó bên nhà ngoại đi dạo.

        Hơi chậm, nhưng đường còn dài, và em còn trẻ anh ơi.

        “Tan Chảy” là series thuật lại những câu chuyện tuyệt đẹp về cuộc sống, được thực hiện và đăng tải lần đầu tại It’s Happened to be Vietnam.
        """,
        """
        Ai cũng thường có một thần tượng cho riêng mình.

        Từ bé tôi có vài ba thần tượng đặc biệt, như John Lennon, Frederic Chopin, Tuomas Holopainen, Martin Luther King...

        Nhưng một thời gian sau, khi tôi nhận định rằng mình bắt đầu tiến tiếp ở cái tuổi 20, thì tôi mới thấy người tôi thật sự thần tượng là ông cụ nhà mình.

        Mặc dù bố tôi có tật hay nhai lại vào ban đêm, tiếng ngáy qua 20 năm có lẻ vẫn giống như một loài bò cái lắm sữa (trích từ mẹ) và bắn thuốc là liên miên cùng việc 1 năm dùng 1 cái bàn chải đánh răng đầy mùi khói thì ông cụ vẫn là người tôi hâm mộ nhất. Chưa bao giờ phán xét và bắt buộc tôi phải làm gì cả.

        Cuối cùng thì, sau 23 năm tôi sống, tôi dám nhìn nhận đây là một người cha tốt 🙂

        “Tan Chảy” là series thuật lại những câu chuyện tuyệt đẹp về cuộc sống, được thực hiện và đăng tải lần đầu tại It’s Happened to be Vietnam.
        """
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = true
    }
    
    func setupUI() {
        btnBack.layer.cornerRadius = 20
        btnBack.layer.shadowColor = UIColor.black.cgColor
        btnBack.layer.shadowOpacity = 0.2
        btnBack.layer.shadowOffset = CGSize(width: 0, height: 2)
        btnBack.layer.shadowRadius = 10
        
        imgThumbnail.image = images[index]
        lblText.text = texts[index]
        lblTitle.text = titles[index]
    }
    
    @IBAction func btnBackClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
}
