NAME = review
PKG = $(NAME).tar.xz

review.tar.xz: tlpkg/tlpobj/$(NAME).tlpobj
	tar -cJvf $(PKG) tlpkg

.PHONY: clean
clean:
	rm $(PKG)
