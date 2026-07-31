# 🛡️ Quy Tắc Bảo Mật & Quyền Riêng Tư Trong Build In Public (Security & Privacy Checklist)

> ⚠️ **CẢNH BÁO QUAN TRỌNG**: Build In Public mở ra cơ hội lớn nhưng cũng tiềm ẩn rủi ro nếu bạn vô tình để lộ thông tin nhạy cảm. Hãy áp dụng nghiêm ngặt danh sách kiểm tra bên dưới trước khi đăng bất kỳ thông tin nào lên mạng xã hội hoặc GitHub!

---

## 🟢 Những gì NÊN chia sẻ công khai (Safe to Share)

- ✅ **Chỉ số tổng quan (Aggregate Metrics)**: MRR, ARR, Churn rate, Traffic visits, tổng số khách hàng.
- ✅ **Tech Stack & Kiến trúc tổng quan**: Ngôn ngữ, Framework, Database, Kiến trúc hệ thống không chứa IP/Credentials.
- ✅ **Quy trình làm việc (Workflows)**: Cách bạn quản lý công việc, công cụ sử dụng, quy trình thiết kế UI/UX.
- ✅ **Bài học thất bại & Thành công**: Nhận xét chung của người dùng (đã ẩn thông tin cá nhân), các bài học rút ra.
- ✅ **Public Codebase / Open Source Components**: Các thư viện hoặc phần code không chứa bí mật kinh doanh cốt lõi.

---

## 🔴 Những gì TUYỆT ĐỐI KHÔNG chia sẻ (NEVER Share Publicly)

| Hạng mục | Rủi ro | Giải pháp phòng ngừa |
| :--- | :--- | :--- |
| 🔑 **API Keys / Tokens / Passwords** | Bị chiếm đoạt server, lộ dữ liệu, phát sinh chi phí vô tận | Sử dụng file `.env` và thêm vào `.gitignore`. Sử dụng công cụ `git-leaks` để quét code. |
| 👤 **Dữ liệu riêng tư khách hàng (PII)** | Vi phạm pháp luật (GDPR / Nghị định 13 Việt Nam), mất uy tín | Làm mờ (Blur) hoặc thay đổi tên, email, ảnh đại diện của khách hàng trong screenshots/videos. |
| 📜 **Hợp đồng B2B & Điều khoản bảo mật (NDA)** | Thừa kiện tụng pháp lý, đền bù hợp đồng | Không tiết lộ giá trị hợp đồng B2B cụ thể hoặc tên đối tác khi chưa được cho phép bằng văn bản. |
| 🛡️ **Lỗi bảo mật chưa vá (Zero-day vulnerabilities)** | Bị hacker tấn công hệ thống ngay lập tức | Chỉ chia sẻ bài học về sự cố bảo mật **SAU KHI** đã vá lỗi hoàn toàn. |
| 🏦 **Thông tin ngân hàng / Thẻ tín dụng** | Thất thoát tài chính cá nhân | Làm mờ số tài khoản, số thẻ, mã CVV khi chụp ảnh hóa đơn/giao dịch. |

---

## 📋 Checklist 5 Bước Trước Khi Đăng Bài / Release Code

- [ ] 1. **Kiểm tra Screenshots / Videos**: Có vô tình quay dính file `.env`, mật khẩu, hoặc thông tin cá nhân khách hàng trên màn hình không?
- [ ] 2. **Kiểm tra Git Commit**: Chắc chắn không có API key hay Passwords nào bị commit nhầm vào git history.
- [ ] 3. **Ẩn thông tin nhạy cảm của Khách hàng**: Tên email, IP address, ID cá nhân đã được che mờ.
- [ ] 4. **Kiểm tra thỏa thuận NDA**: Bài đăng có vi phạm điều khoản bảo mật với bên thứ 3 hay đối tác nào không?
- [ ] 5. **Xem xét góc độ đối thủ**: Thông tin này có thể bị đối thủ xấu dùng để chơi xấu (DDoS, Spam) không?
