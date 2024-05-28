-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 08:15 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `study`
--

-- --------------------------------------------------------

--
-- Table structure for table `baihoc`
--

CREATE TABLE `baihoc` (
  `MaBaiHoc` int(11) NOT NULL,
  `TenBaiHoc` varchar(255) NOT NULL,
  `MoTa` text NOT NULL,
  `DuongDan` text NOT NULL,
  `MaGiaoVien` int(11) NOT NULL,
  `LoaiBaiHoc` int(11) NOT NULL DEFAULT 1,
  `MaTrinhDo` int(11) NOT NULL,
  `TepTin` text DEFAULT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `baihoc`
--

INSERT INTO `baihoc` (`MaBaiHoc`, `TenBaiHoc`, `MoTa`, `DuongDan`, `MaGiaoVien`, `LoaiBaiHoc`, `MaTrinhDo`, `TepTin`, `TrangThai`) VALUES
(1, 'Bài học mới', '<p>ABCDE abcde a</p>', 'bai-hoc-moi', 1, 1, 1, 'http://localhost/Study/uploads/Final_Report_CTRR_2024_(1).docx', 1),
(2, 'Bài học lãnh đạo của đảng CSVN', '<p style=\"text-align:center;\"><span style=\"background-color:white;\"><strong>NHỮNG BÀI HỌC LỚN CỦA ĐẢNG CỘNG SẢN VIỆT NAM TRONG QUÁ TRÌNH LÃNH ĐẠO CÁCH MẠNG</strong></span></p><p style=\"text-align:center;\"><span style=\"background-color:white;\"><strong>Võ Thị Cẩm Tú</strong></span></p><p style=\"text-align:center;\"><span style=\"background-color:white;\"><strong>Phó Trưởng Khoa Lý luận cơ sở</strong></span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đảng Cộng sản Việt Nam do Chủ tịch Hồ Chí Minh sáng lập, lãnh đạo và rèn luyện đã lãnh đạo và đưa cách mạng Việt Nam đi từ thắng lợi này đến thắng lợi khác. </span>Thực tiễn phong phú của cách mạng Việt Nam trong suốt 90 năm qua, Đảng ta đã tích luỹ và đúc rút được nhiều bài học kinh nghiệm&nbsp;lớn: Nắm vững ngọn cờ độc lập dân tộc và chủ nghĩa xã hội; Phát huy sức mạnh của khối đại đoàn kết toàn dân tộc; Kết hợp nội lực với ngoại lực, sức mạnh dân tộc với sức mạnh của thời đại; Sử dụng phương pháp cách mạng phù hợp; Sự lãnh đạo đúng đắn của Đảng là nhân tố hàng đầu quyết định thắng lợi của cách mạng.</p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Thứ nhất, bài học về nắm vững ngọn cờ độc lập dân tộc và chủ nghĩa xã hội.</i></p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Độc lập dân tộc gắn liền với chủ nghĩa xã hội là nội dung chủ đạo, xuyên suốt trong tư tưởng Hồ Chí Minh, là quan điểm nhất quán của Đảng, là vấn đề có tính chiến lược của cách mạng Việt Nam. Trong suốt quá trình lãnh đạo cách mạng từ khi thành lập Đảng đến nay, mục tiêu độc lập dân tộc gắn liền với chủ nghĩa xã hội đã được thực hiện với nội dung, hình thức, bước đi phù hợp với đặc điểm mỗi thời kỳ cách mạng, khơi dậy, phát huy sức mạnh của dân tộc và thời đại, có ý nghĩa quyết định đến thắng lợi to lớn của dân tộc Việt Nam.</p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong giai đoạn cách mạng 1930 – 1945, độc lập dân tộc là nhiệm vụ trọng tâm trước hết, đấu tranh giành độc lập dân tộc là nội dung chủ đạo, được tiến hành theo lập trường của giai cấp vô sản, chủ nghĩa xã hội chưa được đặt ra trực tiếp mà là phương hướng tiến lên. Và để đạt được mục tiêu chủ nghĩa xã hội, trước tiên phải giành độc lập dân tộc. Đặt nhiệm vụ giải phóng dân tộc lên hàng đầu chính là quan điểm đúng đắn, sáng tạo, là yếu tố xuyên suốt và có ý nghĩa quyết định thắng lợi của cách mạng nước ta trong thời kỳ đấu tranh giành chính quyền và đấu tranh giải phóng dân tộc nói chung.</p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong giai đoạn vừa kháng chiến, vừa kiến quốc 1945 – 1954, Đảng ta xác định chiến lược của cách mạng là bảo vệ độc lập dân tộc với tinh thần “Tổ quốc trên hết”, “Dân tộc trên hết”. Đối với nhiệm vụ xây dựng chủ nghĩa xã hội, Đảng chủ trương tiến hành từng bước, sát với tiến trình thực hiện nhiệm vụ chống đế quốc và phục vụ chống đế quốc. Đảng lãnh đạo nhân dân nhanh chóng xây dựng và củng cố chính quyền cách mạng, chống giặc đói, giặc dốt, không ngừng nâng cao nội lực cách mạng, là cơ sở vững chắc cho cuộc đấu tranh chống thù trong, giặc ngoài, bảo vệ chế độ, bảo vệ nền độc lập non trẻ, chuẩn bị kháng chiến.</p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong thời kỳ 1954 – 1975, Đảng chủ trương tiến hành đồng thời hai nhiệm vụ chiến lược cách mạng là cách mạng xã hội chủ nghĩa ở miền Bắc và cách mạng dân tộc dân chủ ở miền Nam.</p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Năm 1975, sau nhiều thập kỷ đấu tranh gian khổ, dân tộc Việt Nam đã giành lại trọn vẹn nền độc lập dân tộc, thống nhất Tổ quốc, mở ra thời kỳ mới trong lịch sử dân tộc, thời kỳ cả nước quá độ lên chủ nghĩa xã hội. Trong bối cảnh mới, những tiềm năng, lợi thế của hai miền đất nước được huy động, tập trung cho sự nghiệp cách mạng xã hội chủ nghĩa. Nhưng cũng không ít nguy cơ ảnh hưởng đến nền độc lập của dân tộc, nguy cơ xâm phạm chủ quyền và toàn vẹn lãnh thổ. Do vậy, Đảng ta xác định phải thực hiện song hành độc lập dân tộc và chủ nghĩa xã hội. Trong đó, độc lập dân tộc, thống nhất Tổ quốc là điều kiện để tiến lên chủ nghĩa xã hội, tăng cường sức mạnh của chủ nghĩa xã hội để củng cố độc lập dân tộc. Xây dựng chủ nghĩa xã hội và bảo vệ Tổ quốc xã hội chủ nghĩa là hai nhiệm vụ chiến lược có quan hệ chặt chẽ với nhau.</p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Như vậy, độc lập dân tộc và chủ nghĩa xã hội luôn được Đảng ta xác định là nhiệm vụ quan trọng trong mọi giai đoạn cách mạng. Trong mỗi giai đoạn, tùy vào đặc điểm, tình hình, Đảng ta có thể chủ trương tập trung thực hiện nhiệm vụ độc lập dân tộc hoặc chủ nghĩa xã hội hoặc song hành cả hai.</p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Hai là, phát huy sức mạnh của khối đại đoàn kết toàn dân tộc trong đấu tranh giành độc lập, xây dựng chủ nghĩa xã hội và bảo vệ Tổ quốc</i>.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thành công nổi bật của Đảng Cộng sản Việt Nam là đề ra Cương lĩnh, đường lối chính trị đúng đắn vì lợi ích của đất nước và dân tộc. Trên cơ sở đường lối đúng đắn mà tập hợp, đoàn kết lực lượng của toàn dân tộc phấn đấu vì mục tiêu chung là độc lập dân tộc và chủ nghĩa xã hội. Đại đoàn kết là nguồn sức mạnh giúp dân tộc Việt Nam vượt qua những khó khăn, thử thách để dựng nước và giữ nước. Đại đoàn kết dân tộc là đường lối chiến lược nhất quán của Đảng Cộng sản Việt Nam xuất phát từ nhận thức ngoài lợi ích của giai cấp, dân tộc và nhân dân, Đảng không có mục đích nào khác. Đại đoàn kết toàn dân tộc dựa trên nền tảng vững chắc là liên minh giữa giai cấp công nhân với giai cấp nông dân và đội ngũ trí thức, đồng thời đoàn kết rộng rãi các giai cấp, tầng lớp khác, đoàn kết 54 dân tộc trên đất nước Việt Nam, đoàn kết các tôn giáo, đoàn kết với cộng đồng người Việt Nam định cư ở nước ngoài.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đại đoàn kết dân tộc dựa trên cơ sở lấy mục tiêu chung làm điểm tương đồng, đồng thời bảo đảm lợi ích riêng của mỗi giai cấp, tầng lớp, bộ phận, cá nhân không trái với lợi ích chung của dân tộc, đất nước. Đảng chú trọng xây dựng các hình thức tổ chức Mặt trận dân tộc thống nhất để tập hợp đoàn kết rộng rãi mọi thành phần, lực lượng trong dân tộc, xã hội, đa dạng hóa các hình thức tổ chức tập hợp quần chúng, nêu cao vai trò các đoàn thể nhân dân, các hội quần chúng, nghề nghiệp. Đường lối và bài học đại đoàn kết dân tộc của Đảng là sự kế thừa và phát triển truyền thống đoàn kết hình thành trong lịch sử dựng nước và giữ nước của dân tộc, truyền thống gắn kết trong các hình thức cộng đồng, gia đình, dòng họ, làng xã đến cộng đồng dân tộc, quốc gia. Đại đoàn kết dân tộc cũng là nối tiếp truyền thống nhân văn, nhân ái, yêu thương đùm bọc lẫn nhau của dân tộc Việt Nam. Sự kết tinh các giá trị cao cả và sâu sắc đó của chiến lược đại đoàn kết dân tộc trở thành một trong những nhân tố quyết định thắng lợi của cách mạng và dân tộc Việt Nam trong thời đại Hồ Chí Minh.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ngay từ khi mới ra đời, Đảng Cộng sản Việt Nam đã nhận thấy động lực cách mạng từ quảng đại quần chúng và xác định nhiệm vụ tổ chức, tập hợp, đoàn kết, coi đây là chiến lược xuyên suốt, nhất quán, là cội nguồn sức mạnh trong mọi thời kỳ cách mạng. Ngay trong Sách lược vắn tắt của Đảng năm 1930 đã ghi rõ: Đảng phải thu phục đại bộ phận và làm cho giai cấp công nhân đóng vai trò lãnh đạo dân chúng, thu phục đại bộ phận và làm cho giai cấp nông dân, đồng thời phải hết sức liên lạc với tiểu tư sản, trí thức, trung nông, Thanh niên, Tân Việt,… để kéo họ đi vào phe vô sản giai cấp. Chính đại đoàn kết dân tộc là nguồn sức mạnh to lớn góp phần làm nên những thắng lợi vẻ vang của dân tộc, đưa đất nước đến bến bờ độc lập. Trong quá trình đổi mới, xây dựng đất nước “đàng hoàng hơn, to đẹp hơn” theo con đường chủ nghĩa xã hội, đoàn kết vẫn tiếp tục là sợi chỉ đỏ xuyên suốt, luôn được nhấn mạnh qua các kỳ đại hội. Gần đây nhất, Đại hội đại biểu toàn quốc lần thứ XII khẳng định: “Đại đoàn kết dân tộc là đường lối chiến lược của cách mạng Việt Nam, là động lực và nguồn lực to lớn trong xây dựng và bảo vệ Tổ quốc. Tăng cường khối đại đoàn kết toàn dân tộc trên nền tảng liên minh giai cấp công nhân với giai cấp nông dân và đội ngũ trí thức do Đảng lãnh đạo”<sup>1</sup>.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\"><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ba là, kết hợp nội lực với ngoại lực, sức mạnh dân tộc với sức mạnh của thời đại</i>.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cương lĩnh, đường lối của Đảng ngay từ đầu đã tổ chức và động viên sức mạnh của dân tộc, coi cách mạng Việt Nam là bộ phận của cách mạng thế giới, tranh thủ sự ủng hộ của cách mạng thế giới. Trong&nbsp;<i>Đường cách mệnh</i>&nbsp;(1927) lãnh tụ Nguyễn Ái Quốc - Hồ Chí Minh đã nêu rõ: \"Muốn người ta giúp cho, thì trước mình phải tự giúp lấy mình đã\". Trong cao trào giải phóng dân tộc, Hồ Chí Minh đã kêu gọi toàn thể quốc dân hãy đứng lên&nbsp;đem sức ta mà tự giải phóng cho ta. Nhờ phát huy sức mạnh, ý chí tự lực tự cường của cả dân tộc, nên đã chớp được thời cơ thuận lợi dẫn tới thắng lợi của Cách mạng Tháng Tám năm 1945. Trong các cuộc kháng chiến lâu dài giành độc lập, thống nhất hoàn toàn, Đảng đã triệt để phát triển sức mạnh của dân tộc, nêu cao tinh thần độc lập, tự chủ, sáng tạo, đồng thời tranh thủ tối đa sự giúp đỡ, ủng hộ quốc tế, tạo nên sức mạnh tổng hợp để giành thắng lợi.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Công cuộc đổi mới diễn ra trong bối cảnh chủ nghĩa xã hội trên thế giới lâm vào khủng hoảng và dẫn tới sự sụp đổ của mô hình chủ nghĩa xã hội ở các nước Đông Âu và Liên Xô. Điều đó đòi hỏi Đảng Cộng sản Việt Nam nêu cao tinh thần độc lập tự chủ, tự lực, tự cường, nâng cao bản lĩnh chính trị để đứng vững trước khó khăn, thử thách và kiên định con đường xây dựng chủ nghĩa xã hội, động viên cao độ nội lực. Mặt khác, Đảng Cộng sản Việt Nam tăng cường củng cố sự đoàn kết các nước xã hội chủ nghĩa còn lại, kiên định lập trường của chủ nghĩa quốc tế trong sáng. Đề ra và thực hiện đường lối đối ngoại độc lập tự chủ, đa phương hóa, đa dạng hóa các quan hệ quốc tế, Việt Nam là bạn, đối tác tin cậy của các nước, thành viên có trách nhiệm của cộng đồng quốc tế. Đảng và Nhà nước cũng tranh thủ tối đa những vấn đề mới của thời đại: Hội nhập kinh tế quốc tế, toàn cầu hóa, thành quả của cách mạng khoa học, công nghệ, kinh nghiệm quản lí của các nước tiên tiến, những vấn đề về kinh tế tri thức… Nội lực và sức mạnh dân tộc bao giờ cũng có ý nghĩa quyết định, song sức mạnh đó được tăng cường khi có sự kết hợp đúng đắn với ngoại lực và sức mạnh của thời đại.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Bốn là, sử dụng phương pháp cách mạng phù hợp với nhiệm vụ cách mạng và điều kiện cụ thể của Đảng Cộng sản Việt Nam.</i></span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phương pháp cách mạng vừa là khoa học lãnh đạo vừa là nghệ thuật lãnh đạo trong việc tổ chức, xây dựng các lực lượng và sử dụng các hình thức đấu tranh. Thực tế lịch sử phong trào cách mạng của thế giới và Việt Nam cho thấy phương pháp cách mạng là yếu tố quan trọng làm nên thắng lợi. Đồng chí Trường Chinh viết:&nbsp;<i>“Lịch sử phát triển cách mạng thế giới đã cho thấy một phong trào nào đó có khi bế tắc, không có lối ra, thậm chí thất bại không phải vì không có mục tiêu và phương hướng rõ ràng, cũng không phải không tổ chức được lực lượng cách mạng, mà chủ yếu vì thiếu phương pháp cách mạng và hình thức đấu tranh thích hợp”<sup>2</sup>.</i></span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong tiến trình lịch sử dân tộc, Đảng ta đã thực hiện phương pháp cách mạng đúng đắn và sáng tạo. Phương pháp cách mạng luôn được thực hiện đúng quy luật, thuận lòng dân và phù hợp thời đại. Trong thời kỳ cách mạng dân tộc dân chủ, Đảng Cộng sản Việt Nam đã sử dụng đúng đắn, linh hoạt một số phương pháp cách mạng chủ yếu như sau: <i>phương pháp sử dụng bạo lực cách mạng của quần chúng đấu tranh chống bạo lực phản cách mạng; phương pháp thắng từng bước; phương pháp phát huy sức mạnh tổng hợp. Trong cách mạng xã hội chủ nghĩa, Đảng ta lựa chọn các phương pháp: Phát huy vai trò, sức mạnh của quần chúng nhân dân; Tôn trọng quy luật khách quan, xuất phát từ thực tiễn, đổi mới toàn diện, đồng bộ, có bước đi và hình thức thích hợp; Tranh thủ thời cơ, đẩy lùi nguy cơ, thách thức trong xây dựng chủ nghĩa xã hội; Phát huy sức mạnh tổng hợp.</i></span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\"><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Năm là, sự lãnh đạo đúng đắn của Đảng là nhân tố hàng đầu quyết định thắng lợi của cách mạng Việt Nam.</i></span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đến nay, tròn 90 năm Đảng được hợp nhất, thành một tổ chức Đảng lãnh đạo cách mạng. Ngày 3/2/1930, Hội nghị hợp nhất các tổ chức cộng sản họp ở bán đảo Cửu Long, thuộc Hồng Kông (Trung Quốc) đã quyết định thống nhất các tổ chức cộng sản ở nước ta thành một Đảng duy nhất, lấy tên là Đảng Cộng sản Việt Nam. Đây là một bước ngoặt lịch sử trọng đại, chấm dứt cuộc khủng hoảng kéo dài về tổ chức và đường lối của cách mạng Việt Nam.</span></p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Từ đó đến nay, Đảng đã lãnh đạo nhân dân ta đạt được nhiều thắng lợi quan trọng. <span style=\"background-color:white;\">Đó là thắng lợi của cuộc Cách mạng tháng Tám năm 1945 xóa bỏ chế độ thuộc địa nửa phong kiến, thành lập Nhà nước Việt Nam dân chủ cộng hòa, mở ra kỉ nguyên mới của lịch sử dân tộc, kỉ nguyên độc lập dân tộc gắn liền với chủ nghĩa xã hội. Ngày 2/9/1945, tại quảng trường Ba Đình lịch sử, Chủ tịch Hồ Chí Minh đã đọc bản&nbsp;<i>Tuyên ngôn độc lập</i>&nbsp;khai sinh ra nước Việt Nam Dân chủ Cộng hòa nay là nước Cộng hòa xã hội chủ nghĩa Việt Nam - Nhà nước công nông đầu tiên ở Đông Nam châu Á. Là thắng lợi của các cuộc kháng chiến oanh liệt chống đế quốc, thực dân giành độc lập hoàn toàn, đưa cả nước tiến lên chủ nghĩa xã hội. Là thắng lợi của công cuộc đổi mới, công nghiệp hóa, hiện đại hóa đất nước, không ngừng cải thiện đời sống của nhân dân, nâng cao vị thế của đất nước, làm sáng tỏ nhận thức về chủ nghĩa xã hội và con đường đi lên chủ nghĩa xã hội ở Việt Nam.</span> Đến nay, Việt Nam đã trở thành một quốc gia có quy mô dân số gần 100 triệu người với mức thu nhập bình quân 2.800 USD/người; đã tham gia hầu hết các tổ chức quốc tế, trở thành một thành viên tích cực, có trách nhiệm trong các hoạt động của cộng đồng quốc tế.</p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Quả thật, sự ra đời của Đảng Cộng sản Việt Nam năm 1930 là một bước ngoặt lịch sử của cách mạng Việt Nam và thực tiễn cách mạng 90 năm qua đã chứng minh sự lãnh đạo đúng đắn của Đảng là nhân tố hàng đầu quyết định thắng lợi của cách mạng Việt Nam.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong giai đoạn cách mạng hiện nay, những bài học kinh nghiệm trên đây vẫn có ý nghĩa quan trọng quyết định sự thắng lợi của công cuộc xây dựng chủ nghĩa xã hội. Nhận thức, vận dụng đúng đắn những bài học kinh nghiệm này vào quá trình phát triển đất nước vẫn là yêu cầu hiện nay.</span></p>', 'bai-hoc-lanh-dao-cua-dang-csvn', 1, 3, 5, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `baithi`
--

CREATE TABLE `baithi` (
  `MaBaiThi` int(11) NOT NULL,
  `MaTrinhDo` int(11) NOT NULL,
  `LoaiBaiThi` int(11) NOT NULL DEFAULT 1,
  `MucDo` int(11) NOT NULL DEFAULT 1,
  `SoCauHoi` int(11) NOT NULL DEFAULT 1,
  `ThoiGianLam` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `baithi`
--

INSERT INTO `baithi` (`MaBaiThi`, `MaTrinhDo`, `LoaiBaiThi`, `MucDo`, `SoCauHoi`, `ThoiGianLam`, `TrangThai`) VALUES
(1, 1, 1, 5, 2, 1, 1),
(2, 5, 2, 5, 5, 1, 1),
(3, 2, 2, 5, 2, 60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cauhoi`
--

CREATE TABLE `cauhoi` (
  `MaCauHoi` int(11) NOT NULL,
  `MaBaiThi` int(11) NOT NULL,
  `TenCauHoi` text NOT NULL,
  `A` text DEFAULT NULL,
  `B` text DEFAULT NULL,
  `C` text DEFAULT NULL,
  `D` text DEFAULT NULL,
  `DapAnDung` varchar(1) DEFAULT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cauhoi`
--

INSERT INTO `cauhoi` (`MaCauHoi`, `MaBaiThi`, `TenCauHoi`, `A`, `B`, `C`, `D`, `DapAnDung`, `TrangThai`) VALUES
(1, 3, 'Câu hỏi 1 đây 12222', NULL, NULL, NULL, NULL, NULL, 1),
(2, 3, 'Câu hỏi 2 đây  11111333', NULL, NULL, NULL, NULL, NULL, 1),
(5, 1, 'Câu hỏi 1 đây2', 'DGFFD', 'DFGSDFS', 'ẺTRETER', 'D1', 'B', 1),
(6, 1, 'Câu hỏi 2 đây 111', 'TRE', 'ƯER', 'T', '54', 'C', 1),
(7, 2, 'ABCDE', NULL, NULL, NULL, NULL, NULL, 1),
(8, 2, 'ABCDE', NULL, NULL, NULL, NULL, NULL, 1),
(9, 2, 'ABCDE', NULL, NULL, NULL, NULL, NULL, 1),
(10, 2, 'ABCDE', NULL, NULL, NULL, NULL, NULL, 1),
(11, 2, 'ABCDE', NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `giaovien`
--

CREATE TABLE `giaovien` (
  `MaGiaoVien` int(11) NOT NULL,
  `TenGiaoVien` varchar(255) NOT NULL,
  `SoDienThoai` varchar(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `TaiKhoan` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `giaovien`
--

INSERT INTO `giaovien` (`MaGiaoVien`, `TenGiaoVien`, `SoDienThoai`, `Email`, `TaiKhoan`, `MatKhau`, `TrangThai`) VALUES
(1, 'Nguyễn Văn A', '0999888999', 'nguyenvana@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hocsinh`
--

CREATE TABLE `hocsinh` (
  `MaHocSinh` int(11) NOT NULL,
  `TenHocSinh` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` int(11) NOT NULL,
  `TenTruong` varchar(255) NOT NULL,
  `TaiKhoan` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hocsinh`
--

INSERT INTO `hocsinh` (`MaHocSinh`, `TenHocSinh`, `NgaySinh`, `GioiTinh`, `TenTruong`, `TaiKhoan`, `MatKhau`, `TrangThai`) VALUES
(1, 'Nguyễn Văn A', '2024-05-27', 1, 'THPT Đoàn Thị Điểm', 'nguyenvana', '20ca70c7c8f494c7bd1d54ad23d40cde', 1),
(2, 'Chu Minh Nam', '2000-05-29', 1, 'Bách Khoa Hà Nội', 'chuminhnam', '206dcce3f82cf8981d316e7900dc8e06', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ketqua`
--

CREATE TABLE `ketqua` (
  `MaKetQua` int(11) NOT NULL,
  `MaHocSinh` int(11) NOT NULL,
  `SoCauDung` int(11) NOT NULL,
  `ChamDiem` float NOT NULL,
  `ThoiGian` datetime NOT NULL DEFAULT current_timestamp(),
  `MaBaiThi` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ketqua`
--

INSERT INTO `ketqua` (`MaKetQua`, `MaHocSinh`, `SoCauDung`, `ChamDiem`, `ThoiGian`, `MaBaiThi`, `TrangThai`) VALUES
(91, 2, 0, 0, '2024-05-28 00:40:44', 3, 1),
(92, 2, 2, 10, '2024-05-29 00:55:29', 1, 1),
(93, 2, -1, -1, '2024-05-29 00:58:41', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trinhdo`
--

CREATE TABLE `trinhdo` (
  `MaTrinhDo` int(11) NOT NULL,
  `TenTrinhDo` varchar(255) NOT NULL,
  `DuongDan` text NOT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `trinhdo`
--

INSERT INTO `trinhdo` (`MaTrinhDo`, `TenTrinhDo`, `DuongDan`, `TrangThai`) VALUES
(1, 'THPT', 'thpt', 1),
(2, 'THCS', 'thcs', 1),
(3, 'Đại học', 'dai-hoc', 1),
(4, 'Cao Cấp', 'cao-cap', 1),
(5, 'Tiểu Học', 'tieu-hoc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tuluan`
--

CREATE TABLE `tuluan` (
  `MaTuLuan` int(11) NOT NULL,
  `MaKetQua` int(11) NOT NULL,
  `MaCauHoi` int(11) NOT NULL,
  `BaiLam` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tuluan`
--

INSERT INTO `tuluan` (`MaTuLuan`, `MaKetQua`, `MaCauHoi`, `BaiLam`) VALUES
(11, 93, 1, '<p>Nam</p>'),
(12, 93, 2, '<p>Nam</p>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `baihoc`
--
ALTER TABLE `baihoc`
  ADD PRIMARY KEY (`MaBaiHoc`),
  ADD KEY `MaGiaoVien` (`MaGiaoVien`,`MaTrinhDo`),
  ADD KEY `MaTrinhDo` (`MaTrinhDo`);

--
-- Indexes for table `baithi`
--
ALTER TABLE `baithi`
  ADD PRIMARY KEY (`MaBaiThi`),
  ADD KEY `MaTrinhDo` (`MaTrinhDo`);

--
-- Indexes for table `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD PRIMARY KEY (`MaCauHoi`),
  ADD KEY `MaBaiThi` (`MaBaiThi`);

--
-- Indexes for table `giaovien`
--
ALTER TABLE `giaovien`
  ADD PRIMARY KEY (`MaGiaoVien`);

--
-- Indexes for table `hocsinh`
--
ALTER TABLE `hocsinh`
  ADD PRIMARY KEY (`MaHocSinh`);

--
-- Indexes for table `ketqua`
--
ALTER TABLE `ketqua`
  ADD PRIMARY KEY (`MaKetQua`),
  ADD KEY `MaHocSinh` (`MaHocSinh`,`MaBaiThi`),
  ADD KEY `MaBaiThi` (`MaBaiThi`);

--
-- Indexes for table `trinhdo`
--
ALTER TABLE `trinhdo`
  ADD PRIMARY KEY (`MaTrinhDo`);

--
-- Indexes for table `tuluan`
--
ALTER TABLE `tuluan`
  ADD PRIMARY KEY (`MaTuLuan`),
  ADD KEY `MaKetQua` (`MaKetQua`,`MaCauHoi`),
  ADD KEY `MaCauHoi` (`MaCauHoi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baihoc`
--
ALTER TABLE `baihoc`
  MODIFY `MaBaiHoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `baithi`
--
ALTER TABLE `baithi`
  MODIFY `MaBaiThi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `MaCauHoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `MaGiaoVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hocsinh`
--
ALTER TABLE `hocsinh`
  MODIFY `MaHocSinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ketqua`
--
ALTER TABLE `ketqua`
  MODIFY `MaKetQua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `trinhdo`
--
ALTER TABLE `trinhdo`
  MODIFY `MaTrinhDo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tuluan`
--
ALTER TABLE `tuluan`
  MODIFY `MaTuLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `baihoc`
--
ALTER TABLE `baihoc`
  ADD CONSTRAINT `baihoc_ibfk_1` FOREIGN KEY (`MaTrinhDo`) REFERENCES `trinhdo` (`MaTrinhDo`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `baihoc_ibfk_2` FOREIGN KEY (`MaGiaoVien`) REFERENCES `giaovien` (`MaGiaoVien`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `baithi`
--
ALTER TABLE `baithi`
  ADD CONSTRAINT `baithi_ibfk_1` FOREIGN KEY (`MaTrinhDo`) REFERENCES `trinhdo` (`MaTrinhDo`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD CONSTRAINT `cauhoi_ibfk_1` FOREIGN KEY (`MaBaiThi`) REFERENCES `baithi` (`MaBaiThi`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `ketqua`
--
ALTER TABLE `ketqua`
  ADD CONSTRAINT `ketqua_ibfk_1` FOREIGN KEY (`MaBaiThi`) REFERENCES `baithi` (`MaBaiThi`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `ketqua_ibfk_2` FOREIGN KEY (`MaHocSinh`) REFERENCES `hocsinh` (`MaHocSinh`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tuluan`
--
ALTER TABLE `tuluan`
  ADD CONSTRAINT `tuluan_ibfk_1` FOREIGN KEY (`MaKetQua`) REFERENCES `ketqua` (`MaKetQua`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tuluan_ibfk_2` FOREIGN KEY (`MaCauHoi`) REFERENCES `cauhoi` (`MaCauHoi`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
