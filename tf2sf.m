%==========================================================================
%
% tf2sf  Transfer function to symbolic function.
%
%   H_sym = ecef2geod(H_tf)
%
% Author: Tamas Kis
% Last Update: 2021-10-05
%
%--------------------------------------------------------------------------
%
% ------
% INPUT:
% ------
%   H_tf    - (m×n tf) transfer function as a transfer function object
%
% -------
% OUTPUT:
% -------
%   H_sym   - (m×n sym) transfer function as a symbolic function object
%
%==========================================================================
function H_sym = tf2sf(H_tf)
    [num,den] = tfdata(H_tf);
    syms x
    H_sym = poly2sym(cell2mat(num),x)/poly2sym(cell2mat(den),x);
end