const E = [
    0 0 1 1 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0;
    0 1 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 0;
    0 1 0 0 1 0 1 0 0 0 0 1 0 1 0 0 1 0;
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0;
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1;
    0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0;
    0 1 0 0 0 0 0 1 0 0 1 0 0 0 0 0 1 0;
    0 1 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 0;
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0;
    0 0 1 1 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
]

function frown!(E)
    E[[7, 9], :] = E[[9, 7], :]
    return E
end

function frown(E)
    frown!(copy(E)) 
end

function stickerwall(E)
    top = [E frown(E)]
    divider = ones(Int, 1, size(top, 2))
    bottom = [frown(E) E]
    return [top; divider; bottom]
end

function colpixelcount(E)
    s = vec(sum(E; dims=1))
    [E[i, j] == 1 ? s[j] : E[i, j] for i in axes(E, 1), j in axes(E, 2)]
end

function render(E)
    chars = ifelse.(E .== 0, " ", "X")
    rows = map(join, eachrow(chars))
    return join(rows, "\n")
end
