[X,Y] = meshgrid(-5:.5:5);

Z = Y.*sin(X) - X.*cos(Y);
s = mesh(Z,X,Y,'FaceAlpha','0')
colormap([0 0 0])
grid off
axis off
set(gca, 'color', 'none')

%exportgraphics(gcf,'C:\Users\3komm\BCS\05_portfolio_page\assets\meshtry1_mat2.png','BackgroundColor','none')
export_fig test.png -transparent
TO = triangulation(T,X(:),Y(:),Z(:));
t = trimesh(TO);
surf(X,Y,Z,'FaceColor', 'none', 'EdgeColor', "black")

%t =trimesh(T,X,Y,Z);
stlwrite(TO,"./test1.stl")

