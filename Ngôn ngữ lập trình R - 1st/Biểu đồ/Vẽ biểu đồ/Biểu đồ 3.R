# Mối liên hệ giữa tổng sản phẩm trong nước theo giá thực tế với tổng sản phẩm trong nước bình quân đầu người hàng năm
ggplot(data = GDP_VN,
       mapping = aes(x = Tong_GDP, y = Tong_thuc_te, color = Years))+
  geom_point(alpha = 0.5,size=4)

# Mối liên hệ giữa tổng sản phẩm trong nước bình quân đầu người (trong nước) với tổng sản phẩm trong nước bình quân đầu người (Ngoại tệ) hàng năm

ggplot(data = GDP_VN,
       mapping = aes(x = Tong_GDP, y = Tong_GDP_Ngoaite, color = Years))+
  geom_point(alpha = 0.5,size=4)

# Mối liên hệ giữa tích lũy tài sản và tiêu dùng theo giá thực tế hàng năm

ggplot(data = GDP_VN,
       mapping = aes(x = Tich_luy_tai_san, y = Tieu_dung_cuoi_cung, color = Years))+
  geom_point(alpha = 0.5,size=4)
