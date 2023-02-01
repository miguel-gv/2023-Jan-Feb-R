library("ggplot2")
library("palmerpenguins")

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g))

ggplot(data=penguins)

ggplot(data=penguins)+geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm))

ggplot(data=penguins)+geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm, color=species))

ggplot(data=penguins)+geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm, color=species, shape=species))

ggplot(data=penguins)+geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm, color=species, shape=species, size=species))

ggplot(data=penguins)+
  geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm, alpha=species))

ggplot(data=penguins)+
  geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm, alpha=species),color="purple")+
  geom_smooth(mapping=aes(x=bill_length_mm,y=bill_depth_mm, alpha=species),color="blue")

ggplot(data=penguins)+
  geom_point(mapping=aes(x=bill_length_mm,y=bill_depth_mm, alpha=species),color="purple")+
  geom_smooth(mapping=aes(x=bill_length_mm,y=bill_depth_mm, alpha=species, linetype=species),color="blue")

ggplot(data=penguins)+
  geom_jitter(mapping=aes(x=flipper_length_mm,y=body_mass_g))

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut, color=cut))

ggplot(data=diamonds)+
  geom_bar(mapping=aes(x=cut, fill=clarity))

ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color=species))+
  labs(title="Masa contra Longitud Ala", subtitle = "Qué majos los pingüinos",caption = "pepe viyuela recogió personalmente los datos")+
  annotate("text",x=220,y=3500,label="Esto está interesante",fontface="bold",size=4.5,color="purple",angle=25)

p<- ggplot(data=penguins)+
  geom_point(mapping=aes(x=flipper_length_mm,y=body_mass_g, color=species))+
  labs(title="Masa contra Longitud Ala", subtitle = "Qué majos los pingüinos",caption = "pepe viyuela recogió personalmente los datos")

p+annotate("text",x=200,y=200,label="Vaya locura lo de las variables")

#ggsave("Three_Penguins.png")