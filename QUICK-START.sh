#!/bin/bash

echo "🚀 SUNA QUICK START SCRIPT"
echo "=========================="

# Check if Docker is installed
if ! command -v docker &> /dev/null; then
    echo "❌ Docker chưa cài đặt. Đang cài đặt..."
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    sudo usermod -aG docker $USER
    echo "✅ Docker đã cài đặt. Vui lòng logout/login lại."
    exit 1
fi

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null; then
    echo "❌ Docker Compose chưa cài đặt. Đang cài đặt..."
    sudo curl -L "https://github.com/docker/compose/releases/download/v2.20.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
fi

echo "📦 Đang setup Suna..."

# Create .env file if not exists
if [ ! -f .env ]; then
    echo "📝 Tạo file .env..."
    cat > .env << EOF
# AI Models (thêm API keys của bạn)
OPENAI_API_KEY=your_openai_key_here
ANTHROPIC_API_KEY=your_anthropic_key_here

# Database (SQLite mode - không cần Supabase)
DATABASE_MODE=sqlite
SUPABASE_URL=http://localhost:54321
SUPABASE_ANON_KEY=demo_key

# Billing (demo mode)
STRIPE_SECRET_KEY=sk_test_demo
BILLING_MODE=demo

# App settings
FRONTEND_URL=http://localhost:3000
BACKEND_URL=http://localhost:8000
EOF
    echo "✅ File .env đã tạo. Vui lòng thêm API keys của bạn."
fi

# Start services
echo "🐳 Đang khởi động Docker containers..."
docker-compose up -d

# Wait for services to start
echo "⏳ Đợi services khởi động..."
sleep 10

# Check if services are running
if docker-compose ps | grep -q "Up"; then
    echo ""
    echo "🎉 SUNA ĐÃ CHẠY THÀNH CÔNG!"
    echo "=========================="
    echo "📱 Demo đơn giản: http://localhost:3000/simple"
    echo "🚀 Demo đầy đủ: http://localhost:3000/demo"
    echo "💼 Full app: http://localhost:3000"
    echo "🔧 API docs: http://localhost:8000/docs"
    echo ""
    echo "📝 Nhớ thêm API keys vào file .env để sử dụng AI models!"
    echo ""
    echo "🛑 Để dừng: docker-compose down"
else
    echo "❌ Có lỗi xảy ra. Kiểm tra logs:"
    docker-compose logs
fi