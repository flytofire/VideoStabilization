function [T_acc] = post_accum(T)

    %T_acc = cell(length(T),1);
    %T_acc{length(T)} = T{length(T)};

    %for i=flip(1:length(T)-1)
    %    T_acc{i} = T_acc{i+1}*T{i};
    %end
    
    L = length(T);
    T_acc = cell(L,1);
    T_acc{1} = T{1};
    
    for i=2:L
        T_acc{i} = T{i}*T_acc{i-1};
    end
end

