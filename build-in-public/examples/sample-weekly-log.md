# 📈 Ví Dụ Mẫu: Weekly DevLog #04 — SaaS Product "KitSEO"

> *Đây là một ví dụ thực tế đã điền đầy đủ dữ liệu để bạn tham khảo cách viết Weekly Log thu hút cộng đồng.*

---

# 📈 Weekly DevLog #04 — KitSEO.io

> **Tóm tắt tuần này**: Cán mốc 100 khách hàng dùng thử đầu tiên, tích hợp xong Google Search Console API và đạt $150 MRR!

---

## 🎯 Cột mốc nổi bật (Highlights)

- 🚀 **Feature mới**: Đã phát hành tính năng tự động quét từ khóa và gửi báo cáo qua Email vào sáng thứ 2 hàng tuần.
- 💳 **Doanh thu**: Đạt mốc **$150 MRR** (+ $50 so với tuần trước) nhờ 2 khách hàng đăng ký gói Pro năm.
- 🤝 **Cộng đồng**: Bài chia sẻ kinh nghiệm tối ưu PageSpeed trên nhóm *Indie Hackers Vietnam* nhận được hơn 120 lượt upvotes.

---

## 📊 Bảng Chỉ Số Tuần (Weekly Metrics)

| Chỉ số | Tuần 03 | Tuần 04 | Thay đổi |
| :--- | :---: | :---: | :---: |
| 👥 **Tổng người dùng (Users)** | 65 | 112 | 🟢 +72.3% |
| 💳 **Khách hàng trả phí** | 4 | 7 | 🟢 +75.0% |
| 💵 **MRR** | $100 | $150 | 🟢 +$50 |
| 🌐 **Website Traffic** | 850 | 1,420 | 🟢 +67.0% |
| 📉 **Churn Rate** | 0% | 0% | 🟢 0% |

---

## 🛑 Thử thách & Bài học (Failures & Lessons Learned)

### Sự cố gõ nhầm API Rate Limit
- **Sự cố**: Trong đợt quét từ khóa tự động sáng thứ Hai, server bị Google API từ chối phản hồi (429 Too Many Requests) khiến 25 emails gửi đi bị trống dữ liệu.
- **Bài học**: Luôn cài đặt chế độ Queue (Job Processing với Redis) và kiểm tra kỹ quy định giới hạn API của nhà cung cấp trước khi chạy tính năng tự động hóa lớn.

---

## 🎯 Ưu tiên tuần tới (Next Week's Focus)

- [ ] Tối ưu tốc độ tải trang chủ từ 1.8s xuống dưới 0.8s.
- [ ] Soạn thảo và đăng bài viết "Hành trình từ $0 lên $150 MRR sau 30 ngày" trên X/Twitter.
- [ ] Chuẩn bị bộ ảnh và video demo cho đợt Launch trên Product Hunt vào tuần kế tiếp.
