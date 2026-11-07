# TA-STORE-VN V45 — triển khai full-stack

## Tài khoản Admin
- Tên đăng nhập: `ADMIN`
- Mật khẩu theo yêu cầu: `tanhsito67`
- Form chỉ điền sẵn tên tài khoản; mật khẩu không được nhúng vào HTML/JavaScript. Backend lưu hash scrypt + salt.

## Triển khai
1. Tạo GitHub repository ở chế độ Private.
2. Đưa toàn bộ nội dung thư mục này vào thư mục gốc repository. `Dockerfile`, `railway.json`, `server.js` phải nằm ở thư mục gốc.
3. Railway → New Project → Deploy from GitHub Repo → chọn repository.
4. Tạo Volume và đặt Mount Path là `/persist`.
5. Trong Variables, thêm:

```env
NODE_ENV=production
TA_STORE_HOST=0.0.0.0
TA_STORE_DATA_DIR=/persist/data
TA_STORE_CONFIG_FILE=/persist/config.json
TA_STORE_ADMIN_USERNAME=ADMIN
TA_STORE_ADMIN_PASSWORD=tanhsito67
```

6. Deploy lại service sau khi thêm Variables.
7. Settings → Networking → Generate Domain.
8. Mở `https://TEN-APP.up.railway.app/api/health`; kết quả phải có `"ok":true` và version `public-web-v45-interactive-fix`.
9. Mở domain Railway (không phải `github.io`) và đăng nhập.

## Lưu ý bảo mật
- Mật khẩu `tanhsito67` dài 10 ký tự và được người dùng chỉ định. Nên thay bằng mật khẩu riêng dài hơn trước khi dùng công khai lâu dài.
- Không commit `.env`, `config.json`, `data/store.json` hoặc Cloudflare API token.
- GitHub Pages chỉ host HTML tĩnh, không chạy `server.js` hoặc API.
- V45 nâng `configVersion` lên 4; khi khởi động với config V42/V43/V44 cũ, backend tạo lại thông tin Admin theo biến môi trường/cấu hình V45.
