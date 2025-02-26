-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2025 at 11:33 AM
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
  `MaBaiThi` int(11) DEFAULT NULL,
  `TrangThai` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `baihoc`
--

INSERT INTO `baihoc` (`MaBaiHoc`, `TenBaiHoc`, `MoTa`, `DuongDan`, `MaGiaoVien`, `LoaiBaiHoc`, `MaTrinhDo`, `TepTin`, `MaBaiThi`, `TrangThai`) VALUES
(1, 'Bài học mới', '<p>ABCDE abcde a</p>', 'bai-hoc-moi', 1, 1, 1, 'http://localhost/Study/uploads/Final_Report_CTRR_2024_(1).docx', NULL, 1),
(2, 'Bài học lãnh đạo của đảng CSVN', '<p style=\"text-align:center;\"><span style=\"background-color:white;\"><strong>NHỮNG BÀI HỌC LỚN CỦA ĐẢNG CỘNG SẢN VIỆT NAM TRONG QUÁ TRÌNH LÃNH ĐẠO CÁCH MẠNG</strong></span></p><p style=\"text-align:center;\"><span style=\"background-color:white;\"><strong>Võ Thị Cẩm Tú</strong></span></p><p style=\"text-align:center;\"><span style=\"background-color:white;\"><strong>Phó Trưởng Khoa Lý luận cơ sở</strong></span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đảng Cộng sản Việt Nam do Chủ tịch Hồ Chí Minh sáng lập, lãnh đạo và rèn luyện đã lãnh đạo và đưa cách mạng Việt Nam đi từ thắng lợi này đến thắng lợi khác. </span>Thực tiễn phong phú của cách mạng Việt Nam trong suốt 90 năm qua, Đảng ta đã tích luỹ và đúc rút được nhiều bài học kinh nghiệm&nbsp;lớn: Nắm vững ngọn cờ độc lập dân tộc và chủ nghĩa xã hội; Phát huy sức mạnh của khối đại đoàn kết toàn dân tộc; Kết hợp nội lực với ngoại lực, sức mạnh dân tộc với sức mạnh của thời đại; Sử dụng phương pháp cách mạng phù hợp; Sự lãnh đạo đúng đắn của Đảng là nhân tố hàng đầu quyết định thắng lợi của cách mạng.</p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Thứ nhất, bài học về nắm vững ngọn cờ độc lập dân tộc và chủ nghĩa xã hội.</i></p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Độc lập dân tộc gắn liền với chủ nghĩa xã hội là nội dung chủ đạo, xuyên suốt trong tư tưởng Hồ Chí Minh, là quan điểm nhất quán của Đảng, là vấn đề có tính chiến lược của cách mạng Việt Nam. Trong suốt quá trình lãnh đạo cách mạng từ khi thành lập Đảng đến nay, mục tiêu độc lập dân tộc gắn liền với chủ nghĩa xã hội đã được thực hiện với nội dung, hình thức, bước đi phù hợp với đặc điểm mỗi thời kỳ cách mạng, khơi dậy, phát huy sức mạnh của dân tộc và thời đại, có ý nghĩa quyết định đến thắng lợi to lớn của dân tộc Việt Nam.</p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong giai đoạn cách mạng 1930 – 1945, độc lập dân tộc là nhiệm vụ trọng tâm trước hết, đấu tranh giành độc lập dân tộc là nội dung chủ đạo, được tiến hành theo lập trường của giai cấp vô sản, chủ nghĩa xã hội chưa được đặt ra trực tiếp mà là phương hướng tiến lên. Và để đạt được mục tiêu chủ nghĩa xã hội, trước tiên phải giành độc lập dân tộc. Đặt nhiệm vụ giải phóng dân tộc lên hàng đầu chính là quan điểm đúng đắn, sáng tạo, là yếu tố xuyên suốt và có ý nghĩa quyết định thắng lợi của cách mạng nước ta trong thời kỳ đấu tranh giành chính quyền và đấu tranh giải phóng dân tộc nói chung.</p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong giai đoạn vừa kháng chiến, vừa kiến quốc 1945 – 1954, Đảng ta xác định chiến lược của cách mạng là bảo vệ độc lập dân tộc với tinh thần “Tổ quốc trên hết”, “Dân tộc trên hết”. Đối với nhiệm vụ xây dựng chủ nghĩa xã hội, Đảng chủ trương tiến hành từng bước, sát với tiến trình thực hiện nhiệm vụ chống đế quốc và phục vụ chống đế quốc. Đảng lãnh đạo nhân dân nhanh chóng xây dựng và củng cố chính quyền cách mạng, chống giặc đói, giặc dốt, không ngừng nâng cao nội lực cách mạng, là cơ sở vững chắc cho cuộc đấu tranh chống thù trong, giặc ngoài, bảo vệ chế độ, bảo vệ nền độc lập non trẻ, chuẩn bị kháng chiến.</p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong thời kỳ 1954 – 1975, Đảng chủ trương tiến hành đồng thời hai nhiệm vụ chiến lược cách mạng là cách mạng xã hội chủ nghĩa ở miền Bắc và cách mạng dân tộc dân chủ ở miền Nam.</p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Năm 1975, sau nhiều thập kỷ đấu tranh gian khổ, dân tộc Việt Nam đã giành lại trọn vẹn nền độc lập dân tộc, thống nhất Tổ quốc, mở ra thời kỳ mới trong lịch sử dân tộc, thời kỳ cả nước quá độ lên chủ nghĩa xã hội. Trong bối cảnh mới, những tiềm năng, lợi thế của hai miền đất nước được huy động, tập trung cho sự nghiệp cách mạng xã hội chủ nghĩa. Nhưng cũng không ít nguy cơ ảnh hưởng đến nền độc lập của dân tộc, nguy cơ xâm phạm chủ quyền và toàn vẹn lãnh thổ. Do vậy, Đảng ta xác định phải thực hiện song hành độc lập dân tộc và chủ nghĩa xã hội. Trong đó, độc lập dân tộc, thống nhất Tổ quốc là điều kiện để tiến lên chủ nghĩa xã hội, tăng cường sức mạnh của chủ nghĩa xã hội để củng cố độc lập dân tộc. Xây dựng chủ nghĩa xã hội và bảo vệ Tổ quốc xã hội chủ nghĩa là hai nhiệm vụ chiến lược có quan hệ chặt chẽ với nhau.</p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Như vậy, độc lập dân tộc và chủ nghĩa xã hội luôn được Đảng ta xác định là nhiệm vụ quan trọng trong mọi giai đoạn cách mạng. Trong mỗi giai đoạn, tùy vào đặc điểm, tình hình, Đảng ta có thể chủ trương tập trung thực hiện nhiệm vụ độc lập dân tộc hoặc chủ nghĩa xã hội hoặc song hành cả hai.</p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Hai là, phát huy sức mạnh của khối đại đoàn kết toàn dân tộc trong đấu tranh giành độc lập, xây dựng chủ nghĩa xã hội và bảo vệ Tổ quốc</i>.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Thành công nổi bật của Đảng Cộng sản Việt Nam là đề ra Cương lĩnh, đường lối chính trị đúng đắn vì lợi ích của đất nước và dân tộc. Trên cơ sở đường lối đúng đắn mà tập hợp, đoàn kết lực lượng của toàn dân tộc phấn đấu vì mục tiêu chung là độc lập dân tộc và chủ nghĩa xã hội. Đại đoàn kết là nguồn sức mạnh giúp dân tộc Việt Nam vượt qua những khó khăn, thử thách để dựng nước và giữ nước. Đại đoàn kết dân tộc là đường lối chiến lược nhất quán của Đảng Cộng sản Việt Nam xuất phát từ nhận thức ngoài lợi ích của giai cấp, dân tộc và nhân dân, Đảng không có mục đích nào khác. Đại đoàn kết toàn dân tộc dựa trên nền tảng vững chắc là liên minh giữa giai cấp công nhân với giai cấp nông dân và đội ngũ trí thức, đồng thời đoàn kết rộng rãi các giai cấp, tầng lớp khác, đoàn kết 54 dân tộc trên đất nước Việt Nam, đoàn kết các tôn giáo, đoàn kết với cộng đồng người Việt Nam định cư ở nước ngoài.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đại đoàn kết dân tộc dựa trên cơ sở lấy mục tiêu chung làm điểm tương đồng, đồng thời bảo đảm lợi ích riêng của mỗi giai cấp, tầng lớp, bộ phận, cá nhân không trái với lợi ích chung của dân tộc, đất nước. Đảng chú trọng xây dựng các hình thức tổ chức Mặt trận dân tộc thống nhất để tập hợp đoàn kết rộng rãi mọi thành phần, lực lượng trong dân tộc, xã hội, đa dạng hóa các hình thức tổ chức tập hợp quần chúng, nêu cao vai trò các đoàn thể nhân dân, các hội quần chúng, nghề nghiệp. Đường lối và bài học đại đoàn kết dân tộc của Đảng là sự kế thừa và phát triển truyền thống đoàn kết hình thành trong lịch sử dựng nước và giữ nước của dân tộc, truyền thống gắn kết trong các hình thức cộng đồng, gia đình, dòng họ, làng xã đến cộng đồng dân tộc, quốc gia. Đại đoàn kết dân tộc cũng là nối tiếp truyền thống nhân văn, nhân ái, yêu thương đùm bọc lẫn nhau của dân tộc Việt Nam. Sự kết tinh các giá trị cao cả và sâu sắc đó của chiến lược đại đoàn kết dân tộc trở thành một trong những nhân tố quyết định thắng lợi của cách mạng và dân tộc Việt Nam trong thời đại Hồ Chí Minh.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ngay từ khi mới ra đời, Đảng Cộng sản Việt Nam đã nhận thấy động lực cách mạng từ quảng đại quần chúng và xác định nhiệm vụ tổ chức, tập hợp, đoàn kết, coi đây là chiến lược xuyên suốt, nhất quán, là cội nguồn sức mạnh trong mọi thời kỳ cách mạng. Ngay trong Sách lược vắn tắt của Đảng năm 1930 đã ghi rõ: Đảng phải thu phục đại bộ phận và làm cho giai cấp công nhân đóng vai trò lãnh đạo dân chúng, thu phục đại bộ phận và làm cho giai cấp nông dân, đồng thời phải hết sức liên lạc với tiểu tư sản, trí thức, trung nông, Thanh niên, Tân Việt,… để kéo họ đi vào phe vô sản giai cấp. Chính đại đoàn kết dân tộc là nguồn sức mạnh to lớn góp phần làm nên những thắng lợi vẻ vang của dân tộc, đưa đất nước đến bến bờ độc lập. Trong quá trình đổi mới, xây dựng đất nước “đàng hoàng hơn, to đẹp hơn” theo con đường chủ nghĩa xã hội, đoàn kết vẫn tiếp tục là sợi chỉ đỏ xuyên suốt, luôn được nhấn mạnh qua các kỳ đại hội. Gần đây nhất, Đại hội đại biểu toàn quốc lần thứ XII khẳng định: “Đại đoàn kết dân tộc là đường lối chiến lược của cách mạng Việt Nam, là động lực và nguồn lực to lớn trong xây dựng và bảo vệ Tổ quốc. Tăng cường khối đại đoàn kết toàn dân tộc trên nền tảng liên minh giai cấp công nhân với giai cấp nông dân và đội ngũ trí thức do Đảng lãnh đạo”<sup>1</sup>.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\"><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ba là, kết hợp nội lực với ngoại lực, sức mạnh dân tộc với sức mạnh của thời đại</i>.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cương lĩnh, đường lối của Đảng ngay từ đầu đã tổ chức và động viên sức mạnh của dân tộc, coi cách mạng Việt Nam là bộ phận của cách mạng thế giới, tranh thủ sự ủng hộ của cách mạng thế giới. Trong&nbsp;<i>Đường cách mệnh</i>&nbsp;(1927) lãnh tụ Nguyễn Ái Quốc - Hồ Chí Minh đã nêu rõ: \"Muốn người ta giúp cho, thì trước mình phải tự giúp lấy mình đã\". Trong cao trào giải phóng dân tộc, Hồ Chí Minh đã kêu gọi toàn thể quốc dân hãy đứng lên&nbsp;đem sức ta mà tự giải phóng cho ta. Nhờ phát huy sức mạnh, ý chí tự lực tự cường của cả dân tộc, nên đã chớp được thời cơ thuận lợi dẫn tới thắng lợi của Cách mạng Tháng Tám năm 1945. Trong các cuộc kháng chiến lâu dài giành độc lập, thống nhất hoàn toàn, Đảng đã triệt để phát triển sức mạnh của dân tộc, nêu cao tinh thần độc lập, tự chủ, sáng tạo, đồng thời tranh thủ tối đa sự giúp đỡ, ủng hộ quốc tế, tạo nên sức mạnh tổng hợp để giành thắng lợi.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Công cuộc đổi mới diễn ra trong bối cảnh chủ nghĩa xã hội trên thế giới lâm vào khủng hoảng và dẫn tới sự sụp đổ của mô hình chủ nghĩa xã hội ở các nước Đông Âu và Liên Xô. Điều đó đòi hỏi Đảng Cộng sản Việt Nam nêu cao tinh thần độc lập tự chủ, tự lực, tự cường, nâng cao bản lĩnh chính trị để đứng vững trước khó khăn, thử thách và kiên định con đường xây dựng chủ nghĩa xã hội, động viên cao độ nội lực. Mặt khác, Đảng Cộng sản Việt Nam tăng cường củng cố sự đoàn kết các nước xã hội chủ nghĩa còn lại, kiên định lập trường của chủ nghĩa quốc tế trong sáng. Đề ra và thực hiện đường lối đối ngoại độc lập tự chủ, đa phương hóa, đa dạng hóa các quan hệ quốc tế, Việt Nam là bạn, đối tác tin cậy của các nước, thành viên có trách nhiệm của cộng đồng quốc tế. Đảng và Nhà nước cũng tranh thủ tối đa những vấn đề mới của thời đại: Hội nhập kinh tế quốc tế, toàn cầu hóa, thành quả của cách mạng khoa học, công nghệ, kinh nghiệm quản lí của các nước tiên tiến, những vấn đề về kinh tế tri thức… Nội lực và sức mạnh dân tộc bao giờ cũng có ý nghĩa quyết định, song sức mạnh đó được tăng cường khi có sự kết hợp đúng đắn với ngoại lực và sức mạnh của thời đại.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <i>Bốn là, sử dụng phương pháp cách mạng phù hợp với nhiệm vụ cách mạng và điều kiện cụ thể của Đảng Cộng sản Việt Nam.</i></span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Phương pháp cách mạng vừa là khoa học lãnh đạo vừa là nghệ thuật lãnh đạo trong việc tổ chức, xây dựng các lực lượng và sử dụng các hình thức đấu tranh. Thực tế lịch sử phong trào cách mạng của thế giới và Việt Nam cho thấy phương pháp cách mạng là yếu tố quan trọng làm nên thắng lợi. Đồng chí Trường Chinh viết:&nbsp;<i>“Lịch sử phát triển cách mạng thế giới đã cho thấy một phong trào nào đó có khi bế tắc, không có lối ra, thậm chí thất bại không phải vì không có mục tiêu và phương hướng rõ ràng, cũng không phải không tổ chức được lực lượng cách mạng, mà chủ yếu vì thiếu phương pháp cách mạng và hình thức đấu tranh thích hợp”<sup>2</sup>.</i></span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong tiến trình lịch sử dân tộc, Đảng ta đã thực hiện phương pháp cách mạng đúng đắn và sáng tạo. Phương pháp cách mạng luôn được thực hiện đúng quy luật, thuận lòng dân và phù hợp thời đại. Trong thời kỳ cách mạng dân tộc dân chủ, Đảng Cộng sản Việt Nam đã sử dụng đúng đắn, linh hoạt một số phương pháp cách mạng chủ yếu như sau: <i>phương pháp sử dụng bạo lực cách mạng của quần chúng đấu tranh chống bạo lực phản cách mạng; phương pháp thắng từng bước; phương pháp phát huy sức mạnh tổng hợp. Trong cách mạng xã hội chủ nghĩa, Đảng ta lựa chọn các phương pháp: Phát huy vai trò, sức mạnh của quần chúng nhân dân; Tôn trọng quy luật khách quan, xuất phát từ thực tiễn, đổi mới toàn diện, đồng bộ, có bước đi và hình thức thích hợp; Tranh thủ thời cơ, đẩy lùi nguy cơ, thách thức trong xây dựng chủ nghĩa xã hội; Phát huy sức mạnh tổng hợp.</i></span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\"><i>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Năm là, sự lãnh đạo đúng đắn của Đảng là nhân tố hàng đầu quyết định thắng lợi của cách mạng Việt Nam.</i></span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Đến nay, tròn 90 năm Đảng được hợp nhất, thành một tổ chức Đảng lãnh đạo cách mạng. Ngày 3/2/1930, Hội nghị hợp nhất các tổ chức cộng sản họp ở bán đảo Cửu Long, thuộc Hồng Kông (Trung Quốc) đã quyết định thống nhất các tổ chức cộng sản ở nước ta thành một Đảng duy nhất, lấy tên là Đảng Cộng sản Việt Nam. Đây là một bước ngoặt lịch sử trọng đại, chấm dứt cuộc khủng hoảng kéo dài về tổ chức và đường lối của cách mạng Việt Nam.</span></p><p style=\"text-align:justify;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Từ đó đến nay, Đảng đã lãnh đạo nhân dân ta đạt được nhiều thắng lợi quan trọng. <span style=\"background-color:white;\">Đó là thắng lợi của cuộc Cách mạng tháng Tám năm 1945 xóa bỏ chế độ thuộc địa nửa phong kiến, thành lập Nhà nước Việt Nam dân chủ cộng hòa, mở ra kỉ nguyên mới của lịch sử dân tộc, kỉ nguyên độc lập dân tộc gắn liền với chủ nghĩa xã hội. Ngày 2/9/1945, tại quảng trường Ba Đình lịch sử, Chủ tịch Hồ Chí Minh đã đọc bản&nbsp;<i>Tuyên ngôn độc lập</i>&nbsp;khai sinh ra nước Việt Nam Dân chủ Cộng hòa nay là nước Cộng hòa xã hội chủ nghĩa Việt Nam - Nhà nước công nông đầu tiên ở Đông Nam châu Á. Là thắng lợi của các cuộc kháng chiến oanh liệt chống đế quốc, thực dân giành độc lập hoàn toàn, đưa cả nước tiến lên chủ nghĩa xã hội. Là thắng lợi của công cuộc đổi mới, công nghiệp hóa, hiện đại hóa đất nước, không ngừng cải thiện đời sống của nhân dân, nâng cao vị thế của đất nước, làm sáng tỏ nhận thức về chủ nghĩa xã hội và con đường đi lên chủ nghĩa xã hội ở Việt Nam.</span> Đến nay, Việt Nam đã trở thành một quốc gia có quy mô dân số gần 100 triệu người với mức thu nhập bình quân 2.800 USD/người; đã tham gia hầu hết các tổ chức quốc tế, trở thành một thành viên tích cực, có trách nhiệm trong các hoạt động của cộng đồng quốc tế.</p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Quả thật, sự ra đời của Đảng Cộng sản Việt Nam năm 1930 là một bước ngoặt lịch sử của cách mạng Việt Nam và thực tiễn cách mạng 90 năm qua đã chứng minh sự lãnh đạo đúng đắn của Đảng là nhân tố hàng đầu quyết định thắng lợi của cách mạng Việt Nam.</span></p><p style=\"text-align:justify;\"><span style=\"background-color:white;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong giai đoạn cách mạng hiện nay, những bài học kinh nghiệm trên đây vẫn có ý nghĩa quan trọng quyết định sự thắng lợi của công cuộc xây dựng chủ nghĩa xã hội. Nhận thức, vận dụng đúng đắn những bài học kinh nghiệm này vào quá trình phát triển đất nước vẫn là yêu cầu hiện nay.</span></p>', 'bai-hoc-lanh-dao-cua-dang-csvn', 1, 3, 5, NULL, NULL, 1);
INSERT INTO `baihoc` (`MaBaiHoc`, `TenBaiHoc`, `MoTa`, `DuongDan`, `MaGiaoVien`, `LoaiBaiHoc`, `MaTrinhDo`, `TepTin`, `MaBaiThi`, `TrangThai`) VALUES
(3, 'Khai phá dữ liệu', '<h2>CHƯƠNG 1. TỔNG QUAN VỀ&nbsp;<span lang=\"VI\" dir=\"ltr\">KHAI PHÁ DỮ LIỆU&nbsp;</span></h2><h2>1.1 Khái niệm <span lang=\"VI\" dir=\"ltr\">khai phá dữ liệu&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></h2><p>Khai phá dữ liệu (Data Mining) là quá trình tìm kiếm và phân tích những mẫu ẩn trong dữ liệu để đưa ra các kết luận hữu ích. Quá trình này bao gồm việc sử dụng các kỹ thuật và công cụ phân tích dữ liệu, dự báo, phân loại và gom cụm để tìm ra các mẫu tiềm ẩn hoặc thông tin có giá trị trong dữ liệu.</p><p>Khai phá dữ liệu giúp chúng ta hiểu rõ hơn về dữ liệu được thu thập, giúp tìm ra những thông tin mới, nhìn nhận vấn đề từ một góc nhìn khác và đưa ra những phán đoán chính xác hơn. Nó có thể được sử dụng trong nhiều lĩnh vực khác nhau như kinh doanh, y tế, khoa học và công nghệ.&nbsp;&nbsp;</p><p><span lang=\"VI\" dir=\"ltr\">Khai phá dự liệu còn</span> là một công cụ hữu ích&nbsp;<span lang=\"VI\" dir=\"ltr\">giúp chúng ta có thể từng bước xây dựng một mô hình học máy dựa trên các dữ liệu với các mô hình tốt nhất.</span></p><h2>1.2 Lịch sử&nbsp;<span lang=\"VI\" dir=\"ltr\">khai phá dữ liệu</span></h2><p><i><strong>Thập niên 19</strong><span lang=\"VI\" dir=\"ltr\"><strong>60</strong></span><strong> và 19</strong><span lang=\"VI\" dir=\"ltr\"><strong>7</strong></span><strong>0&nbsp;</strong><span lang=\"VI\" dir=\"ltr\"><strong>– đầu nguồn của khai phá dữ liệu</strong></span></i></p><p>Những năm cuối thập niên 1960 và đầu thập niên 1970, giới học giả bắt đầu quan tâm đến việc sử dụng máy tính trong việc phân tích dữ liệu và dự báo trong khoa học kinh tế. Trong giai đoạn này, nghiên cứu viên ở Bell Labs phát triển thuật toán Naïve Bayesian để phân loại các tài liệu văn bản. Ngoài ra, các nhà nghiên cứu khác đã phát triển các phương pháp phân tích chuỗi thời gian, phân tích hồi quy và phân tích đa biến.</p><p><i><strong>Thập niên 19</strong><span lang=\"VI\" dir=\"ltr\"><strong>7</strong></span><strong>0&nbsp;</strong><span lang=\"VI\" dir=\"ltr\"><strong>đến</strong></span><strong> 19</strong><span lang=\"VI\" dir=\"ltr\"><strong>8</strong></span><strong>0 –&nbsp;</strong><span lang=\"VI\" dir=\"ltr\"><strong>bước phát triển của khai phá dữ liệu</strong></span></i></p><p>Trong những năm 1980, một số công ty thông tin, như Reuters và Dun &amp; Bradstreet, đã bắt đầu sử dụng các kỹ thuật khai phá dữ liệu để khai thác thông tin từ các cơ sở dữ liệu lớn của mình.&nbsp;</p><p>Năm 1989, IBM phát hành Intelligent Miner, một công cụ khai phá dữ liệu đầu tiên được phát triển cho phân tích cơ sở dữ liệu.</p><p><i><strong>Thập niên 19</strong><span lang=\"VI\" dir=\"ltr\"><strong>80</strong></span><strong> và 1990 – Sự phát triển đáng kể của&nbsp;</strong><span lang=\"VI\" dir=\"ltr\"><strong>khai phá dữ liệu</strong></span></i></p><p>Vào những năm 1990, các công ty phần mềm và tổ chức nghiên cứu đã phát triển nhiều công cụ và phương pháp khai phá dữ liệu như WEKA, SGI Mining và TreeNet.&nbsp;</p><p>Năm 1995, Usama Fayyad, nhà nghiên cứu được coi là người đưa khai phá dữ liệu ra thế giới trong bài báo \"From Data Mining to Knowledge Discovery in Databases\"<span lang=\"VI\" dir=\"ltr\">.</span></p><p><i><strong>Thập kỷ 2000 và hiện tại – Thành tựu&nbsp;</strong><span lang=\"VI\" dir=\"ltr\"><strong>và ứng dụng của khai phá dữ liệu</strong></span></i></p><p>Hiện nay, khai phá dữ liệu đã phát triển đáng kể từng ngày và trở thành một phần không thể thiếu trong phân tích dữ liệu và các ứng dụng thông minh nhân tạo. Các công ty lớn như Google, Facebook và Amazon có rất nhiều dữ liệu khổng lồ và cần phải khai thác những giá trị tiềm ẩn từ dữ liệu đó để phục vụ cho kinh doanh của họ.</p><p>Công nghệ AI &amp; Machine Learning cũng đang phát triển mạnh mẽ nhằm cải thiện tính hiệu quả trong từng tác vụ của khai phá dữ liệu.</p><h2>1.3 Các phương pháp&nbsp;<span lang=\"VI\" dir=\"ltr\">khai phá dữ liệu</span></h2><p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Trong&nbsp;<span lang=\"VI\" dir=\"ltr\">khai phá dữ liệu</span>, được phân thành&nbsp;<span lang=\"VI\" dir=\"ltr\">4</span> loại phương pháp chính thường được sử dụng rộng dãi:&nbsp;<span lang=\"VI\" dir=\"ltr\">Phân loại, gom cụm,&nbsp; phát hiện tiên đề, hồi quy, kết hợp các phương pháp trên.</span></p><p><span lang=\"VI\" dir=\"ltr\">Trên đây là một số phương pháp khai phá dữ liệu phổ biến. Tuy nhiên với sự bùng nổ của AI &amp; Machine Learning, khai phá dữ liệu liên tục được phát triển ở những phương pháp khác như Deep Learning, Neural Network, Decision Trees,... điều này càng rõ nét với sự gia tăng của khối lượng dữ liệu ngày một lớn và đa dạng.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p><h3>1.3.1&nbsp;<span lang=\"VI\" dir=\"ltr\">Phương pháp phân loại</span></h3><p style=\"text-align:center;\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA4QAAAH0CAIAAADqkXSEAAAAA3NCSVQICAjb4U/gAAAAX3pUWHRSYXcgcHJvZmlsZSB0eXBlIEFQUDEAAAiZ40pPzUstykxWKCjKT8vMSeVSAANjEy4TSxNLo0QDAwMLAwgwNDAwNgSSRkC2OVQo0QAFmJibpQGhuVmymSmIzwUAT7oVaBst2IwAACAASURBVHic7N15YFTlvf/x95nJZGZISDITCJgErMWFel1wq1Vxp2zpVemV4lKttdpa21quWpdfpa3V3roi4lWsC3rtdUHbgtUIUlwoWPcraqWotRRIwpqZJGSfzJzfHxNiCmSfmefMzOf1V0uZc76oHT95znk+j2XbNiIiIiIiJrhMDyAiIiIi2UthVERERESMURgVEREREWMURkVERETEGIVRERERETFGYVREREREjFEYFRERERFjFEZFRERExBiFURERERExRmFURERERIxRGBURERERYxRGRURERMQYhVERERERMUZhVERERESMURgVEREREWMURkVERETEGIVRERERETFGYVREREREjFEYFRERERFjFEZFRERExBiFURERERExRmFURERERIxRGBURERERYxRGRURERMQYhVERERERMUZhVERERESMURgVEREREWMURkVERETEGIVRERERETFGYVREREREjFEYFRERERFjFEZFRERExBiFURERERExRmFURERERIxRGBURERERYxRGRURERMQYhVERERERMUZhVERERESMURgVEREREWMURkVERETEGIVRERERETFGYVREREREjFEYFRERERFjFEZFRERExBiFURERERExRmFURERERIxRGBURERERYxRGRURERMQYh4bRv/3tb6ZHEBFJKX3viUh2cmIY3b59+9q1a7dv3256EBGRFNH3nohkLSeG0fjygBYJRCR76HtPRLKW48Lo9u3b42sDXf9BRCSz6XtPRLKZ48Jo94UBLRKISDbQ956IZDNnhdHdVgW0SCAiGU/feyKS5ZwVRvdcEtAigYhkNn3viUiWc1AY3et6gBYJRCSD6XtPBuqzK+veHLclsi1mehCRhHFQGO1pMUCLBCKSqfS9JwPV9FFH6z86QktbTQ8ikjBOCaO9rARokUBEMpK+92QQiit8QGiZwqhkDqeE0d6XAbRIICKZR997MgjBeBhd3mpHTY8ikiCWbdumZ9iLZcuWAVOnTjU9iIhIiuh7T/rp7S9taV7XMWHVyMKJXtOziCSAU1ZGRUREpD+CFX4gVKkn9ZIhFEZFRETSSXCqD6hVGJVMoTAqIiKSTgpPzHXnW00fRto26r1RyQQKoyIiIunE5bUCk7Snfi92EDojet5a+2PTg8jAKIyKiIikmc499Wob7aaFlvOil75mv/mz2K9NzyIDozAqIiKSZoqn+7AIr2iNtTmxEif1okQvic5+116zn7Xv/e65pseRgVEYFRERSTO5pe78IzzRRrt+ZZvpWcyzsX8Q/ckye8UIgs+4HhlB0PREMjAKoyIiIuknOEV76jvdHLvjGftZP/4n3A/uZ+1rehwZMIVRERGR9BOc7kNto7Aw9vi82P1u3A+55x1lTTA9jgyGwqiIiEj6KTjOmxN0tXzW0fL3DtOzGLPMXnFd7EbgFtfPp1qTTI8jg6QwKiIikn4sd2f7feiFLF0cfddec0l0dpToda7ZF7vONz2ODJ7CqIiISFoqrsje10bX2xvOi17aQsvFrvN/4vqR6XFkSBRGRURE0lJwqs9yU7+yLdqYXQVPOwjNjH17B6Gp1qRbXD83PY4MlcKoiIhIWsoJuoZ/OTfWZodXZNHiaLzcfr294ShrwkPueW7cpieSoVIYFRERSVfBadm1p76dyHnR78bL7Z9wP+jHb3oiSQCFURERkXRVXOEHQi9mRRi1sa+IXvtn+y8qt88wCqMiIiLpKv8IT26pu21TtOnDiOlZkk7l9plKYVRERCRtWRRPz4o99Sq3z2AKoyIiImksWJH5r43Gy+0trLtcv1K5feZRGBUREUljgdO8lsdqeL2tIxQzPUtSdJXb3+C6+nzXTNPjSOIpjIqIiKQxd4GrcGKuHSW0LAMXR7uX2892XWZ6HEkKhVEREZH0Fj+KKfP21KvcPksojIqIiKS3YLzgaVkrGfSgvoGd/xG9UOX22UBhVEREJL0NG5/jH5cT2RZreLvd9CyJ0U7kwuj3/2r/TeX22UBhVEREJO1l0p76eLn9Kvt1ldtnCYVRERGRtBecEm8bbTE9SAKo3D7bKIyKiIikvaJTvS6/1fhepL0manqWIYmX2+fiecT93yq3zxIKoyIiImnP5bcCp3mxCS1P4yf1XeX28923ftU6xfQ4kiIKoyIiIpmg87XRF9I1jHYvt59pnWl6HEkdhVEREZFMUFzhB8LL2+yIbXqWAVO5fTZTGBUREckE3rHuvEM9HfWx+tVpVvBUw5YZ0QtUbp+1ckwP4CzWzCdTf1P7mXNTf1MRp9sK34K74EumJ8l6+mJMI8EpvqYPI7WVrUWnek3P0l8N7JwVvXgT1Sq3z1paGRUR51kPE+FF+KHpSUTSSnB6vG00bQqe4uX2a+2PVW6fzRRGRcRhPoAT4O9wFDxhehiRtFI4MTen0NW8rqNtYxoUPKncXuIURkXESVbBybAZToNXYJTpeUTSiuWxApO9pEn7fbzcvoDhT7ofUrl9NlMYFRHH+CNMgTo4G16A4abnEUlD8T31zj8XtKvc/jH3giOtw02PIyYpjIqIMzwKX4cW+B48BWmz+0LEWYLTfLgIv9wWa3FuwVP3cvsTreNMjyOGKYyKiAPcBhdDFH4G96PdtCKD5ilx5U/wxFrs8MttpmfZO5Xby24URkXEKBuuhmvBgvlwo+l5RNKfk5/Ur7U/Pif6HZXbS3cKoyJiTgdcBHdCLjwOPzI9j0hGiJ8LGnbeIfU1bJkVvThEncrtpTuFURExpBlmwGOQD8/BOabnEckUBcfkekpcLZ91NK/rMD3L5+Ll9jVsUbm97EZhVERMCMNkeB6K4SWYbHoekUziIjjNWe33KreXXiiMikjK1cBJ8BrsC6vhy6bnEck48ddGa53x2mhXuf0oSlRuL3tSGBWR1PoEToC/wsGwCsabnkckEwVO91pu6le3d9THTM/yebn979yPqtxe9qQwKiIp9C6cCP+Er8AqGGN6HpEMlRN0FRzntSN2eLnhgqfu5fYHWweZHUacSWFURFLlJTgVtsE0WIGe1IkklRP21KvcXvpDYVREUuJ3UAE74Tx4FvJMzyOS6YorfEDtC60YOolptf2Gyu2lPxRGRST57odzoA1mw/+Cx/Q8Ilkg71CPd6y7vSba+F4k9Xdfa398QfQyldtLfyiMikiS/RK+DzG4Ge4Cy/Q8Illj1576VBc8xcvtG9ipcnvpD4VREUmaGPwIfg5ueAB+anoekSwTmOwl5eeCqtxeBirH9AAikqHa4UJYBD54AmaYnkck+wQm+Vxeq+Ht9sj2mGdkKpafusrt97e+qHJ76SetjIpIEjTCv8MiKIClSqIiZrjzrcKTvcQI/ykVi6Nd5faljF7s/q3K7aWfFEZFJNFq4TRYDqNhJZxieh6RLNa5pz4lT+q7yu0XuReWMjoFd5TMoDAqIgm1ASbC2/BFWAUTTM8jkt3ibaOhZa12NLk3Urm9DJrCqIgkzlqYCOvgcHgN9jc9j0jW84/LGTY+pyMUa3g9iUcxLbYrE15uv7UxNLty3u8/eqW1oz0hFxTHUhgVkQR5HU6EKjgZXkXP6EQcIjDZRzL31K+yX788elViy+23Noauf3HB32urHnm38pI//HrJ2j+3Rw20pUpqKIyKSCIsha9CCM6AZVBkeh4R2eXzo5iSYK398YXR77cTSWC5fTyJbmsKx/9rXevOh9754yWLf/3cutWRaEdCbiGOojAqIkP2OJwJTfAd+AP4TM8jIt0Unux151tNH0baaxL83mgyyu13S6JdQs0Nv3lryaVLbln6yesdsSS/ACuppTAqIkMzDy6ACFwLD6J+axGncXmtwCQfdoIXR7vK7Y+xjkhUuX1PSbTLjqa6e9/4/feW3Pqnv78VtWNDv6M4gcKoiAyWDT+F/wRgLtyioz5FHKpzT33iXhvtKrc/2DroafcjCSm37zOJdv+dd//l6cuW3PbyP96NKZKmP53AlLGsmU+m/qb2M+em/qZiRhS+Bw+DBx6GC0zPI9IPWfvFWDzdB4RXtMbabJd3qD81di+3X+ReWMDwoU/Y/yTaZfPOHXNXP/n0ByvOPXzySV+YYFn6aThdaWVURAauFWbCwzAM/qAkKuJ0uaXuvEM90Ua7fmUCCp4SXm4/iCTapaph++2rHv/hc3e+tuEDG3vow0jqKYyKyAA1wFRYDAFYAV8zPY+I9EOi9tQviC1MbLn9UJJolw11W3698rErnrvrzU0fKZKmHYVRERmILXAyrIQy+DMkptxaRJIu/tpo+MUhhdFn7GfnxP4rgeX2CUmiXdaHa2565ZErK+e/U/23hFxQUkNhVET67R8wEdbAgfAaHGJ6HhHpt4LjvDlBV/O6jpbPBlnVucp+/YrotTZ2osrtE5tEu3xau+kXLz189dJ73tv8SWKvLEmiMCoi/bMGToDP4BhYDfuankdEBsJyE5w6+D31CS+3T1IS7bJu+4Y5f3rgmmX3frjlsyTdQhJFYVRE+mElnApb4HR4CUaankdEBq7ztdGBh9GucvtpCSq3T3YS7bJ22/rrly/42YoHk30jGQqFURHpy7MwFergG/ACiWhxEREDApN8uKhf2RZtHMAWn65y+xOt4xa6/3vo5fYpS6JddjTVpexeMggKoyLSq4fhP6AVLocnINf0PCIyWJ4SV8ExubE2u+7l/i6Odi+3f8y9IBfPEGdIfRIFygtLUnk7GSiFURHp2S1wKUTh53CvjvoUSXudRzEt61fbaMLL7Y0kURRGHU8nMP0LJ5yTIeIINlwFd4Eb5sPlpucRc/TFmEmKK/z//FlDbWXLART1+ZvnxP4rgeX2ppIoMEZh1Nm0Mioie4jAt+AuyIXHlURFMkf+EZ7cUnfbxmjTh5Hef+e82P0LYgsTVW5vMImilVHHUxgVkX/VDDPgt5APL8As0/OISAJZBKf1vaf+GfvZm2N3JKrc3mwSRSujjqcwKiLdhGASVMJIeBlONz2PiCRacEofbaMJL7f/r1f/x2ASHZFX5Mvxmrq79IfCqIjsUg0nw+uwL6yCY0zPIyJJEJjstTxWw+ttHXWxPf/XhJfbAyftNyEh1xkcLYs6n8KoiADwMZwAf4VD4DUY6htiIuJQOYWuwom5dpTwn3bfU99Vbj/TOvM2142JumPFQScU+YwVFJcXKIw6ncKoiMDbcCJsgONgJZSZnkdEkmnXUUwt3X+xe7n9fPetFlaibufLyT37kFMSdbWB0sqo8ymMimS9l+A02A4VsAKCpucRkSQLVviB0NJWdj2oT3i5/W6mH3R8cFhBYq/ZT2MKRxm5r/SfwqhIdlsE06ERLoDFMMz0PCKSfMPG5/i+mBPZFmt4ux2IEr08elUCy+33lOv2fOMQMzsiywpHGrmv9J/CqEgWuw/Oh3b4T/gfEr0UIiLO1X1P/XWxGxfblYkqt+/JlAOOHTGsMEkX70lerj/oN7MiK/2nMCqSrX4BP4AY3AJzSdzrYSKSBjrPBV3aOi92/8LY44kqt++Fx50z67BJybv+XjnhhdGtjaHZlfN+/9ErrR3tpmdxKIVRkewThR/AjeCGB+Fa0/OISMoFTvO6/FblQZUJLLfv01f3//Ko/JS+lm787KV44f/fa6seebfykj/8esnaP7dH+zj7KgspjIpkmXY4D+4DH/wBvmN6HhExweW31s/+8L8fuDWB5fZ9ynG5U7w4anZldLejp+padz70zh8vWfzr59atjkQ7DA7mNAqjItlkJ0yHp6EIlsEZpucREUPW2h/PueHajtzIec9dkKhy+/44fdzR+wwfkbLbGdxK39MhqKHmht+8teTSJbcs/eT1jljUyGxOozAqkjW2w+nwEoyGV+Fk0/OIiCHxcvvG3MaTnvjqrIsvtSN2ym7ttlznpnBx1FTjfU9JtMuOprp73/j995bc+qe/vxW193IUVlZRGBXJDhtgIrwN+8NrcLjpeUTEkO7l9tfc8dNonV2/OqUba0754pHlBamoW/K4c0YPN9Cc3GcS7f477/7L05ctue3lf7wby+JIqjAqkgX+CifAJzABVsEXTc8jIoa00HJB9LKucvuSyQVAaFlrKmdwWa5zD5+cghuVDh/hslKdc/qfRLts3rlj7uonL3/29pXr37Pt1K1SO4fCqEimex1Ogmo4BVaStA5BEXG6KNFLorNX2290ldsX7yp4SvEkJ31hwtiipH8Zpf6F0UEk0S5VDdtvX/X4D5+787UNH9hkVyRVGBXJaM/DJAjDDFgK6n4WyWLXxW5cZq/oXm5fODE3p9DV9GGkbWNKd9JYlnV+8hdHU9zrNJQk2mVD3ZZfr3zsiufuenPTR9kTSRVGRTLXb+Hr0AyXwDPgMz2PiJiz13J7y2MFJnuB2sqWFM9z/L6H7hcoTeotUhlGE5JEu6wP19z0yiNXVs5/p/pvCbmgwymMimSoufAtiMBP4QFwm55HRMx5xn62p3L74PTPzwVNJQvr/AlTknqLlJWMJjaJdvm0dtMvXnr46qX3vLf5k8Re2WkURkUyjg3XwVUA3AU366hPkay2yn79iui1NvYtrp/tWW4fnOzDIvxyW6wl1Q+Fjx1z8AHFY5J0cQsrNb1OSUqiXdZt3zDnTw9cs+zeD7d8lqRbGKcwKpJZonAJ3Aoe+C3MNj2PiBi11v74wuj324nMdl12ievCPX9Dbqk7/whPrMWuW9mW4tksrPMnJOvN0ZF5Rd4cT5Iu3iXZSbTL2m3rr1++4GcrHkz2jYxQGBXJIC3wdVgIefAsnG96HhExKl5u38DOmdaZN7iu7um3FVf4MbGnHji67EvjR+6b2GtaWKPygyfse1hiL7unlCXRLjua6lJ2r1TKMT2AiCRIHZwFKyEIz8NxfX9CRDJYiLqucvv57lutnt/XCVb4NtzUEKps5e5UDtjp/MOnzFnxwKA/nuNylxWMHFM4qqxg5NiiUeWFJWUFI305uQmccK9Sn0RJeT9AyiiMimSELTAFPoByeBEONj2PiBjVQss50e90ldvn0tsD64Jjcj0lrpbPOprXdQwbn+pgcETpgf9Wst9H29b35zfn5/rLCkaOLRpdXjiyvKBkbNGoUfnBtGi2TwiFURFxqr/DFPgHjIdlkOBHXiKSZuLl9u/aa7rK7fv4gIvgFN/W3zaHKluGje/rNyfBNydMvX75gj1/fWReUXlBSXlhydiiUfHlz4DfwHi7MZVESWE/QIopjIqkuTUwDbbAMbAUik3PIyKm7Vlu36fgVN/W3zbXVraWX2Ug7R06etwRpQfuaKrfFTpL4o/d/R5v6ofpncEkilZGRcSJXoUzoQEmw+8h3/Q8ImLaXsvt+xSc6rPc1K9ujzba7nwDbXA3Tfpu6m86UGaTKFoZzRLWzCdTf1P7mXPT6LLiIIvhPGiFWfAYJP19fclS+mJMI/FyezfuB91371Zu37ucoKvgOG/96rbwitYRZ/mTN2Fa+69X/8dgEh2RV+TLcdxScUKo2kkkPT0EM6EVfghPKImKSPdy+59/zRrw4UbBCjNHMaWRk/abYPDumbosisKoSFr6FXwXonAj3KP/H4vIv5TbX+waTMlwcYUPqH2hlVSfxJQ2Kg46ochnbAdVag6UMkL/EhNJKzb8J9wALlgAPzM9j4g4wCaq+1Nu37u8Qz3ecnd7TbTxvUhix8sYvpzcsw85xdTdtTIqIg4QgW/CPPDCU3CZ6XlExAF2EJoRvaA/5fZ9Ck71AbWVLYmbLtNMP+j44LACI7ceUzjKyH1TQGFUJE00wZnwBAyHSjjb9Dwi4gAttJwXvXS9vaE/5fZ9ir82Gn5Rr432KNft+cYhpxu5dVnhSCP3TQGFUZF0EIJJsBRK4BUw800oIs4y4HL7vgQm+Vxeq+GN9o5QLCETZqQpBxw7Ylhhim+al+sP+s2syKaAwqiI422CE+EN+AKsgqNMzyMizjCIcvveufOtwpO9dpTQMi2O9sjjzpl12KQU3zSDXxhFYVTE6dbBibAWDoG/wIGm5xERZ4iX2/vxP+l+qP/l9n3q3FOvgqdefXX/L4/KD6byjpl69lKcwqiIg70FE2EDTIQ/wz6m5xERZ+gqt3/IPe8r1tEJvHJwmg8ILWu1owm8aqbJcblTvDiqlVERMWE5nA618DV4EQKm5xERZ+hebj/VSnAk8h+Q4x+X0xGKNbzeltgrZ5jTxx29z/ARKbtdBm+lR2FUxKGegn+HRvgWLIZhpucREWf4q/23IZbb96nzKKZlCqO9cVuuc1O4OJrBjfcojIo40T1wPrTDVfAI5JieR0ScYb294T+iFw6x3L5P8ddGQ0vVNtqHU754ZHlBKuqWPO6c0cNT+opqiimMijjMz+EKsOE2uIMh1FeLSEbZQWhm7Ns7CA293L53hSd73flW43uR9hq9N9obl+U69/DJKbhR6fARLiuTA1sm/9lE0kwULoNfQg4shJ+YnkdEHCOx5fa9c3mtwCQfNrUvaE99H076woSxRQko1epdZr8wisKoiFO0wTnwG/DD7+Ei0/OIiGMkvNy+T/FzQUMqeOqLZVnnJ39xNLN7nVAYFXGEnTAdfgdFsBzOMD2PiDhJvNx+BMFn3I8mpNy+T/GCp/CK1libnYLbpbXj9z10v0BpUm+hMCoiSbYVToWXYR9YCRNNzyMiTtJVbv+E+8Hx1gGpual3rDvvUE+00W54rT01d0xfFtb5E6Yk9RaZXTKKwqiIYf+Ek+Bd2B/+AoeZnkdEnKR7uf1R1oRU3rrzKCa9NtoPx445+IDiMUm6uIWV2b1OKIyKmPQhHA+fwFGwGr5geh4RcZI/239JXrl9nzrbRitV8NQ3C+v8Ccl6c3RkXpE3J4n71ZxAYVTEkNVwMmze9Yw+w/dKisjAvGuvOS/63aSW2/eu4DhvTtDVvK6j5bOO1N8d2NoYml057/cfvdLakQavChxd9qXxI/dN7DUtrFH5wRP2zfxHZmrTFjHhefgGtMB/wOPgNT2PiDjJenvDedFLW2hJarl97yw3wcm+bU81hypby67IT/HdtzaGrn9xwbam8N9rqxZ/9OezDzl1+kHH5bodvUB4/uFT5qx4YNAfz3G5ywpGjikcVVYwcmzRqPLCkrKCkb6c3ARO6FgKoyIp9yhcCh3wXbgP3KbnEREnSVm5fZ+CU33bnmquTXkY7Uqi8f9a17rzoXf++Ie1r8485LSpB3zF43ZodDmi9MB/K9nvo23r+/Ob83P9ZQUjxxaNLi8cWV5QMrZo1Kj8YGY32/fCoX9HRTLWnfATsOEGuMn0MCLiMKkst+9TcJoPF/Wr2mIttsufoky8WxLtEmpu+M1bS37/0auzDj39q/t/OcflxJ/jvzlh6vXLF+z56yPzisoLSsoLS8YWjYovfwb8SS+LTSMKoyKpYsO1cDtYMB9+ZHoeEXGYrnL7/ayxqSm3752nxFVwTG7Dm+3hl9vim+uTrack2mVHU929b/z+d3995ZzDJp027mi3w5YSDx097ojSA3c01e8KnSXxx+5+j17G6o3CqEhKdMCl8CjkwiNwnul5RMR5Pi+3d6Wo3L5PwQpfw5vtocrWFITRPpNo999591+efvrDl889/Kun7HeEo55u3zTpu6ZHSD8O+vsnkrHiG5UehTz4o5KoiOxF93L7/awE78setOIKP1Cb/IKn/ifRLpt37pi7+snLn7195fr3bFsnRaUxhVGRJKuDyfBHKIaXILnndIhIWjJYbt+7/CM8uaPcbRujTR9GkneXQSTRLlUN229f9fgPn7vztQ0f2CiSpiWFUZFk2gwnw2oYA6vgWNPziIjzLLNX/CD6E1Pl9n2wCEz1ArWVyTqKaShJtMuGui2/XvnYFc/d9eamjxRJ047CqEjS/B2Ohw/gS/AafMn0PCLiPO/aay6Jzo4SNVVu36f4k/rwi0kJowlJol3Wh2tueuWRKyvnv1P9t4RcUFJDYVQkOd6FifBPOBZWQbJOLRaRNOaEcvs+BSZ7LY9V/1p7R30ssVdObBLt8mntpl+89PDVS+95b/Mnib2yJInCqEgSvAKnwVaYAi9Bsel5RMR5nFNu37ucQlfhxFw7YoeXtyXwsklKol3Wbd8w508PXLPs3g+3fJakW0iiKIyKJNrvYRo0wHnwR8gzPY+IOE9Xuf3h1iHGy+37FO91SuCe+mQn0S5rt62/fvmCn614MNk3kqFQGBVJqAdgFrTBj+B/IStOFRaRgelWbr/v0+5HjJfb9ykw1QeElraSiAf1KUuiXXY01aXsXjIICqMiiXMzfA+icDPMx6nP3ETEsG7l9o+MIGh6nL7l/ZvHO9Yd2RZreLt9iJdKfRIFygtLUnk7GSiFUZFEiMEVMAfc8Bv4qel5RMSpnFlu36fOPfXLh7Sn3kgSRWHU8RRGRYasHS6Ae8ALT4OOghORHiyMPe7Mcvs+BSt8QGgIbaOmkigwRmHU2RRGRYamCf4dnoACWApfNz2PiDjVMnvFdbEbHVpu35fAaV6X32p4uz2ybTDvjRpMomhl1PEURkWGoBZOh+UwCl6BU03PIyJO5fxy+965/FbgNC8xQksHvDhqNomilVHHyzE9gLPYz5xregRJH5tgMqyD/WA57G96HpHk0Bfj0KVFuX2fAlN9tZWttZUto741bEAf/K9X/8dgEh2RV+TL8Zq6u/SHVkZFBmUtnADr4DB4TUlURHrUVW5/mnWSk8vt+xSc5gPCy9vsjoF98KT9TL4dq2VR51MYFRm4N+Ek2AQnwkrYx/Q8IuJUXeX2R1kTHnPf5/By+975x+UMG5/TUR9reGNgRzFVHHRCkc9Yl2p5gcKo0ymMigzQMjgdauEMeBGKTM8jIk7Vvdz+CfeDfvymJxqqYIWfge+p9+Xknn3IKUkZqB+0Mup8CqMiA/EEnAlNcBH8gfT/N4uIJFHaldv3ade5oAPewzT9oOODwwqSMFHfxhSOMnJf6T+FUZF+UjqcggAAIABJREFUmw/fhHa4BhaC2/Q8IuJgN8fuTMdy+94VTszNKXQ1fRhp2xgd0Adz3Z5vHHJ6kqbqXVnhSCP3lf5TGBXpBxtugB8DcAfcqqM+RaQ3C2OP3xW7Lx3L7Xtneayi071AbWXLQD875YBjRwwrTMJQvcnL9Qf9ZlZkpf8URkX6EoXL4FeQA4/CVabnERFni5fbA+lYbt+n+J76QRzF5HHnzDos1X819MJoWlAYFelVG8yEB2AYLIYLTc8jIs6W7uX2fSqe7sOibmVbrM0e6Ge/uv+XR+Wn9N1Znb2UFhRGRXrWANNgMQRgOXzN9Dwi4mxd5fbnWF9P33L73uWWuvOP8EQb7fqVAyt4AnJc7hQvjmplNC0ojIr0YCucCq9AKfwZTjA9j4g4W1e5/VRr0nz3Lelbbt+n4go/g9pTD5w+7uh9ho9I9EQ90lb6tKAwKrI362Ei/B8cCK/BIabnERFn615u/5B7njuj6zaCFYN8bRRwW65zU7g4qsb7tKAwKrKHD+AE+DscBavhC6bnERFny7xy+94VHJObE3S1fNbRvG6AB4MCcMoXjywvSEXdksedM3p4JtS7ZjyFUZF/tQpOhs1wOrwC6qcTkV7Z2D+KXpth5fZ9cBGc6gNCLwy44AlwWa5zD5+c6Jn2onT4CJelnJMG9DdJpJs/whSog7PhBTB2lrKIpI2bY3csshdnWLl9n+JHMYVeHPAepriTvjBhbNHohE60F3phNF0ojIrs8ih8HVrg+/AU5JqeR0Qcb2Hs8Xmx+zOv3L5Pwak+y039yrZo44ALngDLss5P/uKoep3ShcKoCAC3wcUQhZ/BfTrqU0T6ltnl9r3LCboKjvPG2uzwisFsYwKO3/fQ/QKliZ1qNwqj6UJhVLKeDVfDtWDBPXCj6XlEJB10ldv/p+vyjCy379NQ9tQDFtb5E6YkdKLdqWQ0XSiMSnbrgIvgTsiFJ+CHpucRkXTQVW5/sev8G1xZekZwfA9T7QutDOZBPcCxYw4+oHhMImfqxsJSr1O6UBiVLNYMM+AxyIfnYJbpeUQkHXQvt7/F9XPT4xiTf7gnt9TdXhNtfD8yuCtYWOdPSNaboyPzirw5niRdXBJLYVSyVRgmw/NQDC9DKmpGRCTtZVW5fR8siqf7gNCyQT6pB44u+9L4kQmuILCwRuUHT9j3sMReVpInx/QAIibUwBT4K+wLy2C86XlEJB20E7kg+v3sKbfvU7DCt/mhplBl69jrBt+Ed/7hU+aseGDQH89xucsKRo4pHFVWMHJs0ajywpKygpG+HPWhpBOFUck+n8AU+CccDC9Cuel5RCQd2NhXRK99xV6VReX2fQlM8rm8VsPrbR2hWE5wkM9ajyg98N9K9vto2/r+/Ob8XH9ZwcixRaPLC0eWF5SMLRo1Kj+oZvt0pzAqWeZdmAbb4Th4Hv3bRET66ebYHc/Yz2ZbuX3v3PlW4cne8PLW0LLWkvOGDfo635ww9frlC/b89ZF5ReUFJeWFJWOLRsWXPwN+HUaSgRRGJZu8BDNgJ0yDZyDP9Dwikiaytty+T8Ep3vDy1trKIYXRQ0ePO6L0wB1N9btCZ0n8sbvf403gqOJYCqOSNX4H50M7nA+PgDZZymA1NzcDw4bt/q/enn5d0l283N7CysJy+z4Fp/s/u6o+tKyV2JA2Rd806buJG0rSjF6zkOywAM6BdpgNv1USlSGZPXt2RUXFpk2buv/iunXrKioqfvGLXxgaSpKlq9z+BtfV2Vlu37th43P843I6QrGGt9tNzyLpKjFhtLm5Ob4k0M9fF0mpX8LlEINfwV1gmZ5H0tyMGTOAFStWdP1KbW3tnDlzRowYoTCaYbqX2892XWZ6HIca4lFMIokJo1onEIeKwQ/h5+CGB+H/mZ5HMsK0adMOOOCAF154If7DdnNz86233grMnTtXz+gzicrt+6m4wgfUVraYHkT6p63J3vyx/beXY689Fqu8JfrbH0Tnz4j+8tjo7cYKtxPzzuiMGTNuu+22FStWfPvb347/itYJxLx2uBAWgQ+egBmm55EMEv/Sq6ysnDlz5qJFi95+++1rrrlmzJhkHWwoqdfAzm9Ev61y+/4oPNnrzrca34u010RzS/UXyhk62uy6GsI1hKrscBXhGruuhtAmO1xDS/3ePzKsKLUjfi4xYXTatGmLFy9+4YUXZs2aNWzYMK0TiHmN8HX4ExTAH+Fk0/NIZol/6T399NPAY489duGFF06bNs30UJIw7UQujH7/ffuvKrfvD5fXKjrFW/t8a+0LrftcopqSFIpFadhmhzYSrrbDNYSrP8+dDdt6/JTHZwXLKSq1AmUExxAoswKlFJVZQWO12wnbTa91AnGQHTAd3obRsBRUwyJJEP/Su++++2bMmNH1UEgyQLzcfpX9usrt+y843Vf7fGtoqcJocuzc0Zkyw1X/kjvrtxLr2PtH3B4KR1uBMorHWkWlFJVawTICZVZRKfnFqZ2+bwkLo1onEKfYAFNhHXwRlsM40/NIpps82diLVpIMKrcfhOIK/6fU1b3UZkdsy6NdooPS0mCHqwltij9ej+dO6mrscDWRtr1/xLIoHGUFyjtTZvGYXbmznIIS0udgqkT2jGqdQMxbC5OhGibAUhhteh7JUJs2bVq4cOGIESN27NixfPny8ePHm55IEkPl9oPjHevOO9TT9GGkfnV70alqqu9ZpNUOVRGPm6FN1MVf5ayyw9W07uzxU3mBzsQZLKOo1CoqJTiGQKlVuA85uSmcPlmSUnqvdQIx43X4GoTgZFgCxl7FlgzX3Nx80003ATfddNPcuXMXL148Y8YMvZWUAbrK7e91365y+4EqrvA1fRiprWxVGCUaoX6LHa4mVGXX1VBXY4c2db7KuXNHj5/KHWYVj6GozAqUEigjUG4F4sucY8jN8LeWExZGtU4ghi2Fs6EZzoSnwGd6Hslcc+fO/fTTT++8887x48fHnwgtXrz4iiuu6PoNmzZteuONNxobGydNmqSQmi66yu3nuH4y0zrT9DjpJ1jh23jLzlBly7g7Ck3PkhK2TcM2u+tJerjKDu/KnfVbsWN7/1SO1yoqJVBKoMwKlBEoteK5s6iUvEBq/wAOkpgwqnUCMexx+DZE4DvwG9TBIsnzyCOPvPTSS9dcc82RRx7Jrtflu3/prVu3bs6cOSeeeCJw5ZVXzp07V1+Gzqdy+6Er+Io3p9DVvK6j5bMO/7gMOmy8KWzX1RCussPVhOO5s5pQlV2/mY4eDp1yuSncxwqOoajUCpQSKLcCZZ271wtKsPRO7e4S84+L1gnEpHlwJdhwHfyXDliSJFq6dOmeGzT3/NK7+OKL47/hr3/9a/cCZnGmGrbMjF2kcvshsnIITPZuf6YlvKzV/4N80+MMUHtL5xuc4Ro6d6xXE662Q5to77nMf/iI+DJnZ+4sKiUYz5374MqgOJ58CfiLpXUCMcaGG3YF0Ltgtul5JKOtW7futttuO/3003cLl7t96Y0fPz7+nlJtbW04HN5///0NzSv90sDOWdGL19sbVW4/dMUV/u3PtISWtpY6M4x2tNv1mwnXdO5Yr6uxa6sIV9l1NTSFe/yUb7gVKCNYvmuj+phdD9nL8WT927EJMtQwqnUCMSYK34OHwQMPwwWm55FMN378+MrKyr0e5PHAAw80Nzd3/59qa2uvv/76E088Mf5zuDhTvNx+rf2xyu0TIjjNh4vwy22xFtvlN/SUyo7RsC2+Y92uq6F2kx2u6nyts2Ebtr33T3m88SfpnSkzUGoVlVI81gqU4Rue2j9ANhpSGNU6gRjTCufBYhgGz8B00/NIdujlSLk9k+ghhxzS/W0lcRqV2yecp8RVcExuw5vt4Zfb4gfWJ1FjrV1XQ7jaDlVTV925dT1cTf0WopG9f8SVQ9GuVs746mb8/KGiUoaPSO600qshhVGtE4gZDXAGrIQgPA/HmZ5HpJt169bNnTtXSdT5VG6fDMEKX8Ob7aHK1sSE0bYmO1RFXfzMoap4QRJ1NXaoikhrj58qKOl8lbOzm7O88/F6QQkuvYbhREN9TK91Akm1LTAN1kAZvAj/ZnoekW7ir8h/4xvfOO2002pra/1+fy9fkmJQvNw+F88T7gdUbp9Agcm+f/6sobay5YD+Vz13tMXPHOrcMBTv4wxtssM1tNT3+Cl/oRUoJTjGij9bD5YTb0oqKiVHr3KmmVTs9tI6gSTMP2AyfAbjYRloLUMcZuHChTt27Ljvvvvuu+8+YMaMGfrec6Cucvv57ltPso43PU5GKTgm11PiatsYbfookvdvns//h1iUhm12aNPnG9Xjh63X1dCwrcfLeXzxdU0CpVZwbOfj9aIyK1iONy8FfxxJjaSHUa0TSMKsgWmwBY6BShhpeh6RPfziF79oafm8CMbv14YYx1G5fXI17din4rOmV9e3LarzH1Frx9c7w1XUbyXWsfePuD0Uju7csR6IP1Iv63yVM784tdOLGUkPo1onkMRYCWdBHUyCxeDI2hCRYcOG6edtJ1tnf6py+wRo3WmHqjoLksI1driKroOIIm1j/DANaomt6PYRy6JwlBUoo6jMCpRRPGZXU1I5BSVYLmN/FnGApIdRrRNIAjwL50ArzILHINf0PCKShmrYMjOqcvt+i7TFe+AJ13QWwtfVdO5Yb93Z46fyAgzfJ/TWyPbGfUb/5/7u0WUExxAotQr3IUff3bJ3SQ+jWieQoXoYvgdRuBzuAf38LCIDFy+3r2GLyu3/RTRC/ZbOXqS6XUerx1/l3Lmjx0/l+q3gGALl8YKkzv8Q37Ge6wc2n7a97tU27+XFI7+sFSjpm46rEme7Bf4f2PAL0EKGiAxKtpfb2zYN2+yuJ+nhKju8K3c2bCMW3funcnKtorJdpw2VESi14rmzqJS8QO83DEz21b3SVlvZMnJmlv2llkFRGBWnsuFKmAdumA+Xm55HRNJTFpXbN4XtuhrCVXa4mnA8d1YTrrHrqulo3/tHXG6K9uk8Wj1QSiB+tHqpFSijoARrkKcoFVf41l9fH36xDRsMncQkaURhVBwpAt+B30Iu/Ba+YXoeEUlb8XL7Aob/zv0/mVBu397S+QZnuIZwFeFqO1xDXbVdu5H2lh4/NXxEZw98PHcWlRIstwJlFI7G7enxU4OVd6jHO9bdtjHa+F4k/8jEX18yjMKoOE8zzIQXYDgshtNNzyMiaaur3P4x94JDrYNNj9NvHe12/WbCNZ071utq7FD8tc5qmsI9fso3vLMgqWjXG5xdr3J6Ut0DX1zhr1nQWFvZojAqfVIYFYcJwdfgdRgJlXCM6XlEJG11L7c/0XLewcF2jIZtdqiqc6N67abPH7I3bMO29/4pjzf+JJ1AmRUo7zxzKDjGCpbjG57aP0BvghW+mgWNocrWfecUmJ5FnE5hVJykGqbAR7AvLIcDTc8jImnrdfttp5TbN9badfGzLndtIQptssPV1G8hGtn7R1w5FI3qPFo90JU7y6xAGcNHpHb6QQqc5nX5rYa32yPbYp4S1aBIbxRGxTHWwVTYAIfAMigzPY+IpK219sepLrdva7JDVdRVd545FNpI5471KiKtPX6qoKTzVc7Pc2e5FRxDQQmu9C6fcvmtwhO94eWtoaWto76lhkfpjcKoOMPbUAHb4TiohD5qQ0REelTDllnRixvYmfhy+462+JlDhKvtUBXharuuhtAmO1xDS32Pn/IXWoFSgmM+z53BXY/Xc1L9KmcqFVf4wstbQ8sURqUPCqPiACtgBjTC12AR6FtLRAYrAeX2sSgN2zp3rMcTZ7iqswe+YVuPn/L4rGA5XTvW44/Ui8qsYDnevKH8idJXsMLHjwktb7WjWOm9zivJpTAqpi2CC6EdLoCHQdsuRWSwBlZuv3PHrlc5N3UWJMVzZ/1WYh17/4jbQ+Hozh3rnVmzjECZVVRKfnEy/kRpzT8uZ9j4nOZ1HQ2vtxVOzOQ1YBkihVEx6j74EcTgSrhD3cgiMnhd5faljP6D67HOcvvWnZ9vGArX2OEqug4iirTt/UKWReGoXd3v5RSP2dWUVE5BCZb24gxAsMLfvG5nqLJVYVR6oTAq5vwcfgkW3ALXmh5GRNJXpM0OV9/kmvdMUWVBR+5TL40v23BVNFRlh6tp3dnjp/ICVlEpgXKruHxXD/wYAqVW4T7k5KZw+kxWXOGrunNnbWXrfr8uND2LOJfCqJgQhSvgPnDDA3Cx6XlExPliHdRtscNVhKp29cBv6nyVc+eORyd6757p90R55Dehgz5Z8nlFZ67/8zc440erd/XA5+rY9KQrOD7XnW81fRhp2xj1jtV7o7J3CqOScu3wTXgG/PAUnGF6HhFxlPqtdteT9HCVHd6VOxu2EYvu9RPPH+n/f2d7Lbj7jUNP2u9ojiy14rmzqJQ8dXOY5PJagUm+HUtaQsta9/lulm7kkj4pjEpq7YQZ8BIUwRI42fQ8ImJEU/jz04bC8dxZ3bnM2dHTq5wuCkdbxWMpKu3s4wyUUVS6esSW7/uujBKZ4/rJrJNTUikqAxGs8O1Y0hJaqjAqPVIYlRTaDhXwNoyGF+Ew0/OISFK1t3QWJIVrCFd17livq7ZrN9He3OOn8kdYgV0FSZ2vcpZbgTIKR+PevW5jrf3xhdH/104kdeX2MkDF031YhFe0xtpsl1fbVGUvFEYlVTbAZPgE9ocX4Yum5xGRhOhot+s3E64htGnXq5zVnR1JTeEeP+Ub3lmQVLTrDc7Arh3rHl8/75zEcntJnNxSd/4Rnsb/i9SvbAtM7u/fXMkqCqOSEn+FqVANE2AZjDI9j4gMiB2jYZsdqqKuxq6roXZTZ0NnuIqGbdj23j/l8cafpO86Wr1zx7oVKMU/1L3VCSi3l1Qpnu5v/L9IbWWrwqjslcKoJN/rUAFhOBWWQIHpeUSkJ421u3rgq3flzo12uJr6LUQje/+IK4eiUd2OVt+VOwNlDB+ZpDG7yu0Ptg560v1QH+X2YlpginfDzYQqW7nb9CjiSAqjkmTPwyxohhnwBOinYhHj2prsUBV1nWcOEa7qXPIMVRFp7fFTBSWfH63elTuDYykowZXSVcnu5faL3AuL0X55pys4zpsTdLV81tHy9w7//goesjv9MyHJ9Fv4DkTgUliAHqOJOEHHnMN7fJvTX2gFSgmO+Tx3Bnc9Xs9xygk6N8fueMZ+toDhi9wLSxltehzpm+UmONW37Ynm0AutZVfkmx5HHEdhVJJmLlwNNvwUbtJRnyJOYZWMo7mOom471oPlFJVZwXK8Ti/feTD22LzY/bl4HnMvONg6yPQ4SRFrbGx+//2WNWvaPvsssm1bNByOtbYCLp/PHQh4Skq848b5Dz982IQJrvy0CXbFFb5tTzTXViqMyl4ojEoS2HA93AoWzIMfm55HRLpxX/2i6REG6Rn72etjv7Sw5rtvPdE6zvQ4CWZHIjtffbVh+fKmt98mFtvzN0QjkejOne0bNza98w6LFuFy5R19dMGUKcNPOcXy7F565TTBqT7LTf3Ktmij7c7X4oT8C4VRSbQofBcWQi48AueZnkdEMsIq+/Urotfa2HNcP5lpnWl6nESy29rqliwJPf10x/btA/hYLNb01ltNb721fcGC4KxZRWedZXmd8irFnnKCroLjvPWr28IrWkecpQ1n8i9cpgeQzNICX4eFkAdLlERFJDHW2h9fGP1+RpbbN73xxvqLLtp2770DS6LddOzYse3ee9dfdFHTG28kdrbECkz2AqHKnjfJSbZSGJXEqYNp8EcIwkswzfQ8IpIRMrXc3m5v3zp3btU110Sqq4d+tUh1ddU112ydO9dubx/61ZKhuMIPhF5UGJXdKYxKgmyBk2EljIFVcKzpeUQkI3SV259gHZtJ5fYd4fDGH/6wbsmSxF62bsmSjZdf3hHu+ewrc/KP8OSWuts2RZs+7KGzVrKV3hmVRPg7TIF/wHh4EcaanicLZOR+W5HddC+3/1/3bzKm3D5SU1N11VXtiVgQ3VPrJ59suvzy8rlzPfvsk4zrD55F8XTf5oeaaitb8w51+o4rSSWFURmyNTAVtsKxUAnFpufJaJm931aku93K7QsYbnqixOjYvn3T7NmRLVuSd4v26upNP/7x2HvvzRmZrEOwBidY4dv8UFOosnXsdRnyd1MSQmFUhuYVOAsaYDL8HrQGlzTZsN9WpLsbY7dmXrl9rLW16rrrkppE4yJbtlRdd93Ye+91+Rx08F1gks/KtRpeb+sIxXKCelFQOukfBRmCxTAdGuBceE5JNImyZ7+tSNy82P33xB7MvHL7bffc0/bpp6m5V9unn26bPz819+ond75VeEKuHSW0TNuY5HMKozJYD8JMaIUfwf9Crul5MlS27bcVAZ6xn705dkfmlds3vfFG/XPPpfKO9c8/77SfP4srfGhPvfwrhVEZlF/B9yAKN8J8/XOULFm431akq9z+BtfVmVRub7e3b7377tTfd+u8eY764TMYL3ha1speXnqXLKUQIQNkw2y4AVxwP/zM9DyZK1JTs+nyy1vXrUvGxeP7bSObNyfj4iKDlsHl9nVLliTk+cZARWpqEv4D7VAMG5/jH5cT2RZreNtBEVnMUhiVgWiHb8Ld4IWn4Hum58lc8f22SWp+iYvvtx30S6giCddVbn+WVZFJ5faAHYmEnnrK1N1DTz7psMVRHzqKSbpRGJV+a4Kz4AkYDi/A2abnyVwp3m8bLygVMaur3P5E67gF7jszptw+buerr3bs2GHq7h21tTtXrjR19z0Fp/uA2soW04OIUyiMSv+E4HRYCqPgFTjN9DwZLcv320oW6l5u/5h7QS6Z1onb8OKLWT5Ad0UneV1+q/G9SHtN1PQs4ggKo9IPm+BEeBO+AH+Go0zPk9G031ayTZRoRpbbd4k1Nja9847ZGZreeSfW2Gh2hi4uvxU4zYtN+E9tpmcRR1AYlb6sg4mwFg6Fv8CBpufJaNpvK1noutiNmVdu313zmjV7PS8tpWKx5jVrDM/QTfy1UT2plziFUenVmzARNsJEWAkOO+g482i/rWSbebH7F8Yez7xy++5aPvjA9AgALe+/b3qEzxVX+IHw8jY7YpueRcxTGJWeLYdJUAtfg+UQMD1PptN+W8k2mVpuv5u2DRtMjwCOGSPOO9add6inoz5Wv1pfO6IwKj15Cv4dGuEiWAx+0/NkAe23laySqeX2e4pUVZkeAcDIU5de7NpTrzYPURiVvboHzod2uAoWQo7pebKD8e2uxgeQ7NFVbv8910UZVm6/p45QyPQIANH6etMj/IvglHjbqF4bFYVR2dPP4Qqw4Xa4AyzT82QH7beV7NFVbj/TOvNXrhtMj5N0saYm0yMAxFqcFfsKJ+bmFLqa13W0bVTBU7ZTGJVuonAZ/BJyYCFcbXqebKL9tpIlupfbz3ffaunn3WxleazAZC/aUy8Ko/K5NjgHfgN++ANcZHqeLKP9tpIN2mjP7HL7vXLl5ZkeAcDld9y7//E99ToXVBRGBYCdMB1+BwFYDv9uep7s45CNrg4ZQzJSlOjF0R9lcLl9T3KCQdMjALgLC02PsLvgNB8uwi+3xVpU8JTVFEYFtsKp8DLsA6/CRNPzZCXtt5WMd13sxmX2igwut++Jp7zc9AgAnrIy0yPszlPiGn50bqzFDr+so5iymsJo1vsnnATvwgHwFzjM9DzZSvttJbNlQ7l9T7xjx5oeAcC7776mR9iLXXvq9aQ+qymMZrcP4Xj4BI6CVfAF0/NkMe23lQyWJeX2PfEffrjpEcAxY+wmfi5oeLnCaFZTGM1iq+Fk2AynwiswyvQ8IpKJusrtb3Rdl9nl9j0ZNmECLtP/tnW5nBlGC47J9ZS4Wj7raF7XYXoWMcb0/z3ElOdhMoThbFhK1mwkcC7tt5WM1FVuP9t12Q9cl5gexwxXfn7e0UebnSHvqKPcwx35Re8iOE3t99lOYTQrPQozoAW+C0+B1/Q8ov22kom6l9vf4Mrq4uKCKVOyfIBexAuedC5oNlMYzT53wsXQAXPgN+A2PY8A2m8rGUfl9t0NP/nknOJiU3fPKS4efsoppu7ep8Bkr+WmfnV7R73pgz/EEIXRbGLDT+BqsGA+/NL0PNKN9ttKJmmh5ezoRdlWbt8LKzc3eO65pu4ePOccKzfX1N37lFPoKjjOa0fs8J9U8JSlckwPIKnSAZfCo5ALj4Kxb0XZO//hh7NokekpHLrfVtJLlOgl0dnv2muSWm4fa2xsfv/9ljVr2j77LLJtWzQcjrW2Ai6fzx0IeEpKvOPG+Q8/fNiECa78/GQMMFBFZ50V/sMfIjU1Kb6vp7S0aMaMFN90oIIVvvrVbeEXW0eerdfWs5HCaHZogVnwHOTD72Gy6XlkD537bc0eT+/U/baSXpJabm9HIjtffbVh+fKmt9/e6/9fopFIdOfO9o0bm955h0WLcLnyjj66YMqU4aecYnlMLtBaubmjZs+uuuaaFN931I9/7ORl0bjiCt/66+trX2jFJrtf6MhSCqNZIAxnwGoohko41vQ8sjfx/bZNb71lcAbn7reV9JG8cnu7ra1uyZLQ0093bN8+gI/FYk1vvdX01lvbFywIzppVdNZZltfYns28r3ylsKKivrIyZXcsnD4977g0KHbNO9TjHetu2xhtfC+Sf2S2v9SRhfTOaKbbDKfAahgLq5VEHc34dlfjA0i6i5fbu3H/t/v2xJbbN73xxvqLLtp2770DS6LddOzYse3ee9dfdFHTG28kcLCBKvnxj70HHJCae3kPOKBk9uzU3Gvodu2pV8FTNlIYzWifwvHwARwMq2G86XmkV9pvK2mtq9z+FtfP/8P690Rd1m5v3zp3btU110Sqq4d+tUh1ddU112ydO9dubx/61QbB5fOV33KLZ3SC317Yk2f06PJbbnH5fMm+UaLsahtVwVM2UhjNXO/CifBPOBZWwRjT80hftN+R1LNxAAAgAElEQVRW0lf3cvuLXecn6rId4fDGH/6wbsmSRF0wrm7Jko2XX94RDif2sv2UM3LkmHnzPKWlybuFp7R0zLx5OSNHJu8WCVd0qtfltRrebo9sV8FT1tE7oxnqFTgTdsI0eAYccbiPAdpv209psd9WHCtJ5faRmpqqq65qT8SC6J5aP/lk0+WXl8+d69lnn2Rcv3ee0tKx991Xfc01rZ98kvCL+w48sOy22xxyjkb/ufOtwpO94eWt4T+1lpw3zPQ4klIKo5nod/BNaIPz4BHIvtUu7bcdqLTYbyvOtIPQmdHzE15u37F9+6bZsyNbtiTkanvVXl296cc/HnvvvUZWEHOCwbH33bdt/vy6P/4xgZctOuOMkiuuSNP/OxdX+MLLW2srFUazjh7TZ5wH4Bxogyvgf7MuidptbeFFi/5xzjmbb7qp6c03+9uUFIs1vfXW5ptu+sesWeFFi+w2k8XL8f22qbxjuuy3FQdqoeW86KX/sP+Z2HL7WGtr1XXXJTWJxkW2bKm67rr4A5PUs3JzR119dflttyXk5DNPWVn5bbeNuvrqNE2iQLDCB4SWtdpR06NIaimMZpab4HsQg5vh7qxra9N+20FIr/224ijJK7ffds89bZ9+mqir9a7t00+3zZ+fmnvtVd5XvrLfo4+W/OAHg96/mFNcXPKDH+z36KN5X/lKYmdLMf+4nGHjczpCsYbXdRRTdlEYzRQxuAJ+Bm64H35qep7U0n7bwUm7/bbiKEkqt2964436555L1NX6o/75583+/Gl5vYFZs7749NP7zJmTd/TRuPr3r2aXK+/oo/eZM+eLTz8dmDXLYH9qAmlPfXaybNs2PcNeLFu2DJg6darpQdJEO3wbngAvPAlZthGlIxyuvvba1nXrEn5l34EHlt1+e04gkPAr90ekpmbTlVcmbzOTp7R0zNy5Sd3SKwOSXt9782L33xS73YfvKfdDCawUtdvb13/rWwn5qXJAPKWl+z32mEMecEd37mxZs6blww/b/vnPSE1NNByOtbQALr/fHQh4Sku9X/iC/9BD/RMmZN4pFeHlrR9M2ZF3mOfo90eZnkVSRxuY0l8TfB2WQwEsgVNNz5Na2m87OGm631Ycoqvc/mH33Yktt69bsiT1SRSI1NTULVkS+MY3Un/rPbmHD88/8cT8E080PYgBhSd73flW04eR9ppobqnb9DiSInpMn+Zq4XRYDqPg1axLovH9tklKonHx/baDfgl1iOL7bYvOOCOxly0644yx992nJCqD073cfqo1KYFXtiOR0FNPJfCCAxJ68klTb+ZIF5fXCkzyYVP7gp7UZxGF0XS2CSbCm/BFWA1HmJ4ntbTfdhAyYL+tmJWkcvu4na++2rFjR2Kv2X8dtbU7V640dXfp0rmnXq+NZhOF0bS1Fk6AdXAYrIb9Tc+TctpvOyAZs99WDFpvb/h69MKEl9t3aXjxxYRfM70GEKB4ug+L8IrWWJsT97RIMuid0fT0JlRALZwEz0KR6XlSzsh+2+EnnWQwycX32xZ9/es7X321YenSpv/7v361qLpceUceWTBtmvE+f0l3OwjNjH17OzsSW27fJdbY2PTOO4m95kA1vfNOrLHRIeexZa3cUnf+YZ7G9yP1K9sCk9X1kRUURtPQMjgbmuAMeAr8pudJObu9fevdd6f+vlvnzTO+39byeAq++tWCr341m/fbSurFy+3X2xsSW27fXfOaNf09pSJ5YrHmNWvyJ040PEbWC07zNb4fCS1tVRjNEgqj6eYJ+PauLqcHISv3Gmq/Ldm931ZSLHnl9t21fPBBMi47UC3vv68walywwrfxlp2hZa3j7jI9iqSE3hlNK/Phm9AO18LDWZpEtd9WJMXi5faFFCS23H43bRs2JOnKA+KQMbJcwXHenKCreV1Hy2cdpmeRVFAYTRM23AA/BuAOuCXrjvrsov22Iqk0L3b/wtjjfvzPuB852DooeTeKVFUl7+L9Z+Spi+zGchOcqj31WURhNB1E4TL4FeTA/8BVpucxyvh2V+MDiKRMV7n9Q+55R1kTknqvjlAoqdfvp2h9vekRBKC4wgfUKoxmB4VRx2uDmfAADIPFcIHpeYxyzn5bszOIpEDyyu33KtbUlOxb9Ed8I6AYF5jiw0X9yrZoowqeMp/CqLM1wDRYDAH4E3zN9DymOWe/reEZRJLsXXvNN6PfS1K5vUifPMWugmNyY2123ctaHM18CqMOthVOgVegDP4Mx5uexwGcs9/W9AgiSbTe3nBe9NJGmpJUbr9Xrry81Nyody5/9rXlOVXnUUzL2kwPIkmnMOpU/4CJ8B4cCKvhENPzOINDNro6ZAyRZIiX2+8glKRy+57kBIOpuVHv3IWFpkeQTsUVfv5/e/cfF1Wd7w/8BQoIA4owIoKAaIPYaiRFV00yIS3g6pVuKO2uuplt/ihttS9t96bXq+6t2Cu1pmRFuuFuoZh4dZXSwIxCb5MkQolM/gJRRH4lMAqofP/4yLmnGUCUYc78eD0f/UHz45z3mfG8530+vw5Qs5cDJ2wfi1GLdByYCPwEPAh8DQxTOh6Lwfm2RL3KDIvbd8Zp6FCz7asLTv7+SodAt7iPdXL269NcdqOpqFXpWKh3sRi1PF8Bk4CLQDSQCwxSOh5Lwvm2RL3HPIvbd8YlMNCcu+uMS1CQ0iFQOwd4x3JOvV1gMWphdgNPAPVAArAP5v0tsAKcb0vUe8Ti9mp47e7zce8tbt8Z17AwM++xQxYSBgkDudqofWAxakm2AE8CV4FFwCeAkrdAJyL7Ii1u/3GfD4IdFGgddLv/fjgq/ZPk6Mhi1KIMfMzFwcnhyuHm6/VKr6NCvUnpM58kbwLPAjeAlcBGO73V521xvi1RbzDn4vadcXR3Vz34oCK7lqgeeKCPBzukLEjfAY4DJjq33UDdAc6pt2UsRi1AG/Ay8EfAAdgI/KfS8VgwzrclMrnP2nLMubh9F/o//riCe7eEAMhY+62YODjKlrEYVdp1YC6wDnAGPgYWKR2PZeN8WyLTOtp2bP6NpRayuL3HpEl9vb2V2ntfb2+PRx9Vau/UGa84VwC12dfAjnrbxWJUUXogHtgKuAN7gVlKx2PxON+WyITE4vZXcdWci9t3wcHZ2evpp5Xau1diooMzh+pbHLfQvq4j+rZW3byibVE6FuotLEaVUwdMAf4BDAJyASU7x6yGhcwtsJAwiHpCqcXtu+Y5Y4aTn5/59+vk5+cZH2/+/VJ3cE69zWMxqpAK4BEgHwgCvgIilI7HSnC+LZFJKLi4fdccnJ0Hv/SS+fc7eOlSNotaLK+YfhA99WSjlP5dt0+lwESgGPgV8A0QqnQ81oPzbYl6TlrcPtghKKvPVjMvbn9bqnHjBsTFmXOPA2JjVePHm3OPdEcGRrk4ujo0FLS0VnHcqG1iMWp2R4GJwFlgPPAVwJkwd0jx6a6KB0DUQ9Li9pmOW9RQbMJQF3yWLnXRaMyzLxeNxkeJtljqPkdXh4FRLrjJxlGbxWLUvHKAycBlIBb4ArCIdYqsDOfbEvWE4ovbd4djv35D33jDybfX7wLl5Os79I03HPv16+0dUQ95cYEnm8Zi1Ix2ALFAA/BbYBfgpnQ81onzbYnuWvrNDMUXt++mvoMGBbz9dq9OZnLy8wt4++2+gwb13i7IVLzjXAHU7W9ua21TOhYyPRaj5vIukAi0AC8B6bCY2QJWifNtie7CZ21fvHxzpSUsbt9NTn5+gamp/UJCemPj/UJCAlNTFckkdBdcAvu43et0/eebP3/NBZ5sEItRs1gNLAJuAv8FvAXLWEHFinG+LdGdOtp2bP6Nl27ghiUsbt99fb28AlNTPadPN+1mPadPD0xNtZA7ulE33ZpT/xmHjdogFqO97CbwAvAfQB/gA+BVpeOxFZxvS9R9lra4/R1xcHYe/PLLQ5OTTXLnMyd//6HJyYNffpkXllZH3BeUc5hsUl+lA7BpLcAcYBvQD/gEmKF0PLbFZ+nSa6WlzTqdGfbF+bZkvSxzcfs7pRo3Lnjs2Ppdu2ozMq7X1NzFFvp6e3slJnrOmOHg4mLy8MgMBkx07jvAsamotbnshktgH6XDIVNiy2ivaQT+GdgGDAA+YyVqepxvS3Rb0uL2Dzjc//c+71vO4vZ3wcHFZeCsWcO3bx+yYoXqwQe7e/8LR0fVgw8OWbFi+PbtA2fNYiVqvRycHAZOdQHn1Nsitoz2jmogFtACvkA2YNGTVq2YmG9bvmxZ64ULvbQLJz+/gJQUzrclayRf3P7jPh+obGIJDwcnp/5TpvSfMuVGQ8PVY8euFhU1nz3beuHCjbq6m1evAnB0de0zcKCTn5/LsGGuY8a43n8/71JhM7zjXC9nXq3de81vobvSsZApsRjtBeeAJ4ASYDhwABiudDw2Tcy3rUhKulZaavKN9wsJ8U9O5iwHslK/XNze1v4Z9/HwcI+MdI+MVDqQu3ezsVFfWHj12LHmU6daq6pu1NXdvHYNgGO/fn0GDnTy8XEZMcI1LMzt/vsd3Vl7AcDAx13ggLrc5ptX2xxdrXLACXWIxaip/QhMBSqA+4FsoNf7kOnWfNuq9evrd+824WY9p0/3WbKEsxzISr1x823LX9zePrW1tjZ8+eWV/fubtFrc7OD+ljdaW280NLSUlTV99x22bRMjDfo//rjHo486OFnxQIuec/bt4z7WqbGgtf5Qs9cTHDplO1iMmtRh4J+BWmAS8D/AAKXjsRtivq37xImX/vKX1oqKHm7Nyd9/8NKlqnHjTBIbkfltvvn3P998xyoWt7crbc3N9bt21W7ffv3y5Tt4282bTd9+2/Ttt5fffddr1iw7n4PlHefaWNBam32Nxagt4QQm08kGHgNqgRnAZ6xEFaAaNy74r3/1Wbz4ru8X2tfb22fx4uC//pWVKFmvz9q++OPN/wRgLYvb24mmI0fO/O53VRs33lklKnO9urpq48Yzv/td05Ejpo3Nioj7gtbu5QJPNoUtoybyN2Ae0Ao8C7wHcNEJhYj5tp5PPtnw5ZdXsrObCgo67AUz5OioCg/vHxPDXjCydla6uL1ta2tpqdqwoX7XLpNsrbWi4nxSkueMGT4vvGCH44j6Rzg7+ThePXVdX3LdLZQ1jI3gF2kKbwPLgDbgVeBPvMGS8jjfluyTVS9ub6uu19VVvPLKtZIS0262fteuaz/+6P/nP/cdONC0W7Z0jvCK6XfpI33t3qtuoczbNoLFaM+0Af8OvA44AG8BXBbdwnC+LdkPaXH7Jxwes97F7W1M64UL55cvb+nxQPYOXSstLV+0aGhKitOQIb2xfYvl9Xi/Sx/pa/ZeG7qcxaiNYDHaAzeA54EPASdgM/BbpeMhG8L5tnSnnr/xB7G4fVqft616cXubcf3y5fKXXmqtrOy9XbRUVJQvXRq4caNdrYXs9Xg/hz74+euWG41tfdx50WULOIHpbl0DngI+BNyA/2ElSibT1txct23b6cTEi2vWNP3v/3ZrzCtuzbe9uGbN6Vmz6rZta2tu7uUwyeKsdnz1YYd/+rjPB65wVToWws1r187/8Y+9WokKrZWV5//4R9FhYif6ejn2H+/S1tpW94UdHbVtYzF6V34GngB2AV7AF0CM0vGQreB8W7prv3II3d3nY9tb3N5KVb3zTrNOZ559Net0VevXm2dfFoJz6m0Mi9E7Vwk8ChwC/IE8YLzS8ZBNaGtpuZSScj4pqefrpKJ9vu2llJS2lpaeb42I7kjTkSM/79ljzj3+/I9/2NX1p3dcPwA1+66hTelQyBRYjN6h08DDwDEgFPgGuFfpeMgmXK+rK3vhBVOt/CKp37WrbNGi63V1pt0sEXWhraXl0l/+Yv79Xnr7bfu5+FSNcXIJ7NNy4Ubj961Kx0ImwGL0ThwDHgZOAxFAHsAb7JEptF64UL5okclXfhHEfNvWixd7Y+NEZKx+1y6T9G/cqdYLF0x+QWvJxB2YavZeVToQMgEWo912CHgUqASmALmAWul4yCaI+ba9tPKLIObb3vUgVCLqvrbW1tqMDKX2XvvJJ/bTOOoV0w9A3eccNmoLWIx2zy7gCeBnYBbwD4DrOZIpcL4tkY1p+PLL69XVSu39ek1Nw6FDSu3dzAY+1s/RxeHKkZbrtd1bcoQsGIvRbvgQeAq4BiwGPgbs7u5r1Fs435bIxlz5/HM7D8Bs+rg7DJjk0nYDtZ/xMtvqsRi9ndeB54AbwH8CG/iBkclwvi2RjbnZ2Nj03XfKxtD03Xc3GxuVjcFsbs2p5wJP1o+1VefagD8A/wY4AqnASqXjIRvC+bZEtkd/7Fh371LRe27e1B87pnAM5nJrtdHPrrXdUDoU6hkWo51oBeYCbwPOQAawUOl4yLZwvi2R7bl6/LjSIQDA1cJCpUMwE9cRfV3v6Xu99uaVw7znnHVjMdoRPTAD2Ap4APuAp5SOh2wL59sS2aTmc+eUDgGwmDDMwytWzKlnMWrdWIwaqQUeA/YBg4CDQLTS8ZDN4XxbIpvUev680iEAgCK9LkppvxUTVxu1bixGf6kCeAQ4DAwDvgYeUDoeskWKT3dVPAAim3S9tlbpEADgxs8/Kx2C+QyY5NLH3aHx+9aWCxw3asVYjMqUAA8DPwCjgW+AEKXjIVvE+bZEtupmU5PSIQDAzat21Ezo6OIw8LF+aEPNPs6pt2IsRttpgUeAc8DDwFeAn9LxkI3ifFsiIhO6NaeeCzxZMxajAIAvgCjgMvDPwH5goNLxkO3ifFsiW+WoUikdAgA4uroqHYJZeT3eD0DdF9duNrcpHQvdJRajwDYgDmgEZgNZgJvS8ZBNs5CJrhYSBpEt6evlpXQIANBnwAClQzArl4A+qjFONxrbrnzDdUKsld0Xo6nAr4EWYDnwEdBX6XjI1nG+LZGtcho6VOkQAMDJ31/pEMytfU49e+qtlX0Xo/8BLAbagDeA/wYclI6H7ADn2xLZKpfAQKVDAACXoCClQzC39mGjdjRzy8bYazF6A1gMrAb6AB8CrygdD9kNzrclslWuYWFKhwBYTBjm1H+8S18vR33J9aunrisdC90NuyxGW4CngVTAFdgJPKN0PEREZP3c7r8fjkr/qjo62mEx6tAHXk9wTr0VU/q0Mb8GIBbIBDyBz4DpSsdDdobzbYlslaO7u+rBB5WNQfXAA308PJSNQRFiTn0Ni1HrZGfF6GUgCsgBhgCHgEeUjofsD+fbEtmw/o8/bucBKMXriX79hvdVjXFSOhC6G3ZWjCYC3wH3AF8D9ykdDNklzrclsmEekyb19fZWau99vb09Hn1Uqb0ry8nH8Z9O+Y74b15mWyU7K0Y3AFOBr4HhSkdC9orzbYlsmIOzs9fTTyu1d6/ERAdnZ6X2TnTX7KwYHQV8DgxWOgyyYxYyt8BCwiCyPZ4zZjj5KXBHaSc/P8/4ePPvl6jn7KwYJVIa59sS2TYHZ+fBL71k/v0OXrqUzaJkpZT+USSyM5xvS2TzVOPGDYiLM+ceB8TGqsaPN+ceiUyIxSiRuSk+3VXxAIhsns/SpS4ajXn25aLR+CjRFktkKixGicyN822JbJ5jv35D33jDyde3t3fk5Os79I03HPv16+0dEfUeFqNE5sb5tkT2oO+gQQFvv92rk5mc/PwC3n6776BBvbcLIjNgMUqkAM63JbIHTn5+gamp/UJCemPj/UJCAlNTFckkRKbFYpRIAZxvS2Qn+np5Baamek438b2nPadPD0xNtZA7uhH1EItRImVwvi2RnXBwdh788stDk5NNcuczJ3//ocnJg19+mReWZDP6Kh0Akf3yWbr0Wmlps05nhn1xvi2RslTjxgWPHVu/a1dtRsb1mpq72EJfb2+vxETPGTMcXFxMHh6RgliMEilGzLctW7y4tbKyV3fE+bZElsDBxWXgrFmeTz7Z8OWXV7KzmwoKcPPm7d/m6KgKD+8fE+Px6KMOTk69HyaRubEYJVKSmG9bvmxZ64ULvbQLJz+/gJQUzrclshAOTk79p0zpP2XKjYaGq8eOXS0qaj57tvXChRt1dTevXgXg6OraZ+BAJz8/l2HDXMeMcb3/ft6lgmwbi1EihYn5thVJSddKS02+8X4hIf7JyZzlQGSB+nh4uEdGukdGKh0IkcI4gYlIeZxvS0REdosto0QWQcy3dZ848dJf/tJaUdHDrTn5+w9eulQ1bpxJYiMiIuo9LEaJLAjn2xIRkb1hMUpkWTjfloiI7AqLUSJLxPm2RERkJ1iMElk0zrclIiLbxtn0RERERKQYFqNEREREpBgWo0RERESkGBajRERERKQYFqNEREREpBgWo0RERESkGBajRGStvvrqq8uXLysdBRGR+dhk3uM6o0RkrS5fvnz58uVBgwaNGjVq0KBBSodDRNTrbDLvsRglIutmk6mZiKgLNpb3WIwSkS2wsdRMRHRbNpP3HNra2pSOoQOfffaZ0iEQkaVramrq8HErTc3Me0R0WzaW9wROYCIiW3P58uWvvvrqxx9/VDoQIiIzseq8Z6Eto0REt/Xpp592+LhVtxAQEXXBJvMex4wSke2w6nRMRHQXbCDvsRglIltgA+mYiOiO2EzeYzFKRNbNZtIxEVE32VjeYzFKRNbKxtIxEdFt2WTe4wQmIiIiIlIMl3YiIiIiIsWwGCUbp9fr9Xp99x8nIrIuzHJk7ViMko176aWX4uLiysvL5Q+WlJTExcWtWrVKoaCIiEyGWY6sHYtRsnHx8fEAvvjiC+mRmpqaFStWqNVqpmkisgHMcmTtWIySjYuJidFoNPv27RPdVXq9/s033wSQkpLi5uamdHRERD3FLEfWjsUo2b74+Pjq6uq9e/cC2LZtm1arnTdvXkBAgNJxERGZBrMcWbU+bMMnm6fRaPLz848ePerg4JCWljZnzpyEhASlgyIiMhlmObJqLEbJLvTt2/fAgQNarTY+Pn7BggVKh0NEZGLMcmS92E1P9mXq1KlKh0BE1IuY5cjqsBgl21deXr5582a1Wg1g//79SodDRGRizHJk1ViMko3T6/Vr1qwBsGbNGo1Gk5WVZbAaHxGRVWOWI2vHYpRsXEpKik6ne/XVV0NDQ8VqfFlZWcYvKykpYfomImvELEfWjsUo2bItW7bk5OQkJSWFh4ejfTU+g2aDvLy8pKSkhQsXFhcXKxcpEdHdYJYjG8BilGxWdnZ2enr6nDlzYmJipAeNmw0qKytHjRqlVqvd3d0ViJKI6G4xy5FtYDFKtqmkpCQ5OTk6OvqZZ56RP27cbJCQkPDYY49VV1ffe++9SkRKRHQ3mOXIZvRVOgCiXhEaGrp3794Ob4X3/vvv6/V6+VNnz55Vq9Wurq5mDJCIqEeY5chmsGWUbFYXN2U2eKqysjI4OJg3cSYi68IsR7aBxSgRLl68OGrUKKWjICLqLcxyZMlYjBKhuLjY19dX6SiIiHoLsxxZMhajZO9qamp0Ot3gwYOVDoSIqFcwy5GFc2hra1M6BiKF1dTUeHt7Kx0FEVFvYZYjS8ZilIiIiIgUw256IiIiIlIMi1EiIiIiUgyLUSIiIiJSDItRIiIiIlIMi1E7VV5eXlNTo3QUAKDX6wsKCgoKCkpKSoyf6o09dnjsJSUlBQUF4m/pDxPS6/XGB0hEPXHbFNHNHNL1y3p+8vZSKutsX5aQUaUAein1Wc5PGJkEZ9Pbpuzs7OTkZPkj0dHRc+fODQgIAFBeXj5nzhy1Wp2ZmalQgABQUFCwb9++nJwc6RGNRhMfHx8TEwNAr9fHxcVFREQYHEgPGR97eXn5O++8o9VqASQlJVVWVqanpy9atCghIcGE+/3973+v0+nefffd0NBQE26WyG6VlJQsXLgwOjr6tddeM35Wr9evWrVKq9Xe9qS7barp4cmblJSk1Wo7u4m8CVlIRs3Ly1u/fn11dTWA9PR0kV3XrVsXHh7eezsla9dX6QCoV1RWVho8kpOTU1hY+NFHH7m5ubm5uanV6uDgYEViE7Zs2ZKenq5Wq+fMmRMWFgbg0qVLWVlZycnJlZWVzzzzjLjqjYiIMO1+jY/9nXfeOXPmTFJSkru7e2Rk5Pr16wE0Njb2ZC/iYkD+6+Xp6alWqwcNGtSTzRKR5PLlywBycnKky2y5bdu2iSvMwMDArrdjkGpMfvLW19dHRET0diVqIRm1pqZm/fr1wcHBS5YsUalUAQEB9fX1AJqamnqyl7Vr1xYWFkqlpyX8hJFpsRi1TSdOnDC4aly/fn1WVtahQ4diYmK8vb2VvaAUeXPOnDmzZs2S5+hJkyalpaVNnz4d7b807u7upt21wbGXlJRotdqkpCTReABg/vz5Y8eOfeCBB3qyF51OB0D+62Xa1ggiki65jxw5YlCMZmdnp6enA+hOFWiQakx78ur1ep1OFx8ff9db6A7LyajffvttdXX1mjVrpFL+9ddf//HHHyMjI3uyl8LCwoEDB3a2U7IBHDNqm86cOSMujiUTJ07E7Rr87npE0R29MS8vT+TNZ555xuB3ws3NbcmSJeI2IadOnQLQzWtfvV7fWQxdx3bmzBkA8rvkubm5RUZGGgTWxfY7VFxcrFarb3u/k9uOVOv+HonszcmTJ9VqtUajOXDggPzxmpqazZs3iybA/v3733Y7BqmmmydvZwxOWzFcUqPR3N3bb/s4zJtRb5sJRSkvb4329vY2rkTvKLnV1NRUV1ePHj36tq9kRrVebBm1QeXl5dXV1fK2vZqamn379gEYMWIEgOzs7IMHD7744osBAQGZmZlarXbevHk7duzIyclRq9WxsbHPPPOM9Mbdu3eLNgYAERERiYmJYujP2rVr/f3977nnnq1bt+p0uqSkpMbGRq1Wu2rVKnlCXLt2LQD5oK6tW7eq1epZs2Z1fRQXL15Ee1IzGAsVHR29cOFCkWHLy8s/+ugj8ZR8XKxer09LS8vLy6uurtZoNLNnzxYJUTr2pqamzZs3iy6kjIyMjKqkAJwAAB29SURBVIwMadejRo2SPgHx+Yj+Pvl+O/tkMjMzU1NTxYOTJ08W7dMlJSWbN2+eNm2aiEEcTmFhoYhNGtQl7a6zr4OIJGVlZcHBwZMnT05OTs7Ly5MqnjfffBNAYmKiVqsdOXIk2s/6efPmSc114pQU56yUarpz8nampKRkx44dxif1pUuXILvczczM3L59uxhPqVar582bJw3o7DBfibccOHBAp9Op1eqZM2caj2U3bUbNy8vbs2ePyHjx8fHz588X+byzTCtl1OLi4oMHD4rL+1WrVsl3PXnyZPlhFhcXi8OJjY2VmnI7C0mMuAWQlZWVlZUVHx+/ZMkS+U8YusyoBr9TBs+S5WDLqA06e/YsgOTk5MntnnrqqZycnKSkJFFHHj16VKvVitSj1Wrr6+tXrFjRv3//RYsWDRw4MD09PTs7W2wqNzd3375969atO3jw4I4dO+rr619//XVxcZyTk3PixImVK1d6enpGRERMmjTJ3d1dq9UePXpUiiQzMzMnJ2fSpEnSIyUlJTqdLjY29rZ9Z+fPnxddbHq9ft++fVeuXNmxY8fBgwfXrVuXk5Mjfm9qamqWLVtWVla2aNGiOXPmFBYWLlu2TAyNWrVqVV5eXmxs7KJFiwCsXLkyLy9PfuziKrmurk6tVsv3q9VqRU+WXq9PSkpKTU0Vn0x8fHxOTs6CBQvEGzv7ZETGl4h2iDNnzmi1WpVKBSA7O3v58uVlZWVSbMnJyVu2bJH23sXXQUSC6P4eOnToQw89BODQoUPi8S1btmi12iVLlohBir6+vgB0Op1Wq5U31xUVFYkSB7JUc9uTtzPZ2dkLFy40OKlFP7IYSxAUFAQgLy9v+/bt8+bNO3jw4MGDB8PCwpKTk8XaHZ3lqy1btqSmpo4ePXrRokVhYWGpqalSrhBMm1Hz8vJWrlwpZbysrCxRVnaRaeW/JgBEOSjttL6+XqvVilq8vLx87ty5eXl50uGkp6enpKSIb7OzkER1KxkyZIjBTrvIqNLv1Pr168ePHz9nzpy6urrk5GQubGKB2DJqgzrsi58zZ450OXjlyhUpK4mMLI3Wj4qKeuqppw4ePChenJCQIF2Ie3t7x8fHJycnHzp0SCSXM2fOyIf5i26Un376SVzT6/X67du3R0dHy1sURGa55557uj4EEVh0dDQANzc3ecNqeHh4dHR0Tk5OeXn5kSNHqqurlyxZInYRFhYm2iEKCgq0Wq3otwIQFxe3bds2MQhMOvbw8PDw8PCEhITg4GBpTJh4oyhG09LSDIaTajSarKyskpIS8cYOP5klS5ZMnTp14cKF8jeKH6TQ0NCCgoLk5OSIiAip/TguLm7VqlXp6emPPfaYt7d3118HEQminhgyZIg4+7KysubOnXv27FnRYR0ZGSlqwWHDhgE4f/68RqORl2ui7gwNDZWnmq5P3s4iKS8vNz6pX3rpJbELMXxflE2RkZHyZCjaCL7++msAHeYrvV6fnp4eERGxZMkS8ZaRI0eK8lpi2oy6Z88eAFIrqSgr9Xp9bm5uh5kWsowaExMTHBys1WqnTJki5cbMzEydTidy75o1awCkpKRIA3z79+9//vx5vV7fRUiZmZnGU8qknXadUcUw2fr6ejFzV3xQK1euLCoq4qomlobFqA0So3bkK4mIk9nd3T0hIUFkJTGgvqysDEB8fLx0Zrq6uqLzgVaiBnV3dxeZSN7tBSAgIECj0Zw4cUL8b1paWnV19dy5c+VbEIVy180MUmCii83YyJEjc3Jy3NzcRNUoEui9994rLR0iGi/37dvn6+s7evTogIAAkeXlx472oUixsbHSlqVhVeXl5aJLSF4FxsTEdFYUSp8M2n8e5GOzTpw4IX4LxQ/Piy++KH01bm5u06ZN02q1xcXF4i3d/zqI7JZIQWLc0dixY0Ufbl5eXkREhOiwFtd1og9Eq9UazCKXylNR1EqppouTF0BCQoLoYRc0Gs3777+flZUFo5P6/ffflzbY2TBN0VLr4eEhajXjfCV2odVqMzMzx4wZExoaatxHb9qMOnToUK1W+/e//33ixInh4eFSuusi08ozqij+5OWyVqtVq9UBAQHZ2dliNJd8qplUZHcREoCjR4+q1WopK8p32nVGFY/Ex8dLz4oPyuSzuKjnWIzaoOLiYoNmgJiYmKysrO3btyckJEgtCmjPHWPHjpVeaZCzxNAcqT9LnP+DBg366aefAIgOMrnRo0dnZWXV1NRcvnw5Kytr0aJFBrNcRRaQrqo7Y5DU5AOtNBpNYGCgaGyIiYlpbGzcvn37ypUrIRvhFBAQsHr16q1bt4omT2mEk/zYAZw7dw6/TJ0nT54EEBgYKHr95J+Mgc4+GbQ3pUizceW/hcXFxREREQaficiPjY2Nt/06iEiQd39HRkaKXgu1Wi3VJdKCSuXl5fjlkkbyZkKDVNPFyQugwxncHZ7UgsHlrsGwSJE0fH19O8tXAFasWPHRRx+JkawGY0kF02bU+fPno310pnyIameZ1iCjik9PtEYLUi0umkiMfzIknYUEoKysTD6VXr7TrjOqqNTlOzUYwkuWg2NGbY0YSmU88bCurk78IW9RMMi8+GXO2rJlixh4KkY47dix4/z58+IKVd73JCe6dc6dO7djxw6NRhMXF2fwAhGYfFxph+RJLSkpafv27a+++qoIY8GCBYWFhdJaAQkJCZmZme++++6iRYuysrLS0tLE45GRke+//356enpSUlJhYaHoIZIfO9rbQeWJSer9Ef/bWXtDF58MgMOHD2s0GunDkS/vJ30LciIqX1/frr8OIpIYpKApU6YAmDdvnjR/UYwoRUcnkfwaz6B+6uLk7UyHJ7Ugv9zNy8tbvnw5gIPtrly5gvZW2A7zFYCAgIDXXnttx44dq1ev9vT0XLlypaitJabNqGL2/d69e9etWxcZGZmamioNWO8w0xpkVKk1Wvr0qqurR40aBUAcrOjqMdZFSDU1NTqdbvz48dKL5TvtOqMa/07Jr2HIorAYtTUiz8qHkOv1+rVr11ZXV4tLanGxKM5GqSFQerGUs6ThSlJPjaura319vbhC7azvSWTGTZs25eTkzJ4923hMfUBAgBgMZDwpp6Sk5Pe//70Yzi8C8/b2FoM4Z86cKXUMubm5VVdX+/v7l5eXr127VgzzFx1YarVajEBav369aMMICAiIiYkJCwvT6XR6vV5+7JCNG5M+KK1WK/rExdGJPiD5x5iXl9f1JwOj/Cj/LQwLC9NqtfLh83q9PisrS6PRREZGdvF1GH/URPbMIAXFxcWtW7dOOiXlCyqJa065/fv3o/2UlFKNeKqLk7cz4qSW14jZ2dnr16/X6/XydjjRx71s2TKDt6tUqs7yVWZmpliNRKyONHnyZCkkiQkzal5eXlJSUk1NjRhSP3XqVACNjY2dZVr88tcERsv7y2txsbqLNM8MgNhseXl5FyEZH6/BTrvOqMa/U2LQxV2v20W9h930tkacusnJyQYLNWs0GtEFIwbxSN0fBotCS5e2bm5uGo3mzJkz5eXlAQEB4p6ZYvVmsXTUzJkzjfceEBAQEREhBvR0thLKsmXLrly5kpycfPTo0UmTJqlUqqampu+//150DInXSIGJZkKtVhsXF+fm5iZuNIf2BCduK9XY2Dh48OBTp06JgtvNza24uFgM5BoxYsSlS5cKCwvFuAX5scNoWoO8vSQ0NDQ6OlpsZOLEiZcuXRKrlsydO7eLT0Y6Rp1ON3nyZDENQvwWigMRUxZWrFgxb968wYMHi1uk6HS6devWdf11dOu7J7IPxqO9Rf0k/a+8ChwzZgzaa0EA33//vairxClpfNJ1dvJ2JjY2NicnZ82aNfHx8YMHDy4sLBSTqNzc3ETftLjcFcMxxW1H9Hp9SkqKWLstICCgs3x18eLFnJyc/v37T5w4samp6eDBgx0GY6qMKtbme/PNN6dNm6ZSqcSluBgG0GGmxS9/TYyX95d/C5MmTdq8efPmzZsbGxvFYW7evDk4OFhKbp0leSE9PT09PV3MYZLvtIuMavw71eHoYbIQLEZtjRjNaUB+p3XpYrHDW4PIL23FcKU5c+YAiIiIEFWmRqPp+k4eQ4cOPXPmzG9+85vOInRzc1u1alVaWlpWVpY0fEqtVsfHx//mN78REw6kwKTRVKLHPzo6OjY2Nj09PTg4OCAgICkpafPmzVLZLUYyicjXrFkjLRkoxmDhl60p8nFj0icDWZeTaMMQw6cAaDSaV199VT6Qy/iTEW9csmSJGFml0+liYmLk7Z2hoaHywWEitmXLlolZvV1/HUQkGI/2NiDvjQ0NDZ0zZ056erq0dmZYWFhOTk5gYKDxSdfFyduZ8PBwg0Qk7oSEX17uitQkmgnECqNST3Rn+Wr+/PlXrlyRp6DVq1cbD041VUYNDQ2trKyUPii1Wr1o0SLR2NxZppVnVOPl/eW1uJubW0pKisFhLly4UNyeurOQ5F+f2F1oaKh8p11kVNEkLP+d6qUbopJJOLS1tSkdA5mVWEfD+O/OHrntRuRKSkoWLlwor3273ojIX25ubgYLbXQzDEEknaCgIIMWxJKSEr1eP2jQICl9G2y2O4dfXl5++fJl4wjviPFmjWPrZjxEhG6cGgYvECeydMZJz97pdrrQWSLqpg5zAu4kBZkko9bU1IhaX97SLBgf4F1k1M4Os/s6PBZmVGvHYpRMKSkpqb6+XlrWhIiIiKhrnMBEJpOdna3VahcsWKB0IERERGQ1WIySadTU1GzevDk+Pt64c4eIiIioM+ymJ5PhcBwiIiK6UyxGiYiIiEgx7KYnIiIiIsWwGCUiIiIixbAYJSIiIiLFsBglIiIiIsWwGCUiIiIixbAYJSIiIiLFsBglIiIiIsWwGCUiIiIixbAYJSIiIiLFsBglIiIiIsWwGCUiIiIixbAYJSIiIiLFsBglov/TdLVV/p8JN3tcV2Wqrck323sbMeHhWwXTfuNERN3n0NbWpnQMRGQRMnNOztxUIH9k8QS/aeMCHx8f3MMtR7/8j9xzDYX/FX2fxqeHm5I8vfpARlF1Y/pTKlenu97IC28d2ph/Yd2TIcuefkD+uPgovnntkQlh/j2OtHeNfG5naX2z/JHtC8ITokfe0UaO66rC/i0HwKX3pvt4qeRPRb/8D5/+Lp+snNLzUImIOsSWUSK6pbyqEUDa7NHivxVThx34seaJlCMpnxzt4ZZ9+ruEeLr4eqtu/9Juq7rSnDhG3ZNKFEBNQwuA93LPGTQKXmlqAeCrNmXAvaGqtsmgEgUwc1PBh7uL7mg7F6ubxB97vj4tf7zpamvuuQbNEPeeBElE1LW+SgdARJZCq6uNCvJ4dvoY6ZFXftv63q7jy3eWBvi432ljm5zJ29VEkbRiqncPN5JRVB0V5JF7riHjQIn8wL84Vhni6TLc37PHkfaun8rr8cum0NMV9TGrcpP36OSHc1vnLzcCiArySN6jS5wSKpX4haVVAMYM9zJx3EREMmwZJaJbCsobfPq7yB9RuTo9P+O+EE+Xnd+UdX873Rx6eNuXdfECUSQFDXZHDwY7njpfB+DXjwRFBXl8/NU5+VMF5Q3hAR7G8Zh/VGXXe6yobgQwMnCg9Mhwf8/wAI/S+uY7CvX7U7UAFsRoSuub9+X/X+Oo2L6/2rBltOuN9+RZIrJDbBklIgA4XVFfWt+cNE1j8LjK1WnKvd4b8y+kXW0VDWYf7i6av7VYPLti6rBXfvug1JD24e6ij786l3uuIcTTJWmaRjTOHddVvf5J4e+m3CPGnjZdbX3zb99t+/ZiaX1zVJDHghgNgJ3flP3lhQkAlm7If/LhwCtNLcl7dKX1zYlj1H96NsK4hVIUSUMHua/84PCa/WcBLJ7gt2xmmHjlC28d8nJ3Xv3ceOn1VbVNSzfkP3a/r7y98GRZHYBRQV4LYpxnbirIzDkp2hdF3/fzUUHSK4/rqt7/x4mN+RcAiJB2fXWqvrFl9XPjUz45qtXVypt+M3NOisP5/mTVXw/89OK/3CsfePrh7qIvjlX+6dkId1enDZ8eF8Hjl62b4jWvPh0mdhri6fJ8VJDBqFah6HRtiKeLfCRuZs7JjKJqaQCDCCajqFo8azw6VjhR0ZA4Rp0QPTIqW7cpWydFIkZu3BNw6/Pv4rvz8VJV1TZt+PT4NydrxD+A56OCnp9xn/RvQ7y3s2eJyJ6xZZSIAKCyuglAf5Wz8VNjR3gBKCytarraGv3yP6RKFMCa/Wfn//lL8XfKJ0fnby1+eKR32uzRU+71nr+1WAw2PVlWl1FU7eHmDOB0RX34kj1r9p+d9dCQtNmjR/l7zNxUsClbV1De4OOl+qm8PqOoeuc3ZR9/dS5pmmbF1GEZRdUxq3KNQxJFUvKnP9Q2tkjDW2NW5VbVNkmBSX8DWP3RdwXlDdMmDpdvRBoYGjtheIiny6ZsnXhc9H0H+NxqDszMORn2bzkHfqxZ92RI2uzRVVeaY1blvpd7rraxBcDeoxcNYhPFn8rVeYhalVFUfeTHSump/MKK+VuLIzRejfqWwc/vlipRADM3FUhjc784Vll1pTkh+Wsvd+e02aOHDnBevrM0M+ek8efwzcma0vpmh4RPpP9mbipIHKMWlf3pivqd35R5ezi3ZT7dlvl02uzRy3eWGg8nlQ8M/fUjQbnnGqR9aXW1IZ4uYkpT19/d6Yr6yFc+3/btRekfwPKdpdK/DfFeg2df2ZRvfEREZIfYMkpEAHDiXC066pAFcO7SreaxVzbl555rWDzBb+XcB0VL2NIN+RlF1S8WVoSF+CzfWZo4Ri21R44dUTR0kDvaC8ewEB8A//6hFoB8Wv1w36PijVIMmiHuUkOjp7vz8p2l+YUVBrPatbpaAL9+JEhq6XzioYqH13614dPjq58bP+k+3435F74/WSXaYvMLKzbmX0ibPdpgnvgXxyoBDPZSqVydkqZp5m8t/vzwmcfHB8v7pqtqm17L+CFxjDrt/z0qmvGenT5GTORPGuHV4dBVaWbVfRqfqCAPEarwce5PIZ4uz8+4b/qKzyFrp8wvrHhmw/++l3vu+Rn3ARANmdKnNG3i8MHP7975TZnxsN3zP7cYPBIV5PGnZyPEkQ7395Q32T47fUzyHp3xcFL5mIfEKaHJe3TSvuTDFbr47pqutoprhuxVUVIztnj2yZyTCdEjn3vra4NnvdwP6y42NrU3txORPWPLKBEB7RWnKBkN6C42hni6NF5t3Zh/ISrIY8MfJolax8dL9bsp9wCoqG5UuTpFBXlkFFV/uLtILCn67PQxohYU86JUrk6fHz6TUVSdNE0j71Yed68vgAiNF9pHLv4udpT07ACVMwB3N8N6paC8YfEEP3lRJSLXXWwE8EDoYAA/nL1VBa7Y+r3BxCxBPh8/cUpoiKfLniNlAIpO10ob/NvnJaX1zS/+y73ymumx+30BDB3kLi/jbm2ztkk+/fzhkd4ZRdWijTYz5+TG/AtrE3+1L/907rmGFVOHST3mE8L8n48KKq1vvlTbJEayrpg6TPqUVK7OALw9DButxciKtNmjRcNnW+bTl96b7tPfJWZVbmfjMsMDPIYOMNyOKL5HBXkBEHV5RlF1fmGF2L442K6/u335p0vrm9cm/ko+oOK3j4cCOHS8MjPnZO65BoNnVz83/pOVU1iJEhHYMkpEgu5iY4crJeUXVmQUVa+YOuxoySUAuecaHBI+6XALH/xhYsr2wvlbi4HiqCCPpH/91ePjg8WMddHwKaZsR4wabPxe0Sde09CSOEYtL1lEeTpi6ED5i8WYzqQRv5jiLaph8fdwf0+pSVJUQt+89ojBHkXVuO7JIdLbZz00ZM3+s7+OqtBdbBTVM9r7qTtcbXSIWiWNOpUeFF380vTzMcO9gLPfn6yaeP/QTdm6xRP8EqJHrvzgMIA1+8/Ku+klYpWlh0f7So+I8nTsCMMp7bqyOgCi+VkQlwcZKUf25Z9OiB5ZVdv0t89Llu8sFc8unuBXdaV5lL/hxCyDgaGTHwjA1uKPc3/6ddQ9aB+50fV3J8r3SWOHyh8XNXRNQ0uHzxIRSViMEtGtRY4WT/AzfnzF1u9DPF1e+Nf7Dn1/HsBny8bJ18DPzDkZO2G4qNuG+3tu+MOklXObxMSdJ1KOnHr7VhEpWtcEd7dftMxJfeIdxiDKU4MSWRR8Bk5X1Mt7zB8e6b1m/9m/1Da9lvHDiqnDjKtJg4GhAH4XO2rN/rMf5/5kMJXeuClRKpG1Jy5BVsbBaPq5aKM9f7kx40BJ7rmGt55/SHqlwfLy0vSpg0fLAQyRLXEqylN50SmIAlET+ItK/Yr+Vsd9VW1T5Cufhwd4SDsSTbNi1pGcfGAogOH+niumDluz/6yXuzN+OXKjs+/u0PFKGBE1dITG63RlI9prUyIiY+ymJ6KO297yCyvm//lL0cHq46US6wf99cBPpytu1YIrPzg8c1PBe7uOA/hwd9ELbx0C4OOlenx88JMPBwKorG6qlBVSoo1NtLAKYkQmgLAQH+MYRHlqvOK6qIHEuALJX/edAPDEQ4Hif0Xb5NP/dRDAC/96n/EhGy9aJIqwjfkXpL5pAJoh7rnnGqRDRvsIVFEii1Gn8oDFLCipPBVttB9/dW7+1uJ1T4aIPm4R2+qPvhOd6VW1TS+8dWjmpoLPD59BR43BHRad4pUGi6F+fviM+DwfCB285+vTYoCBwUjZ/m6GRaHxOlZipIRouBXDFbr+7ibd5wtAXK5Idnx5CsCMR0aIZ+UrRp2uqH/hrUPyT5WI7BlbRonoVtvb96dqpanWXxyrzCiqDvF0kZYcuk/js3iC38b8CxkvZUtvXDzBTwx8PHepcWP+BS/3w088FNigbxHrkvqqVfJ2vtgJw0Myfngt44crTS2jgrwqqhtFNSP6xI27vI1HZAqi21eUSmJ3e46UiSlKUgvopLFDgYLccw3bF4QbVGOCQd+08NSjI8RmpWbIJx4KXLP/7HNvfb0gRuOvdj/yY+V7uecAiBL5yYcDM4qqN3x6/ImHAiuqG3d+U3b+5xZ5KyOAuAeGLN9ZGhXkISYnic8hKlu3Mf/Cxvwd0svSZo8WTc5ilSV5Y7A00crgEE5UNIip9AaPb18QPtzfUxSOn31bJj4TaUEug6LWeB0rAMP9PcV3LUXS9XcnjmjmpoK09mcPHa8U38hwf8/BXirj94YHeBgfERHZJxajRHSr7W1j/gXkXxCPJI5Rp80eLb8ZD4ANf5g06b7/u3+9fGnMV377YG1jizQOMirI47Nl44b7e6ZsL0R7O5/K1Sl7VdRzb30tqqIQT5e1ib96LeMHMYrR+A6c8ok1cmJ465MPB76W8YN8d/LxAz5eqqggD5/+Lp3dOEpMqzKoU6WCW+olnxDmv31B+GsZP4ijjgryWJv4q5mbCkTrZuyE4YnflElHLRZ+MrhxgBgJkPSvv5I+SZWr0+41j7/5t++k4MX4WnRyZ6kOb3wqxrwaHNTiCX6/jrpHVJ8J0SO3AzM3FYi9rHsyZPEEvwM/1hgs2mo8XEH4ddQ9G/MvSLOmuv7uVK5OshHDwC+/EYP3ijhXzn2Qs5eISHBoa2tTOgYiUp7B/Ou7KxROV9RXVje5uznJ51wbL9+TX1iB9q75sH/LSZs9Wkx1N35l10v/NF1tLSytMtidkJlzcuamgm9ee6TDuUdd6zAM0Uw7IczfeMvHdVWN+tZ7Ajx9vFQG72262jp9xeej/D02/GFST/beq3VbZ9vv8PHOvjuhw38AEvFB+apVln+fVSIyJxajRGQmKz847OnuLL8D0AtvHdqYf+HU2zGmrU7E3J1ZDw2R34Tp7raz+qPvJt3nKzWvNl1tDV+yZ+gA55z//ufubCHlk6PLd5aa/ADNz2zfHRHZIXbTE5GZiH78ASrnUUFe0kDPdU+GmLya2fDpcQCv/PbBHm5H5ep84MeaAz/WAPBXu1dUN27K1pXWN6+fN7Y7bz+uq1q+s1SMm+xhJIoz23dHRHaILaNEZCZNV1tf2ZS/sX1Yqhh32NmYzrv2+eEzT6QckY9n7YnTFfXPvfW1NDozKshjzeyx3ez6f3r1gaorzd1sQ7Vw5vnuiMg+sRglIrPqelihSZh8kOXdDXa0vXtdmuG7IyI7xGKUiIiIiBTDRe+JiIiISDEsRomIiIhIMSxGiYiIiEgx/x+KnNrXgPzefwAAAABJRU5ErkJggg==\" width=\"641\" height=\"356\"></p><p style=\"text-align:center;\"><span style=\"color:windowtext;\"><span lang=\"VI\" dir=\"ltr\">Hình&nbsp;</span>1.3.1:&nbsp;<span lang=\"VI\" dir=\"ltr\">Phân loại dữ liệu theo 2 lớp và nhiều lớp</span></span></p><p>Phương pháp phân loại là phương pháp tiên tiến để phân loại dữ liệu vào một số nhóm cụ thể. Phương pháp này rất hữu ích để phân loại khách hàng, sản phẩm hoặc một đối tượng bất kỳ nào.&nbsp;</p><p>Trong phương pháp này, mô hình máy học được đào tạo để dự đoán nhãn đầu ra cho các bộ dữ liệu đầu vào. Để đạt được một mô hình phân loại chất lượng cao, cần có bộ dữ liệu đầu vào có tính phân biệt cao giữa các lớp và các thuộc tính có ý nghĩa trong việc phân loại.</p><h3>1.3.2&nbsp;<span lang=\"VI\" dir=\"ltr\">Phương pháp gom cụm</span></h3><p style=\"margin-left:0in;text-align:center;\"><img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAjEAAAEbCAMAAAAcbiULAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAihQTFRFwSctW7IAAHiMAAAAAJXJmMkAObVKKaviRIOOwdbZEBAQ9frv1uy/7+/vhMVArdh/QEBA7/X2v7+/NHmEZbcQmc9gFWRxz8/Pgq20ICAg6vXfweKf4PHPRbpVscvQX8DpcLwg4Orsa8h3YGBgesAwn5+f8/r08vr9cqKqJG97zOevo9Rw2vHdMDAwjspQNrDk5vbo7/f4Ur5h+/Hy+fzvUFBQgMrkgICAstdAxTU60ODjyur4yer4UbvnnswQcHBwY5ihMJGiEJzMnNqlU46XEICTzezSj4+PXsNsbMXrt92PhNGOkre99+TlocHG7/j81+/6z+bpRLbmQJqpn9fr5fK/tOO7zOSAwejGd8yDv93ir6+vv+Xy39/f3/L4odryf39/5PT7zu3SQLDXr9Xbv91g7PXPvOX2YKu3ecvtuNpQYL3dIImanNqkh9Dv5PX7lNXw4JOW3IaJ1Gtvq9MwMKnT6K6wz+v10V1ig9GO5KCjpdAgrt/0n8zUr97uesvt0uePIKLQgLzG89bXcMPh2OufkNWZcLO+8vjfkNaZlNXx3+7xxeFwUKKwqN+wteO7qN6w3+6v78nKzVBV2Hh8ULbayUJH7Lu9r+D0j8TNj9HnnSAlMAoLbRYZJAcIVBEUDZzRkR0iYRQXGAUGQrHYcsbpj8TM4vP6tSUqJqrgBZjMSA8RSrfjL63fFaDWcLO/FZ7QeRgcA5bLCpvPf7vFBVpo////////osDzfgAAALh0Uk5T////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////APaK50EAACKdSURBVHja7J2HfxPH8sAl20gu6rItW+69gVvcQrMxxjYGDNgxtgHTwRBK8vJCEkJCCyUkgSTvvbyX5PVf753Tv/eb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\" width=\"562\" height=\"283\"></p><p style=\"text-align:center;\"><span style=\"color:windowtext;\"><span lang=\"VI\" dir=\"ltr\">Hình&nbsp;</span>1.3.2:&nbsp;<span lang=\"VI\" dir=\"ltr\">Thuật toán phân cụm K-means phổ biến</span></span></p><p>Phương pháp Gom cụm được sử dụng để phân nhóm một tập hợp các đối tượng không có nhãn. Thông thường phương pháp này được sử dụng khi chúng ta muốn phát hiện các cụm trong dữ liệu và tự động phân nhóm chúng. Khi thực hiện phân cụm, các đối tượng được phân loại vào nhóm dựa trên các giá trị của các thuộc tính và đặc trưng tương tự.</p><p>Có nhiều phương pháp khác nhau để phân cụm, bao gồm K-Means, DBSCAN hay Mean Shift. K-means là phương pháp phân cụm phổ biến và tương đối đơn giản. Nó phân cụm các điểm dữ liệu dựa trên khoảng cách Euclidean, trong đó không gian dữ liệu được phân loại thành K cụm.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p><h3>1.3.3&nbsp;<span lang=\"VI\" dir=\"ltr\">Phương pháp phát hiện tiên đề</span></h3><p>Phương pháp khai thác luật kết hợp là phương pháp khai phá dữ liệu có thể giúp bạn khám phá các kết quả liên quan đến các luật kết hợp giữa các thuộc tính của bộ dữ liệu.</p><p>Ví dụ, trong dữ liệu khách hàng và sản phẩm, phương pháp khai thác luật kết hợp có thể giúp tìm ra các quan hệ giữa các khách hàng và sản phẩm, để chúng ta có thể dự đoán các sản phẩm sẽ được mua trong tương lai.&nbsp;</p><p>Thông thường, phường pháp này được sử dụng đối với các dữ liệu có tập hợp các đối tượng của thuộc tính như mua hang hoặc đặt hàng<span lang=\"VI\" dir=\"ltr\">.</span></p><h3><span lang=\"VI\" dir=\"ltr\">1.3.4 Phương pháp hồi quy</span></h3><figure class=\"image\"><img style=\"aspect-ratio:641/445;\" src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABVYAAAO2CAYAAAADrcyqAAAABGdBTUEAALGPC/xhBQAAAAFzUkdCAK7OHOkAAAAJcEhZcwAADsQAAA7EAZUrDhsAAHrNSURBVHhe7P0NsF3lfdj7L9tzE8M/gJBoFbu2kSOEbuNIyITELk6qGzNqcXo0DZPk3it58pdlt1ZxKFQGw2FykSzcDOLFVuESu+IGH2s8FpO363R02vg/CraVizG4MRYH2wQLaslvY7mSgNCakqaXP7/FesTS0T57r7X32i/n7M9nRrOfvc8562wd2hi+51nP71UvviQDAAAAAKCyVxePAAAAAABUJKwCAAAAANQkrAIAAAAA1CSsAgAAAADUJKwCAAAAANQkrAIAAAAA1CSsAgAAAADUJKwCAAAAANQkrAIAAAAA1CSsAgAAAADUJKwCAAAAANQkrAIAAAAA1CSsAgAAAADUJKwCAAAAANQkrAIAAAAA1CSsAgAAAADUJKwCAAAAANQkrAIAAAAA1CSsAgAAAADUJKwCAAAAANQkrAIAAAAA1CSsAgAAAADUJKwCAAAAANQkrAIAAAAA1CSsAgAAAADUJKwCAAAAANQkrAIAAAAA1CSsAgAAAADUJKwCAAAA', 'khai-pha-du-lieu', 1, 2, 4, 'http://localhost/Study/uploads/Final_Report_CTRR_2024_(1)2.docx', NULL, 1);
INSERT INTO `baihoc` (`MaBaiHoc`, `TenBaiHoc`, `MoTa`, `DuongDan`, `MaGiaoVien`, `LoaiBaiHoc`, `MaTrinhDo`, `TepTin`, `MaBaiThi`, `TrangThai`) VALUES
(5, 'Bài học mớia2222', '<p>aaa</p>', 'bai-hoc-moia2222', 1, 2, 1, NULL, 5, 1);

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
(1, 1, 1, 1, 2, 1, 1),
(2, 5, 2, 1, 5, 1, 1),
(3, 2, 2, 1, 2, 60, 1),
(4, 1, 1, 1, 3, 60, 1),
(5, 1, 2, 3, 3, 60, 1),
(6, 1, 2, 2, 2, 10, 1),
(7, 4, 2, 1, 50, 90, 1);

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
(11, 2, 'ABCDE', NULL, NULL, NULL, NULL, NULL, 1),
(12, 4, 'Câu hỏi test 1', 'EWRQWE', 'WQERQWE', 'QWEREWQ', 'WQERWQE', 'B', 1),
(13, 4, 'Câu hỏi test 2', 'WQERWQ', 'WQREWQE', 'WQERWQER', 'RWQEWQER', 'C', 1),
(14, 4, 'Câu hỏi test 3', 'WQREQWE', 'QWERWEQ', 'QWERWQE', 'QWERWQE', 'A', 1),
(15, 5, 'Cau hoi 1', NULL, NULL, NULL, NULL, NULL, 1),
(16, 5, 'Cau hoi 2', NULL, NULL, NULL, NULL, NULL, 1),
(17, 5, 'Cau hoi 3', NULL, NULL, NULL, NULL, NULL, 1),
(18, 6, 'Bác Hồ sinh năm bao nhiêu?', NULL, NULL, NULL, NULL, NULL, 1),
(19, 6, 'Thủ đô Việt Nam?', NULL, NULL, NULL, NULL, NULL, 1);

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
(2, 'Chu Minh Nam', '2000-05-29', 1, 'Bách Khoa Hà Nội', 'chuminhnam', '206dcce3f82cf8981d316e7900dc8e06', 1),
(3, 'nguyenvanb', '1998-05-29', 1, 'THPT Chu Văn An', 'nguyenvanb', '23280a0ad9238d00c62b0272af265c57', 1);

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
(93, 2, 2, 6, '2024-05-29 00:58:41', 3, 1),
(94, 2, 0, 0, '2024-05-29 01:16:26', 1, 1),
(95, 2, 0, 0, '2024-05-29 16:10:57', 4, 1),
(96, 2, 1, 3.33333, '2024-05-29 16:12:25', 4, 1),
(97, 2, 2, 6, '2024-05-29 16:16:00', 5, 1),
(98, 3, 2, 6.66667, '2024-05-29 16:24:59', 4, 1),
(99, 3, 1, 3.33333, '2024-05-29 16:25:23', 4, 1),
(100, 3, 3, 10, '2024-05-29 16:25:44', 4, 1),
(101, 3, -1, -1, '2024-05-29 16:28:40', 5, 1),
(102, 2, 0, 0, '2024-11-09 22:29:11', 5, 1),
(103, 2, 0, 0, '2024-11-09 22:30:32', 6, 1),
(104, 2, 0, 0, '2024-11-09 22:30:43', 1, 1),
(105, 1, 0, 0, '2025-02-16 00:24:16', 7, 1),
(106, 1, 0, 0, '2025-02-16 00:24:30', 6, 1),
(107, 1, 2, 6.66667, '2025-02-16 00:24:41', 4, 1),
(108, 1, 0, 0, '2025-02-16 00:25:54', 1, 1),
(109, 1, 1, 5, '2025-02-16 00:49:00', 1, 1),
(110, 1, 0, 0, '2025-02-16 00:49:23', 1, 1),
(111, 1, 1, 3.33333, '2025-02-16 01:17:28', 4, 1),
(112, 1, 0, 0, '2025-02-16 01:19:01', 5, 1),
(113, 1, 1, 3.33333, '2025-02-16 01:19:12', 4, 1),
(114, 1, 0, 0, '2025-02-16 14:22:54', 7, 1),
(115, 1, 0, 0, '2025-02-16 14:33:00', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `traloi`
--

CREATE TABLE `traloi` (
  `MaTraLoi` int(11) NOT NULL,
  `MaKetQua` int(11) NOT NULL,
  `MaCauHoi` int(11) NOT NULL,
  `DapAnDung` varchar(255) NOT NULL,
  `DapAnChon` varchar(255) NOT NULL,
  `TrangThai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `traloi`
--

INSERT INTO `traloi` (`MaTraLoi`, `MaKetQua`, `MaCauHoi`, `DapAnDung`, `DapAnChon`, `TrangThai`) VALUES
(1, 109, 5, 'B', 'B', 'Đúng'),
(2, 109, 6, 'C', 'B', 'Sai'),
(3, 110, 5, 'B', 'C', 'Sai'),
(4, 110, 6, 'C', 'D', 'Sai'),
(5, 111, 12, 'B', 'A', 'Sai'),
(6, 111, 13, 'C', 'C', 'Đúng'),
(7, 111, 14, 'A', 'D', 'Sai'),
(8, 113, 12, 'B', 'A', 'Sai'),
(9, 113, 13, 'C', 'C', 'Đúng'),
(10, 113, 14, 'A', 'D', 'Sai'),
(11, 115, 13, 'C', 'B', 'Sai'),
(12, 115, 12, 'B', 'D', 'Sai'),
(13, 115, 14, 'A', 'C', 'Sai');

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
(12, 93, 2, '<p>Nam</p>'),
(13, 97, 15, '<h2>Phần 1: ABCDE</h2><p>Nội dung</p>'),
(14, 97, 16, '<p>Câu trả lời 2</p>'),
(15, 97, 17, '<p>Câu trả lời 3</p>'),
(16, 101, 15, '<p>ab</p>'),
(17, 101, 16, '<p>a</p>'),
(18, 101, 17, '<p>r</p>');

-- --------------------------------------------------------

--
-- Table structure for table `xembaihoc`
--

CREATE TABLE `xembaihoc` (
  `MaXemBaiHoc` int(11) NOT NULL,
  `MaBaiHoc` int(11) NOT NULL,
  `ThoiGian` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `xembaihoc`
--

INSERT INTO `xembaihoc` (`MaXemBaiHoc`, `MaBaiHoc`, `ThoiGian`) VALUES
(1, 5, '2025-02-26');

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
-- Indexes for table `traloi`
--
ALTER TABLE `traloi`
  ADD PRIMARY KEY (`MaTraLoi`),
  ADD KEY `MaKetQua` (`MaKetQua`,`MaCauHoi`),
  ADD KEY `MaCauHoi` (`MaCauHoi`);

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
-- Indexes for table `xembaihoc`
--
ALTER TABLE `xembaihoc`
  ADD PRIMARY KEY (`MaXemBaiHoc`),
  ADD KEY `MaBaiHoc` (`MaBaiHoc`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `baihoc`
--
ALTER TABLE `baihoc`
  MODIFY `MaBaiHoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `baithi`
--
ALTER TABLE `baithi`
  MODIFY `MaBaiThi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `cauhoi`
--
ALTER TABLE `cauhoi`
  MODIFY `MaCauHoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `giaovien`
--
ALTER TABLE `giaovien`
  MODIFY `MaGiaoVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hocsinh`
--
ALTER TABLE `hocsinh`
  MODIFY `MaHocSinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `ketqua`
--
ALTER TABLE `ketqua`
  MODIFY `MaKetQua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT for table `traloi`
--
ALTER TABLE `traloi`
  MODIFY `MaTraLoi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `trinhdo`
--
ALTER TABLE `trinhdo`
  MODIFY `MaTrinhDo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tuluan`
--
ALTER TABLE `tuluan`
  MODIFY `MaTuLuan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `xembaihoc`
--
ALTER TABLE `xembaihoc`
  MODIFY `MaXemBaiHoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
-- Constraints for table `traloi`
--
ALTER TABLE `traloi`
  ADD CONSTRAINT `traloi_ibfk_1` FOREIGN KEY (`MaKetQua`) REFERENCES `ketqua` (`MaKetQua`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `traloi_ibfk_2` FOREIGN KEY (`MaCauHoi`) REFERENCES `cauhoi` (`MaCauHoi`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `tuluan`
--
ALTER TABLE `tuluan`
  ADD CONSTRAINT `tuluan_ibfk_1` FOREIGN KEY (`MaKetQua`) REFERENCES `ketqua` (`MaKetQua`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `tuluan_ibfk_2` FOREIGN KEY (`MaCauHoi`) REFERENCES `cauhoi` (`MaCauHoi`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `xembaihoc`
--
ALTER TABLE `xembaihoc`
  ADD CONSTRAINT `xembaihoc_ibfk_1` FOREIGN KEY (`MaBaiHoc`) REFERENCES `baihoc` (`MaBaiHoc`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
