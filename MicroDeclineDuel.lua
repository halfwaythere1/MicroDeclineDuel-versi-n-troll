local frame = CreateFrame("Frame", nil, UIParent)
frame:RegisterEvent("DUEL_REQUESTED")
frame:SetScript("OnEvent", function(self, event, name)
    HideUIPanel(StaticPopup1)
    CancelDuel()
    
    -- Table of poetic decline messages in Spanish
    local messages = {
        "Los duelos hieren el alma, no la hoja.",
        "La gloria del combate engaña al corazón.",
        "Busco paz, no la lucha.",
        "El honor de un duelo es una falsa luz.",
        "Que las sombras peleen, no tú y yo.",
        "La danza de las espadas canta en vano.",
        "Sin duelos, mi calma es mi escudo.",
        "Luchar es caer, aunque sea por un instante.",
    }
    
    -- Pick a random message
    local randomMessage = messages[math.random(#messages)]
    SendChatMessage(randomMessage, "SAY", nil)
end)