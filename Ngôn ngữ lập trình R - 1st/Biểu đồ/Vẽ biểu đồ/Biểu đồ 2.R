library(tidyverse,ggupset)
library(ggplot2,
        tidyverse,      # includes ggplot2 and other data management tools
        rio,            # import/export   
)
view(GDP_VN)
str(GDP_VN)

# scatterplot cho từng mục của các năm
ggplot(data = GDP_VN, mapping = aes(x = Years, y = Tong_thuc_te))+ 
  geom_point(color = "darkgreen", size = 5, alpha = 0.2)     


ggplot(data = GDP_VN, mapping = aes(x = Years, y = Tong_GDP))+ 
  geom_point(color = "darkgreen", size = 5, alpha = 0.2)  


ggplot(data = GDP_VN, mapping = aes(x = Years, y = Tong_GDP_Ngoaite))+ 
  geom_point(color = "darkgreen", size = 5, alpha = 0.2)


ggplot(data = GDP_VN, mapping = aes(x = Years, y = Tich_luy_tai_san))+ 
  geom_point(color = "darkgreen", size = 5, alpha = 0.2)


ggplot(data = GDP_VN, mapping = aes(x = Years, y = Tieu_dung_cuoi_cung))+ 
  geom_point(color = "darkgreen", size = 5, alpha = 0.2)


ggplot(data = GDP_VN, mapping = aes(x = Years, y = XK_hang_hoa_dich_vu))+ 
  geom_point(color = "darkgreen", size = 5, alpha = 0.2)
