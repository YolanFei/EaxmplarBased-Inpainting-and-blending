function [resized,objmask] = resizer(im,mask,scaler)
masked = im.*mask;
[ux,uy,lx,ly] = getCorner(masked);
resized = imresize(masked(uy:ly,ux:lx,:),scaler,'bilinear');
objmask = imresize(mask(uy:ly,ux:lx,:),scaler,'bilinear');
end