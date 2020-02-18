mandelbrot(4000, 100)
function mandelbrot(n, niter)

x0 = 0;   x1 = 1.5;
y0 = -1.5; y1 = 0;

[x,y] = meshgrid(linspace(x0, x1, n), linspace(y0, y1, n));

c = x + 1i * y;
z = zeros(size(c));
k = zeros(size(c));

for j = 1:niter
    z   = z.^2 + c;
    k(abs(z) > 2 & k == 0) = niter - j;
end

figure,
imagesc(k),
colormap jet
axis square
end