correctReturn = "" -- What needs to be returned mostly "Whitelisted"
urlMatch = "" -- A part of the URL so it be checked

local oldSyn
oldSyn = hookfunction(syn.request,newcclosure(function(a,b)
    if type(a) == "table" then
        for i,v in pairs(a) do
            if i == "Url" and string.match(v,urlMatch) then
                return {
                    StatusCode = 200,
                    Body = correctReturn
                }
            end
        end
    end
    return oldSyn(a,b)
end))