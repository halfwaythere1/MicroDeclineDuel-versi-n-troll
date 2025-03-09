local frame = CreateFrame("Frame", nil, UIParent)
frame:RegisterEvent("DUEL_REQUESTED")
frame:SetScript("OnEvent", function(self, event, name)
    HideUIPanel(StaticPopup1)
    CancelDuel()
    
    -- Table of 40 poetic decline messages in Spanish
    local messages = {
        "Los duelos hieren el alma, no la hoja.",
        "La gloria del combate engaña al corazón.",
        "Busco paz, no la lucha.",
        "El honor de un duelo es una falsa luz.",
        "Que las sombras peleen, no tú y yo.",
        "La danza de las espadas canta en vano.",
        "Sin duelos, mi calma es mi escudo.",
        "Luchar es caer, aunque sea por un instante.",
        "El alma no encuentra verdad en la sangre.",
        "Prefiero el silencio a la furia de las armas.",
        "Un duelo es un eco vacío de valor.",
        "La paz es mi victoria, no el acero.",
        "Las heridas del espíritu no sanan con gloria.",
        "No hay honor en cruzar espadas sin causa.",
        "Dejo el combate a los fantasmas del pasado.",
        "El destino no se forja en duelos vanos.",
        "Mi sendero es quietud, no violencia.",
        "La espada miente al prometer honor.",
        "El clamor de la batalla no me llama.",
        "Rechazo el duelo, no el respeto.",
        "La fuerza verdadera yace en la calma.",
        "No derramo sangre por orgullo fugaz.",
        "El viento susurra paz, no guerra.",
        "Un alma en reposo no busca la lucha.",
        "Los duelos son cadenas del espíritu.",
        "Mi escudo es la voluntad, no la hoja.",
        "El fuego del combate no me consume.",
        "Que el acero descanse, no mi alma.",
        "La vanidad del duelo no me tienta.",
        "Camino entre luces, no entre sombras.",
        "El honor no se mide en heridas.",
        "La batalla engaña, la paz revela.",
        "No hay victoria en un alma dividida.",
        "Las espadas gritan, pero yo escucho el silencio.",
        "El duelo es un espejismo de grandeza.",
        "Mi corazón late por la vida, no la lucha.",
        "Que la tormenta luche sola, yo no.",
        "El alma libre no se doblega al acero.",
        "Rehúso danzar con la muerte por capricho.",
        "La verdadera fuerza es rechazar la guerra.",
    }
    
    -- Pick a random message
    local randomMessage = messages[math.random(#messages)]
    SendChatMessage(randomMessage, "SAY", nil)
end)