
ggplot(data = GDP_VN, mapping = aes(x = Tong_GDP_Ngoaite))+     
  geom_histogram(           
    binwidth = 7,              
    color = "red",
    fill = "lightblue") 





ggplot(data = GDP_VN, mapping = aes(x = XK_hang_hoa_dich_vu))+     
  geom_bar(mapping = aes(fill = Years), color = "darkgreen",size=4)+         
  labs(title = "Xuất khẩu hàng hóa và dịch vụ")
