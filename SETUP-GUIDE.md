# 🚀 SUNA - HƯỚNG DẪN CÀI ĐẶT NHANH

## 📦 Gói này bao gồm:
- ✅ **Mã nguồn Suna hoàn chỉnh** (100% tính năng như bản thương mại)
- ✅ **Docker setup** sẵn sàng chạy
- ✅ **Demo pages** để test nhanh
- ✅ **File cấu hình** đã setup sẵn

## ⚡ CHẠY NHANH (5 phút):

### 1. Giải nén và vào thư mục:
```bash
tar -xzf suna-quick-setup.tar.gz
cd suna
```

### 2. Chạy demo ngay lập tức:
```bash
# Chạy demo đơn giản (không cần database)
./run-simple.sh

# Hoặc chạy full version với Docker
docker-compose up -d
```

### 3. Truy cập:
- **Demo đơn giản**: http://localhost:3000/simple
- **Demo đầy đủ**: http://localhost:3000/demo  
- **Full app**: http://localhost:3000

## 🔧 CẤU HÌNH CHI TIẾT:

### Environment Variables (.env):
```bash
# AI Models
OPENAI_API_KEY=your_openai_key
ANTHROPIC_API_KEY=your_anthropic_key

# Database (tùy chọn - có thể dùng SQLite)
SUPABASE_URL=your_supabase_url
SUPABASE_ANON_KEY=your_supabase_key

# Billing (tùy chọn)
STRIPE_SECRET_KEY=your_stripe_key
```

### Chạy production:
```bash
# Build và chạy
docker-compose -f docker-compose.prod.yml up -d

# Hoặc manual
cd backend && uvicorn api:app --host 0.0.0.0 --port 8000
cd frontend && npm run build && npm start
```

## 🎯 TÍNH NĂNG CÓ SẴN:

### ✅ AI Agent với Tools:
- Browser automation (web scraping, form filling)
- File management (tạo/edit documents)
- Command execution (system tasks)
- API integrations
- Web deployment

### ✅ Business Features:
- User authentication (Supabase)
- Subscription billing (Stripe)
- Usage tracking & limits
- Multi-tier pricing
- Admin dashboard

### ✅ Technical:
- Docker deployment
- Database migrations
- Monitoring & logging
- API documentation

## 🏢 KINH DOANH:

### License: Apache 2.0
- ✅ **Sử dụng thương mại** hoàn toàn
- ✅ **Modify** thoải mái
- ✅ **Bán sản phẩm** được
- ✅ **Không royalty**

### Chỉ cần:
- Giữ file LICENSE
- Ghi credit "Based on Suna by Kortix Team"
- Không dùng tên "Suna" làm brand

## 🆘 HỖ TRỢ:

### Lỗi thường gặp:
1. **Port đã sử dụng**: Đổi port trong docker-compose.yml
2. **API key không có**: Thêm vào .env file
3. **Database lỗi**: Dùng SQLite mode hoặc setup Supabase

### Demo pages:
- `/simple` - Chat đơn giản, không cần database
- `/demo` - Full features với mock data
- `/` - Production app với authentication

## 📞 LIÊN HỆ:
- GitHub: https://github.com/kortix-ai/suna
- Discord: https://discord.gg/Py6pCBUUPw

---
**🎉 Chúc anh thành công với AI SaaS business!**