ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut))

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut,fill=cut))

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = cut,fill=clarity))

ggplot(data = diamonds)+
  geom_bar(mapping = aes(x = color,fill= cut))+
  facet_wrap(~cut)


