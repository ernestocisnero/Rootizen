//
//  HaveYouEver.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/30/26.
//


import SwiftUI


let haveYouEverQuestions: [HaveYouEverQuestion] = [
    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER claimed to be a U.S. citizen (in writing or any other way)?",
            spanish: "¿ALGUNA VEZ ha afirmado ser ciudadano de los Estados Unidos (por escrito o de cualquier otra manera)?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER registered to vote or voted in any Federal, state, or local election in the United States?",
            spanish: "¿ALGUNA VEZ se ha registrado para votar o ha votado en alguna elección federal, estatal o local en los Estados Unidos?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER been a member of, involved in, or in any way associated with any Communist or totalitarian party anywhere in the world?",
            spanish: "¿ALGUNA VEZ ha sido miembro, ha estado involucrado o ha estado asociado de alguna manera con algún partido comunista o totalitario en cualquier parte del mundo?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER been a member of, involved in, or in any way associated with, or have you EVER provided money, a thing of value, services or labor, or any other assistance or support to a group that:",
            spanish: "¿ALGUNA VEZ ha sido miembro, ha estado involucrado o ha estado asociado de alguna manera con un grupo, o ALGUNA VEZ le ha proporcionado dinero, bienes de valor, servicios, trabajo o cualquier otra asistencia o apoyo a un grupo que:"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER ordered, incited, called for, committed, assisted, helped with, or otherwise participated in any of the following:",
            spanish: "¿ALGUNA VEZ ha ordenado, incitado, solicitado, cometido, ayudado, colaborado o participado de alguna otra manera en cualquiera de las siguientes acciones:"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER served in, been a member of, assisted (helped), or participated in any military or police unit?",
            spanish: "¿ALGUNA VEZ ha servido en, ha sido miembro de, ha asistido (ayudado) o ha participado en alguna unidad militar o policial?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER worked, volunteered, or otherwise served in a place where people were detained, or have you EVER directed or participated in any other activity that involved detaining people?",
            spanish: "¿ALGUNA VEZ ha trabajado, sido voluntario o prestado servicios de alguna otra manera en un lugar donde se detenía a personas, o ALGUNA VEZ ha dirigido o participado en alguna otra actividad que implicara detener personas?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Were you EVER a part of any group, or did you EVER help any group, unit, or organization that used a weapon against any person, or threatened to do so?",
            spanish: "¿ALGUNA VEZ ha formado parte de algún grupo, o ALGUNA VEZ ha ayudado a algún grupo, unidad u organización que haya utilizado un arma contra alguna persona o haya amenazado con hacerlo?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER served in, been a member of, assisted (helped), or participated in any armed group (a group that carries weapons), for example: paramilitary unit, self-defense unit, vigilante unit, rebel group, or guerrilla group?",
            spanish: "¿ALGUNA VEZ ha servido en, ha sido miembro de, ha asistido (ayudado) o ha participado en algún grupo armado (un grupo que porta armas), por ejemplo: una unidad paramilitar, unidad de autodefensa, unidad de vigilantes, grupo rebelde o grupo guerrillero?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER received any weapons training, paramilitary training, or other military-type training?",
            spanish: "¿ALGUNA VEZ ha recibido entrenamiento con armas, entrenamiento paramilitar u otro tipo de entrenamiento militar?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER sold, provided, or transported weapons, or assisted any person in selling, providing, or transporting weapons, which you knew or believed would be used against another person?",
            spanish: "¿ALGUNA VEZ ha vendido, proporcionado o transportado armas, o ha ayudado a alguna persona a vender, proporcionar o transportar armas que sabía o creía que serían utilizadas contra otra persona?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER recruited, enlisted, conscripted, or used any person under 15 years of age to serve in or help an armed group, or attempted or worked with others to do so?",
            spanish: "¿ALGUNA VEZ ha reclutado, alistado, obligado a incorporarse o utilizado a alguna persona menor de 15 años para servir en un grupo armado o ayudar a dicho grupo, o ha intentado hacerlo o trabajado con otras personas para hacerlo?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER used any person under 15 years of age to take part in hostilities or attempted or worked with others to do so?",
            spanish: "¿ALGUNA VEZ ha utilizado a alguna persona menor de 15 años para participar en hostilidades, o ha intentado hacerlo o trabajado con otras personas para hacerlo?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER committed, agreed to commit, asked someone else to commit, helped commit, or tried to commit a crime or offense for which you were NOT arrested?",
            spanish: "¿ALGUNA VEZ ha cometido, acordado cometer, pedido a otra persona que cometa, ayudado a cometer o intentado cometer un delito u otra infracción por la cual NO fue arrestado?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER been arrested, cited, detained or confined by any law enforcement officer, military official (in the U.S. or elsewhere), or immigration official for any reason, or been charged with a crime or offense?",
            spanish: "¿ALGUNA VEZ ha sido arrestado, citado, detenido o confinado por un agente del orden público, funcionario militar (en los Estados Unidos o en otro lugar) o funcionario de inmigración por cualquier motivo, o ha sido acusado de un delito u otra infracción?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER engaged in prostitution, attempted to procure or import prostitutes or persons for the purpose of prostitution, or received any proceeds or money from prostitution?",
            spanish: "¿ALGUNA VEZ ha participado en la prostitución, ha intentado conseguir o importar prostitutas o personas con el propósito de ejercer la prostitución, o ha recibido ganancias o dinero provenientes de la prostitución?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER manufactured, cultivated, produced, distributed, dispensed, sold, or smuggled (trafficked) any controlled substances, illegal drugs, narcotics, or drug paraphernalia in violation of any law or regulation of a U.S. state, the United States, or a foreign country?",
            spanish: "¿ALGUNA VEZ ha fabricado, cultivado, producido, distribuido, dispensado, vendido o traficado con sustancias controladas, drogas ilegales, narcóticos o parafernalia relacionada con drogas en violación de alguna ley o regulación de un estado de los Estados Unidos, de los Estados Unidos o de un país extranjero?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER married someone in order to obtain an immigration benefit?",
            spanish: "¿ALGUNA VEZ se ha casado con alguien con el propósito de obtener un beneficio de inmigración?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER been married to more than one person at the same time?",
            spanish: "¿ALGUNA VEZ ha estado casado con más de una persona al mismo tiempo?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER helped anyone to enter, or try to enter, the United States illegally?",
            spanish: "¿ALGUNA VEZ ha ayudado a alguien a entrar o intentar entrar ilegalmente a los Estados Unidos?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER failed to support your dependents (pay child support) or to pay alimony (court-ordered financial support after divorce or separation)?",
            spanish: "¿ALGUNA VEZ ha dejado de mantener a sus dependientes (pagar manutención de hijos) o de pagar pensión alimenticia (manutención económica ordenada por un tribunal después de un divorcio o separación)?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER gambled illegally or received income from illegal gambling?",
            spanish: "¿ALGUNA VEZ ha participado en juegos de azar ilegales o ha recibido ingresos provenientes de juegos de azar ilegales?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER made any misrepresentation to obtain any public benefit in the United States?",
            spanish: "¿ALGUNA VEZ ha hecho alguna declaración falsa para obtener algún beneficio público en los Estados Unidos?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER been removed or deported from the United States?",
            spanish: "¿ALGUNA VEZ ha sido expulsado o deportado de los Estados Unidos?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER been placed in removal, rescission, or deportation proceedings?",
            spanish: "¿ALGUNA VEZ ha sido sometido a procedimientos de expulsión, rescisión o deportación?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER lied to any U.S. Government officials to gain entry or admission into the United States or to gain immigration benefits while in the United States?",
            spanish: "¿ALGUNA VEZ ha mentido a funcionarios del Gobierno de los Estados Unidos para obtener entrada o admisión a los Estados Unidos, o para obtener beneficios de inmigración mientras se encontraba en los Estados Unidos?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER given any U.S. Government officials any information or documentation that was false, fraudulent, or misleading?",
            spanish: "¿ALGUNA VEZ ha proporcionado a funcionarios del Gobierno de los Estados Unidos información o documentación falsa, fraudulenta o engañosa?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER left the United States to avoid being drafted in the U.S. armed forces?",
            spanish: "¿ALGUNA VEZ ha salido de los Estados Unidos para evitar ser reclutado para las Fuerzas Armadas de los Estados Unidos?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER applied for any kind of exemption from military service in the U.S. armed forces?",
            spanish: "¿ALGUNA VEZ ha solicitado algún tipo de exención del servicio militar en las Fuerzas Armadas de los Estados Unidos?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER served in the U.S. armed forces?",
            spanish: "¿ALGUNA VEZ ha servido en las Fuerzas Armadas de los Estados Unidos?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER been discharged from training or service in the U.S. armed forces because you were an alien?",
            spanish: "¿ALGUNA VEZ ha sido dado de baja del entrenamiento o servicio en las Fuerzas Armadas de los Estados Unidos porque era extranjero?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER been court-martialed or have you received a discharge characterized as other than honorable, bad conduct, or dishonorable, while in the U.S. armed forces?",
            spanish: "¿ALGUNA VEZ ha sido sometido a un consejo de guerra o ha recibido una baja caracterizada como menos que honorable, por mala conducta o deshonrosa mientras estaba en las Fuerzas Armadas de los Estados Unidos?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Have you EVER deserted from the U.S. armed forces?",
            spanish: "¿ALGUNA VEZ ha desertado de las Fuerzas Armadas de los Estados Unidos?"
        )
    ),

    HaveYouEverQuestion(
        id: UUID(),
        text: LocalizedText(
            english: "Do you now have, or did you EVER have, a hereditary title or an order of nobility in any foreign country?",
            spanish: "¿Tiene actualmente, o ALGUNA VEZ ha tenido, un título hereditario o una orden de nobleza en algún país extranjero?"
        )
    )
]
