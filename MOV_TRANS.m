function dx = MOV_TRANS(t, x)
    %% PARAMETOS
    m1 = 290;
    m2 = 59;
    b1 = 1000;
    k1 = 16182;
    k2 = 19000;
    f = 0;
    z = 0.05*sin(0.5*pi);
    % z = 0.05*sin(20*pi);
    
    %% DINAMICA DEL SISTEMA
    dx = zeros(4, 1);
    % du = zeros(2, 1);
    
    %% MATRICES
    % A = [0 0 1 0; 0 0 0 1; -k1/m1 k2/m1 -b1/m1 b2/m2; k1/m2 -(k1+k2)/m2 b1/m2 -b1/m2];
    % B = [0 0; 0 0; 1/m1 0; -1/m2 k2/m2];
    % C = [];
    
    A = [m1 0; 0 m2];
    B = [b1 -b1; -b1 b1];
    C = [k1 -k1; -k1 k1+k2];
    D = [-1 0; 1 -k2]; 
    
    dx(1) = x(3);
    dx(2) = x(4);
    dx(3:4) = A\(-B*[x(3); x(4)]-C*[x(1); x(2)]-D*[f; z]);
    % dx(3:4) = M\(-C*[x(3);x(4)]-G);
end