function [H,Ni,nddl,Np,dt] = AnMatIR(mat)

% ------------------   This file is part of EasyMod   ----------------------------
%  Internal function
%
%  Analysis of the impulse response matrix. It is composed of impulse
%  responses placed on the matrix at (i,j) location corresponding to their
%  DOF. The function calculates:
%  - a reduced matrix only with the useful columns,
%  - the number of inputs,
%  - the number of DOF (supposed to be the number of outputs),
%  - the number of measurement locations,
%  - the time resolution .
%
% Copyright (C) 2012 David WATTIAUX, Georges KOUROUSSIS

global ContadorDOF

% Definition of the number of DOF
clear nddl
nddl = size(mat,1)-1 ; 
ContadorDOF = nddl;

% nombre de points de mesure
clear dl Np I temps dt
dl = find(mat(nddl+1,:)) ;
Np = max(dl) ;
I = mat(1:nddl,:) ;
temps = mat(nddl+1,1:Np) ;
dt = temps(2)-temps(1) ;

% test on the impulse responses
clear ncol test i j 
ncol = size(mat,2)/Np ;
for i = 1:nddl
   for j = 1:ncol
      if norm(mat(i,(j-1)*Np+1:j*Np)) ~= 0
         test(i,j) =1 ;
      else
         test(i,j) =0 ;
      end
   end
end

% Test for obtaining the number of input Ni
clear Ni s H c  
Ni = 0 ;
disp(' ') ;
for s = 1:ncol 
   if norm(test(:,s)) == 0
   else
      Ni = Ni+1;
      H(:,(Ni-1)*Np+1:Ni*Np) = mat(1:nddl,(s-1)*Np+1:s*Np) ;
%       c = sprintf('Input at DOF %1.0f',s) ;
%       disp(c) ;
   end
end