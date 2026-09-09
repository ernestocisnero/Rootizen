//
//  Q2025Version.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

let q2025version: [Question] = [
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "What is the form of government of the United States?",
            spanish: "¿Cuál es la forma de gobierno de Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Monarchy",
                    spanish: "Monarquía"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Republic",
                    spanish: "República"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Oligarchy",
                    spanish: "Oligarquía"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Theocracy",
                    spanish: "Teocracia"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "What is the supreme law of the land?",
            spanish: "¿Cuál es la ley suprema del país?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Bill of Rights",
                    spanish: "La Carta de Derechos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Constitution",
                    spanish: "La Constitución"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Federalist Papers",
                    spanish: "Los Documentos Federalistas"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Common Law",
                    spanish: "El derecho consuetudinario"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "Name one thing the U.S. Constitution does.",
            spanish: "Mencione una cosa que hace la Constitución de EE. UU."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Declares war",
                    spanish: "Declara la guerra"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Forms the government",
                    spanish: "Forma el gobierno"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Sets the price of goods",
                    spanish: "Fija el precio de los bienes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Appoints the King",
                    spanish: "Nombra al Rey"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "The U.S. Constitution starts with the words 'We the People.' What does 'We the People' mean?",
            spanish: "La Constitución de EE. UU. comienza con las palabras \"We the People\" (Nosotros el Pueblo). ¿Qué significa \"We the People\"?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Socialism",
                    spanish: "Socialismo"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Self-government",
                    spanish: "Autogobierno"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Monarchy",
                    spanish: "Monarquía"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Military rule",
                    spanish: "Gobierno militar"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "How are changes made to the U.S. Constitution?",
            spanish: "¿Cómo se hacen cambios a la Constitución de EE. UU.?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Executive orders",
                    spanish: "Órdenes ejecutivas"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Amendments",
                    spanish: "Enmiendas"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Supreme Court rulings",
                    spanish: "Decisiones de la Corte Suprema"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Presidential vetoes",
                    spanish: "Vetos presidenciales"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "What does the Bill of Rights protect?",
            spanish: "¿Qué protege la Carta de Derechos (Bill of Rights)?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The powers of the President",
                    spanish: "Los poderes del presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "(The basic) rights of Americans",
                    spanish: "Los derechos (básicos) de los estadounidenses"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The right to travel abroad",
                    spanish: "El derecho a viajar al extranjero"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The federal tax code",
                    spanish: "El código tributario federal"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "How many amendments does the U.S. Constitution have?",
            spanish: "¿Cuántas enmiendas tiene la Constitución de EE. UU.?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Ten (10)",
                    spanish: "Diez (10)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Twenty-seven (27)",
                    spanish: "Veintisiete (27)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fifty (50)",
                    spanish: "Cincuenta (50)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Thirty-three (33)",
                    spanish: "Treinta y tres (33)"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "Why is the Declaration of Independence important?",
            spanish: "¿Por qué es importante la Declaración de Independencia?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "It set up the first bank",
                    spanish: "Estableció el primer banco"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "It says America is free from British control",
                    spanish: "Dice que Estados Unidos es libre del control británico"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "It established the Supreme Court",
                    spanish: "Estableció la Corte Suprema"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "It ended the Civil War",
                    spanish: "Puso fin a la Guerra Civil"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "What founding document said the American colonies were free from Britain?",
            spanish: "¿Qué documento fundacional dijo que las colonias americanas eran libres de Gran Bretaña?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Constitution",
                    spanish: "La Constitución"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Declaration of Independence",
                    spanish: "Declaración de Independencia"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Federalist Papers",
                    spanish: "Los Documentos Federalistas"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Mayflower Compact",
                    spanish: "El Pacto del Mayflower"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "Name two important ideas from the Declaration of Independence and the U.S. Constitution.",
            spanish: "Mencione dos ideas importantes de la Declaración de Independencia y la Constitución de EE. UU."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Equality and Liberty",
                    spanish: "Igualdad y libertad"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Taxation and Monarchy",
                    spanish: "Impuestos y monarquía"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "War and Peace",
                    spanish: "Guerra y paz"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Trade and Industry",
                    spanish: "Comercio e industria"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "The words 'Life, Liberty, and the pursuit of Happiness' are in what founding document?",
            spanish: "Las palabras \"Vida, Libertad y la búsqueda de la Felicidad\" están en ¿cuál documento fundacional?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Constitution",
                    spanish: "La Constitución"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Declaration of Independence",
                    spanish: "Declaración de Independencia"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Bill of Rights",
                    spanish: "La Carta de Derechos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Articles of Confederation",
                    spanish: "Los Artículos de la Confederación"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "What is the economic system of the United States?",
            spanish: "¿Cuál es el sistema económico de Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Communalism",
                    spanish: "Comunalismo"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Capitalism",
                    spanish: "Capitalismo"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Traditional economy",
                    spanish: "Economía tradicional"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Socialist economy",
                    spanish: "Economía socialista"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "What is the rule of law?",
            spanish: "¿Qué es el estado de derecho?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Only citizens follow the law",
                    spanish: "Solo los ciudadanos deben cumplir la ley"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Everyone must follow the law",
                    spanish: "Todos deben cumplir la ley"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Judges are above the law",
                    spanish: "Los jueces están por encima de la ley"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President makes the law",
                    spanish: "El presidente hace la ley"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "Many documents influenced the U.S. Constitution. Name one.",
            spanish: "Muchos documentos influyeron en la Constitución de EE. UU. Mencione uno."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Magna Carta",
                    spanish: "La Carta Magna"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Federalist Papers",
                    spanish: "Los Documentos Federalistas"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Treaty of Paris",
                    spanish: "El Tratado de París"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Gettysburg Address",
                    spanish: "El Discurso de Gettysburg"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Government",
        question: LocalizedText(
            english: "There are three branches of government. Why?",
            spanish: "Hay tres ramas del gobierno. ¿Por qué?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To make the government faster",
                    spanish: "Para hacer que el gobierno sea más rápido"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "So one part does not become too powerful",
                    spanish: "Para que ninguna parte se vuelva demasiado poderosa"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because there were three colonies",
                    spanish: "Porque había tres colonias"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To help the President",
                    spanish: "Para ayudar al presidente"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Name the three branches of government.",
            spanish: "Mencione las tres ramas del gobierno."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Army, Navy, Air Force",
                    spanish: "Ejército, Marina y Fuerza Aérea"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Legislative, executive, and judicial",
                    spanish: "Legislativa, ejecutiva y judicial"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "State, Local, Federal",
                    spanish: "Estatal, local y federal"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Democratic, Republican, Independent",
                    spanish: "Demócrata, republicano e independiente"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "The President of the United States is in charge of which branch of government?",
            spanish: "El presidente de Estados Unidos está a cargo de ¿cuál rama del gobierno?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Legislative branch",
                    spanish: "Rama legislativa"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Executive branch",
                    spanish: "Rama ejecutiva"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Judicial branch",
                    spanish: "Rama judicial"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Military branch",
                    spanish: "Rama militar"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "What part of the federal government writes laws?",
            spanish: "¿Qué parte del gobierno federal escribe las leyes?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Supreme Court",
                    spanish: "La Corte Suprema"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "(U.S.) Congress",
                    spanish: "El Congreso de EE. UU."
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Cabinet",
                    spanish: "El Gabinete"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Department of Justice",
                    spanish: "El Departamento de Justicia"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "What are the two parts of the U.S. Congress?",
            spanish: "¿Cuáles son las dos partes del Congreso de EE. UU.?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President and Vice President",
                    spanish: "El presidente y vicepresidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Senate and House (of Representatives)",
                    spanish: "El Senado y la Cámara de Representantes"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The FBI and CIA",
                    spanish: "El FBI y la CIA"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Governor and Lieutenant Governor",
                    spanish: "El gobernador y el vicegobernador"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Name one power of the U.S. Congress.",
            spanish: "Mencione un poder del Congreso de EE. UU."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Appoints judges",
                    spanish: "Nombra jueces"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Writes laws",
                    spanish: "Escribe las leyes"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Vetoes bills",
                    spanish: "Veta proyectos de ley"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Commands the military",
                    spanish: "Comanda las fuerzas armadas"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "How many U.S. senators are there?",
            spanish: "¿Cuántos senadores de EE. UU. hay?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fifty (50)",
                    spanish: "Cincuenta (50)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "One hundred (100)",
                    spanish: "Cien (100)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Four hundred thirty-five (435)",
                    spanish: "Cuatrocientos treinta y cinco (435)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fifty-two (52)",
                    spanish: "Cincuenta y dos (52)"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "How long is a term for a U.S. senator?",
            spanish: "¿Cuánto dura el término de un senador de EE. UU.?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Two (2) years",
                    spanish: "Dos (2) años"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Four (4) years",
                    spanish: "Cuatro (4) años"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Six (6) years",
                    spanish: "Seis (6) años"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Eight (8) years",
                    spanish: "Ocho (8) años"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Who is one of your state’s U.S. senators now?",
            spanish: "¿Quién es uno de los senadores de EE. UU. de su estado ahora?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Lindsey Graham",
                    spanish: "Lindsey Graham"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Tim Scott",
                    spanish: "Tim Scott"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Governor",
                    spanish: "El gobernador"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Varies by State (Look in Representatives section)",
                    spanish: "Las respuestas varían según el estado (consulte la sección de Representantes)"
                ),
                isCorrect: true
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "How many voting members are in the House of Representatives?",
            spanish: "¿Cuántos miembros con derecho a voto hay en la Cámara de Representantes?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "One hundred (100)",
                    spanish: "Cien (100)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Four hundred thirty-five (435)",
                    spanish: "Cuatrocientos treinta y cinco (435)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fifty (50)",
                    spanish: "Cincuenta (50)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Two hundred (200)",
                    spanish: "Doscientos (200)"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "How long is a term for a member of the House of Representatives?",
            spanish: "¿Cuánto dura el término de un miembro de la Cámara de Representantes?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Two (2) years",
                    spanish: "Dos (2) años"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Four (4) years",
                    spanish: "Cuatro (4) años"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Six (6) years",
                    spanish: "Seis (6) años"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Life",
                    spanish: "De por vida"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Why do U.S. representatives serve shorter terms than U.S. senators?",
            spanish: "¿Por qué los representantes de EE. UU. sirven términos más cortos que los senadores?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To save money",
                    spanish: "Para ahorrar dinero"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To more closely follow public opinion",
                    spanish: "Para seguir más de cerca la opinión pública"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because there are more of them",
                    spanish: "Porque hay más de ellos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To prevent long debates",
                    spanish: "Para evitar debates prolongados"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "How many senators does each state have?",
            spanish: "¿Cuántos senadores tiene cada estado?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "One (1)",
                    spanish: "Uno (1)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Two (2)",
                    spanish: "Dos (2)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Based on population",
                    spanish: "Según la población"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Four (4)",
                    spanish: "Cuatro (4)"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Why does each state have two senators?",
            spanish: "¿Por qué cada estado tiene dos senadores?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because of the state's population",
                    spanish: "Por la población del estado"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Equal representation (for small states)",
                    spanish: "Representación igualitaria (para los estados pequeños)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because they are the oldest states",
                    spanish: "Porque son los estados más antiguos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To match the number of parties",
                    spanish: "Para igualar el número de partidos"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Name your U.S. representative.",
            spanish: "Diga el nombre de su representante ante el Congreso."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "William Timmons",
                    spanish: "William Timmons"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Nancy Pelosi",
                    spanish: "Nancy Pelosi"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "El presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Varies by District",
                    spanish: "Las respuestas varían según el distrito"
                ),
                isCorrect: true
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "What is the name of the Speaker of the House of Representatives now?",
            spanish: "¿Cómo se llama el presidente de la Cámara de Representantes (Speaker of the House) ahora?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Nancy Pelosi",
                    spanish: "Nancy Pelosi"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Mike Johnson",
                    spanish: "Mike Johnson"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Kevin McCarthy",
                    spanish: "Kevin McCarthy"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Hakeem Jeffries",
                    spanish: "Hakeem Jeffries"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Who does a U.S. senator represent?",
            spanish: "¿A quién representa un senador de EE. UU.?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Only the state legislature",
                    spanish: "Solo la legislatura estatal"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Citizens of their state",
                    spanish: "Los ciudadanos de su estado"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The political party",
                    spanish: "El partido político"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "El presidente"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Who elects U.S. senators?",
            spanish: "¿Quién elige a los senadores de EE. UU.?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "El presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Citizens from their state",
                    spanish: "Los ciudadanos de su estado"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The House of Representatives",
                    spanish: "La Cámara de Representantes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "State Governors",
                    spanish: "Gobernadores estatales"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Who does a member of the House of Representatives represent?",
            spanish: "¿A quién representa un miembro de la Cámara de Representantes?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The entire state",
                    spanish: "Todo el estado"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Citizens in their (congressional) district",
                    spanish: "Los ciudadanos de su distrito (congresional)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Governor",
                    spanish: "El gobernador"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The United Nations",
                    spanish: "Las Naciones Unidas"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Who elects members of the House of Representatives?",
            spanish: "¿Quién elige a los miembros de la Cámara de Representantes?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Senate",
                    spanish: "El Senado"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Citizens from their (congressional) district",
                    spanish: "Los ciudadanos de su distrito (congresional)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "State Legislatures",
                    spanish: "Las legislaturas estatales"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Electoral College",
                    spanish: "El Colegio Electoral"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Some states have more representatives than other states. Why?",
            spanish: "Algunos estados tienen más representantes que otros. ¿Por qué?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because they are bigger",
                    spanish: "Porque son más grandes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "(Because of) the state’s population",
                    spanish: "(Debido a) la población del estado"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because they pay more taxes",
                    spanish: "Porque pagan más impuestos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because the President likes them",
                    spanish: "Porque le gustan al presidente"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "The President of the United States is elected for how many years?",
            spanish: "¿Por cuántos años se elige al presidente de Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Two (2)",
                    spanish: "Dos (2)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Four (4)",
                    spanish: "Cuatro (4)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Six (6)",
                    spanish: "Seis (6)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Life",
                    spanish: "De por vida"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "The President of the United States can serve only two terms. Why?",
            spanish: "El presidente de Estados Unidos solo puede servir dos términos. ¿Por qué?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because of the 10th Amendment",
                    spanish: "Por la 10.ª Enmienda"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To keep the president from becoming too powerful",
                    spanish: "Para evitar que el presidente se vuelva demasiado poderoso"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because it is too expensive",
                    spanish: "Porque es demasiado caro"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "By order of the Supreme Court",
                    spanish: "Por orden de la Corte Suprema"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "What is the name of the President of the United States now?",
            spanish: "¿Cómo se llama el presidente de Estados Unidos ahora?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Joe Biden",
                    spanish: "Joe Biden"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Donald Trump",
                    spanish: "Donald Trump"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "JD Vance",
                    spanish: "JD Vance"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Kamala Harris",
                    spanish: "Kamala Harris"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "What is the name of the Vice President of the United States now?",
            spanish: "¿Cómo se llama el vicepresidente de Estados Unidos ahora?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Kamala Harris",
                    spanish: "Kamala Harris"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Mike Pence",
                    spanish: "Mike Pence"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Position Vacant",
                    spanish: "Cargo vacante"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "JD Vance",
                    spanish: "JD Vance"
                ),
                isCorrect: true
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "If the president can no longer serve, who becomes president?",
            spanish: "Si el presidente ya no puede servir, ¿quién se convierte en presidente?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Speaker of the House",
                    spanish: "Presidente de la Cámara de Representantes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Vice President",
                    spanish: "El vicepresidente"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Secretary of State",
                    spanish: "Secretario de Estado"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "First Lady",
                    spanish: "Primera dama"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Name one power of the president.",
            spanish: "Mencione un poder del presidente."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Writes laws",
                    spanish: "Escribe las leyes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Signs bills into law",
                    spanish: "Firma proyectos de ley para convertirlos en leyes"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Declares war",
                    spanish: "Declara la guerra"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Sets the tax rate",
                    spanish: "Fija la tasa de impuestos"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Who is Commander in Chief of the U.S. military?",
            spanish: "¿Quién es el comandante en jefe de las fuerzas armadas de EE. UU.?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Secretary of Defense",
                    spanish: "El secretario de Defensa"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "El presidente"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Chairman of the Joint Chiefs",
                    spanish: "El presidente del Estado Mayor Conjunto"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The General of the Army",
                    spanish: "El general del Ejército"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Who signs bills to become laws?",
            spanish: "¿Quién firma los proyectos de ley para convertirlos en leyes?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Chief Justice",
                    spanish: "El presidente de la Corte Suprema"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "El presidente"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Speaker of the House",
                    spanish: "El presidente de la Cámara de Representantes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Senate Leader",
                    spanish: "El líder del Senado"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Who vetoes bills?",
            spanish: "¿Quién veta los proyectos de ley?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Supreme Court",
                    spanish: "La Corte Suprema"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "El presidente"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Vice President",
                    spanish: "El vicepresidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Senate",
                    spanish: "El Senado"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Who appoints federal judges?",
            spanish: "¿Quién nombra a los jueces federales?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Senate",
                    spanish: "El Senado"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "El presidente"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Chief Justice",
                    spanish: "El presidente de la Corte Suprema"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Cabinet",
                    spanish: "El Gabinete"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "The executive branch has many parts. Name one.",
            spanish: "La rama ejecutiva tiene muchas partes. Mencione una."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Supreme Court",
                    spanish: "La Corte Suprema"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "El presidente"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Senate",
                    spanish: "El Senado"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The House of Representatives",
                    spanish: "La Cámara de Representantes"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "What does the President’s Cabinet do?",
            spanish: "¿Qué hace el Gabinete del presidente?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Makes federal laws",
                    spanish: "Hace las leyes federales"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Advises the President",
                    spanish: "Asesora al presidente"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Reviews court cases",
                    spanish: "Revisa casos judiciales"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Collects national taxes",
                    spanish: "Recauda impuestos nacionales"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "What are two Cabinet-level positions?",
            spanish: "¿Cuáles son dos puestos a nivel de Gabinete?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Senator and Representative",
                    spanish: "Senador y representante"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Secretary of State and Attorney General",
                    spanish: "Secretario de Estado y fiscal general"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Mayor and Governor",
                    spanish: "Alcalde y gobernador"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "General and Admiral",
                    spanish: "General y almirante"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Why is the Electoral College important?",
            spanish: "¿Por qué es importante el Colegio Electoral?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "It manages federal elections",
                    spanish: "Administra las elecciones federales"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "It decides who is elected president",
                    spanish: "Decide quién es elegido presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "It creates congressional districts",
                    spanish: "Crea distritos congresionales"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "It funds political campaigns",
                    spanish: "Financia campañas políticas"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "What is one part of the judicial branch?",
            spanish: "¿Cuál es una parte de la rama judicial?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Cabinet",
                    spanish: "El Gabinete"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Supreme Court",
                    spanish: "La Corte Suprema"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Senate",
                    spanish: "El Senado"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Military",
                    spanish: "Las fuerzas armadas"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "What does the judicial branch do?",
            spanish: "¿Qué hace la rama judicial?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Enforces the law",
                    spanish: "Hace cumplir la ley"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Reviews laws",
                    spanish: "Revisa las leyes"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Writes the law",
                    spanish: "Escribe las leyes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Funds the law",
                    spanish: "Financia la ley"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "What is the highest court in the United States?",
            spanish: "¿Cuál es el tribunal más alto de Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The District Court",
                    spanish: "El tribunal de distrito"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Supreme Court",
                    spanish: "La Corte Suprema"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Appeals Court",
                    spanish: "El tribunal de apelaciones"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Cabinet",
                    spanish: "El Gabinete"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "How many seats are on the Supreme Court?",
            spanish: "¿Cuántos asientos hay en la Corte Suprema?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Seven (7)",
                    spanish: "Siete (7)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Nine (9)",
                    spanish: "Nueve (9)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Twelve (12)",
                    spanish: "Doce (12)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fifteen (15)",
                    spanish: "Quince (15)"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "How many Supreme Court justices are usually needed to decide a case?",
            spanish: "¿Cuántos jueces de la Corte Suprema se necesitan normalmente para decidir un caso?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Three (3)",
                    spanish: "Tres (3)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Five (5)",
                    spanish: "Cinco (5)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Seven (7)",
                    spanish: "Siete (7)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Nine (9)",
                    spanish: "Nueve (9)"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "How long do Supreme Court justices serve?",
            spanish: "¿Por cuánto tiempo sirven los jueces de la Corte Suprema?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Four years",
                    spanish: "Cuatro años"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "For life",
                    spanish: "De por vida"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Ten years",
                    spanish: "Diez años"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Until the President changes",
                    spanish: "Hasta que el presidente los cambie"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Supreme Court justices serve for life. Why?",
            spanish: "Los jueces de la Corte Suprema sirven de por vida. ¿Por qué?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To save money",
                    spanish: "Para ahorrar dinero"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To be independent of politics",
                    spanish: "Para ser independientes de la política"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To gain more experience",
                    spanish: "Para adquirir más experiencia"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because they are not elected",
                    spanish: "Porque no son elegidos"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Who is the Chief Justice of the United States now?",
            spanish: "¿Quién es el presidente de la Corte Suprema ahora?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Clarence Thomas",
                    spanish: "Clarence Thomas"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "John Roberts",
                    spanish: "John Roberts"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Sonia Sotomayor",
                    spanish: "Sonia Sotomayor"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Samuel Alito",
                    spanish: "Samuel Alito"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Name one power that is only for the federal government.",
            spanish: "Mencione un poder que solo tenga el gobierno federal."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Give a driver's license",
                    spanish: "Dar una licencia de conducir"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Print paper money",
                    spanish: "Imprimir papel moneda"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Provide schooling",
                    spanish: "Proporcionar educación"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Set up police departments",
                    spanish: "Establecer departamentos de policía"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Name one power that is only for the states.",
            spanish: "Mencione un poder que solo tengan los estados."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To declare war",
                    spanish: "Declarar la guerra"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Provide schooling and education",
                    spanish: "Proporcionar educación y escolarización"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To print money",
                    spanish: "Imprimir dinero"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To make treaties",
                    spanish: "Hacer tratados"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "What is the purpose of the 10th Amendment?",
            spanish: "¿Cuál es el propósito de la 10.ª Enmienda?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To give power to the President",
                    spanish: "To give poder parun el presidentee"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "(It states that the) powers not given to the federal government belong to the states or to the people.",
                    spanish: "(Establece que los) poderes no otorgados al gobierno federal pertenecen a los estados o al pueblo."
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To limit freedom of speech",
                    spanish: "Limitar la libertad de expresión"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To establish the Supreme Court",
                    spanish: "Establecer la Corte Suprema"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "Who is the governor of your state now?",
            spanish: "¿Quién es el gobernador de su estado ahora?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Henry McMaster",
                    spanish: "Henry McMaster"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Nikki Haley",
                    spanish: "Nikki Haley"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Mayor",
                    spanish: "El alcalde"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Varies by State.",
                    spanish: "Las respuestas varían según el estado"
                ),
                isCorrect: true
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "System of Government",
        question: LocalizedText(
            english: "What is the capital of your state?",
            spanish: "¿Cuál es la capital de su estado?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Varies by State.",
                    spanish: "Las respuestas varían según el estado"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Columbia",
                    spanish: "Columbia"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Greenville",
                    spanish: "Greenville"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "New York",
                    spanish: "Nueva York"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Rights and Responsibilities",
        question: LocalizedText(
            english: "There are four amendments to the U.S. Constitution about who can vote. Describe one of them.",
            spanish: "Hay cuatro enmiendas a la Constitución de EE. UU. sobre quién puede votar. Describa una de ellas."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Only property owners can vote",
                    spanish: "Solo los propietarios pueden votar"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Citizens eighteen (18) and older (can vote)",
                    spanish: "Los ciudadanos de 18 años o más pueden votar"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Only people with jobs can vote",
                    spanish: "Solo las personas con trabajo pueden votar"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "You must be 21 to vote",
                    spanish: "Debe tener 21 años para votar"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Rights and Responsibilities",
        question: LocalizedText(
            english: "Who can vote in federal elections, run for federal office, and serve on a jury in the United States?",
            spanish: "¿Quién puede votar en elecciones federales, postularse a cargos federales y servir en un jurado en Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "All residents",
                    spanish: "Todos los residentes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "U.S. Citizens",
                    spanish: "Ciudadanos estadounidenses"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Taxpayers",
                    spanish: "Contribuyentes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Anyone over 18",
                    spanish: "Cualquier persona mayor de 18 años"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Rights and Responsibilities",
        question: LocalizedText(
            english: "What are three rights of everyone living in the United States?",
            spanish: "¿Cuáles son tres derechos de todas las personas que viven en Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Voting, driving, working",
                    spanish: "Votar, conducir y trabajar"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Speech, religion, assembly",
                    spanish: "Expresión, religión y reunión"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Free housing, food, cars",
                    spanish: "Vivienda, alimentos y automóviles gratis"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Taxes, military service, jury duty",
                    spanish: "Impuestos, servicio militar y servicio de jurado"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Rights and Responsibilities",
        question: LocalizedText(
            english: "What do we show loyalty to when we say the Pledge of Allegiance?",
            spanish: "¿A qué demostramos lealtad cuando decimos el Juramento a la Bandera?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "El presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The United States",
                    spanish: "Estados Unidos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Congress",
                    spanish: "El Congreso"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The State Governor",
                    spanish: "El gobernador del estado"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Rights and Responsibilities",
        question: LocalizedText(
            english: "Name two promises that new citizens make in the Oath of Allegiance.",
            spanish: "Mencione dos promesas que hacen los nuevos ciudadanos en el Juramento de Lealtad."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To move to a new state and change names",
                    spanish: "Mudarse a otro estado y cambiar de nombre"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Give up loyalty to other countries and obey the laws",
                    spanish: "Renunciar a la lealtad a otros países y obedecer las leyes"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To never leave the country and only speak English",
                    spanish: "Nunca salir del país y hablar solo inglés"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To join the military and vote for the President",
                    spanish: "Unirse a las fuerzas armadas y votar por el presidente"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Rights and Responsibilities",
        question: LocalizedText(
            english: "How can people become United States citizens?",
            spanish: "¿Cómo pueden las personas convertirse en ciudadanos de Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "By visiting for 5 years",
                    spanish: "Visitando durante 5 años"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "By naturalizing",
                    spanish: "Naturalizándose"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "By paying a federal fee",
                    spanish: "Pagando una tarifa federal"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "By joining a community group",
                    spanish: "Uniéndose a un grupo comunitario"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Rights and Responsibilities",
        question: LocalizedText(
            english: "What are two examples of civic participation in the United States?",
            spanish: "Dé dos ejemplos de participación cívica en Estados Unidos."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Watch TV and play sports",
                    spanish: "Ver televisión y practicar deportes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Vote and join a political party",
                    spanish: "Votar y unirse a un partido político"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Buy a house and get a job",
                    spanish: "Comprar una casa y conseguir un trabajo"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Travel and learn a language",
                    spanish: "Viajar y aprender un idioma"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Rights and Responsibilities",
        question: LocalizedText(
            english: "What is one way Americans can serve their country?",
            spanish: "¿De qué manera puede servir un estadounidense a su país?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Watch the news",
                    spanish: "Ver las noticias"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Serve in the military",
                    spanish: "Servir en las fuerzas armadas"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Travel abroad",
                    spanish: "Viajar al extranjero"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Join a sports team",
                    spanish: "Unirse a un equipo deportivo"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Rights and Responsibilities",
        question: LocalizedText(
            english: "Why is it important to pay federal taxes?",
            spanish: "¿Por qué es importante pagar los impuestos federales?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To help the President",
                    spanish: "Para ayudar al presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Required by law",
                    spanish: "Lo exige la ley"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To get a refund",
                    spanish: "Para obtener un reembolso"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To join a political party",
                    spanish: "Para unirse a un partido político"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Rights and Responsibilities",
        question: LocalizedText(
            english: "It is important for all men age 18 through 25 to register for the Selective Service. Name one reason why.",
            spanish: "Es importante que todos los hombres de 18 a 25 años se registren en el Servicio Selectivo. Mencione una razón."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To get a driver's license",
                    spanish: "Para obtener una licencia de conducir"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Required by law",
                    spanish: "Lo exige la ley"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To be able to travel",
                    spanish: "Para poder viajar"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To get a passport",
                    spanish: "Para obtener un pasaporte"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "The colonists came to America for many reasons. Name one.",
            spanish: "Los colonos vinieron a América por muchas razones. Mencione una."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "For the weather",
                    spanish: "Por el clima"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Freedom",
                    spanish: "Libertad"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To see the canyons",
                    spanish: "Para ver los cañones"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To start a monarchy",
                    spanish: "Para iniciar una monarquía"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "Who lived in America before the Europeans arrived?",
            spanish: "¿Quiénes vivían en América antes de la llegada de los europeos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Vikings",
                    spanish: "Vikingos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Native Americans",
                    spanish: "Nativos americanos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Australians",
                    spanish: "Australianos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Nobody",
                    spanish: "Nadie"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "What group of people was taken and sold as slaves?",
            spanish: "¿Qué grupo de personas fue llevado y vendido como esclavos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Europeans",
                    spanish: "Europeos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Africans",
                    spanish: "Africanos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Asians",
                    spanish: "Asiáticos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "South Americans",
                    spanish: "Sudamericanos"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "What war did the Americans fight to win independence from Britain?",
            spanish: "¿Qué guerra pelearon los estadounidenses para ganar la independencia de Gran Bretaña?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Civil War",
                    spanish: "Guerra Civil"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "American Revolution",
                    spanish: "Revolución Americana"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "War of 1812",
                    spanish: "Guerra de 1812"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "World War I",
                    spanish: "Primera Guerra Mundial"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "Name one reason why the Americans declared independence from Britain.",
            spanish: "Mencione una razón por la que los estadounidenses declararon la independencia de Gran Bretaña."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "High taxes",
                    spanish: "Impuestos altos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "They wanted a King",
                    spanish: "Querían un rey"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To end slavery",
                    spanish: "Para poner fin a la esclavitud"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because of the cold winters",
                    spanish: "Por los inviernos fríos"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "Who wrote the Declaration of Independence?",
            spanish: "¿Quién escribió la Declaración de Independencia?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "George Washington",
                    spanish: "George Washington"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Thomas Jefferson",
                    spanish: "Thomas Jefferson"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Alexander Hamilton",
                    spanish: "Alexander Hamilton"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "John Adams",
                    spanish: "John Adams"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "When was the Declaration of Independence adopted?",
            spanish: "¿Cuándo se adoptó la Declaración de Independencia?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "July 4, 1787",
                    spanish: "4 de julio de 1787"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "July 4, 1776",
                    spanish: "4 de julio de 1776"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "January 1, 1800",
                    spanish: "1 de enero de 1800"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "December 25, 1775",
                    spanish: "25 de diciembre de 1775"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "The American Revolution had many important events. Name one.",
            spanish: "La Revolución Americana tuvo muchos eventos importantes. Mencione uno."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Battle of Gettysburg",
                    spanish: "La Batalla de Gettysburg"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Declaration of Independence",
                    spanish: "Declaración de Independencia"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Louisiana Purchase",
                    spanish: "La Compra de Luisiana"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Sinking of the Titanic",
                    spanish: "Hundimiento del Titanic"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "There were 13 original states. Name five.",
            spanish: "Había 13 estados originales. Nombre cinco."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "CA, NY, TX, FL, WA",
                    spanish: "California, Nueva York, Texas, Florida, Washington"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "NY, NJ, PA, VA, GA",
                    spanish: "Nueva York, Nueva Jersey, Pensilvania, Virginia, Georgia"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "OH, MI, IN, IL, WI",
                    spanish: "Ohio, Michigan, Indiana, Illinois, Wisconsin"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "ME, VT, NH, MA, CT",
                    spanish: "Maine, Vermont, Nuevo Hampshire, Massachusetts, Connecticut"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "What founding document was written in 1787?",
            spanish: "¿Qué documento fundacional se escribió en 1787?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Declaration of Independence",
                    spanish: "Declaración de Independencia"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "(U.S.) Constitution",
                    spanish: "Constitución de EE. UU."
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Bill of Rights",
                    spanish: "Carta de Derechos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Federalist Papers",
                    spanish: "Los Documentos Federalistas"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "The Federalist Papers supported the passage of the U.S. Constitution. Name one of the writers.",
            spanish: "Los Federalist Papers apoyaron la aprobación de la Constitución de EE. UU. Mencione uno de los autores."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "John Adams",
                    spanish: "John Adams"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Alexander Hamilton",
                    spanish: "Alexander Hamilton"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "George Washington",
                    spanish: "George Washington"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Thomas Jefferson",
                    spanish: "Thomas Jefferson"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "Why were the Federalist Papers important?",
            spanish: "¿Por qué fueron importantes los Federalist Papers?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "They ended the war",
                    spanish: "Pusieron fin a la guerra"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "They helped people understand the (U.S.) Constitution",
                    spanish: "Ayudaron a la gente a entender la Constitución de EE. UU."
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "They contained the Bill of Rights",
                    spanish: "Contenían la Carta de Derechos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "They declared independence",
                    spanish: "Declararon la independencia"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "Benjamin Franklin is famous for many things. Name one.",
            spanish: "Benjamin Franklin es famoso por muchas cosas. Mencione una."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Being the first President",
                    spanish: "Ser el primer presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Founded first free public libraries",
                    spanish: "Fundó las primeras bibliotecas públicas gratuitas"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Inventing the airplane",
                    spanish: "Inventar el avión"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Buying Louisiana",
                    spanish: "Comprar Luisiana"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "George Washington is famous for many things. Name one.",
            spanish: "George Washington es famoso por muchas cosas. Mencione una."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Wrote the Declaration",
                    spanish: "Escribió la Declaración"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "First president of the United States",
                    spanish: "Primer presidente de Estados Unidos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Invented the light bulb",
                    spanish: "Inventó la bombilla"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Bought Louisiana",
                    spanish: "Compró Luisiana"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "Thomas Jefferson is famous for many things. Name one.",
            spanish: "Thomas Jefferson es famoso por muchas cosas. Mencione una."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Saved the Union",
                    spanish: "Salvó la Unión"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Writer of the Declaration of Independence",
                    spanish: "Autor de la Declaración de Independencia"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Invented the telephone",
                    spanish: "Inventó el teléfono"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Led the Civil War",
                    spanish: "Dirigió la Guerra Civil"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "James Madison is famous for many things. Name one.",
            spanish: "James Madison es famoso por muchas cosas. Mencione una."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Writer of the Declaration",
                    spanish: "Writer de el Declaration"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Father of the Constitution",
                    spanish: "Padre de la Constitución"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "General in the Civil War",
                    spanish: "General en la Guerra Civil"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Freed the slaves",
                    spanish: "Liberó a los esclavos"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Colonial Period and Independence",
        question: LocalizedText(
            english: "Alexander Hamilton is famous for many things. Name one.",
            spanish: "Alexander Hamilton es famoso por muchas cosas. Mencione una."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fourth President",
                    spanish: "Cuarto presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "First Secretary of the Treasury",
                    spanish: "Primer Secretario del Tesoro"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Founded the University of Virginia",
                    spanish: "Fundó la Universidad de Virginia"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Signed the Emancipation Proclamation",
                    spanish: "Firmó la Proclamación de Emancipación"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "1800s History",
        question: LocalizedText(
            english: "What territory did the United States buy from France in 1803?",
            spanish: "¿Qué territorio compró Estados Unidos a Francia en 1803?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Florida",
                    spanish: "Florida"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Louisiana Territory",
                    spanish: "Territorio de Luisiana"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Alaska",
                    spanish: "Alaska"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Texas",
                    spanish: "Texas"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "1800s History",
        question: LocalizedText(
            english: "Name one war fought by the United States in the 1800s.",
            spanish: "Mencione una guerra en la que Estados Unidos peleó en el siglo XIX."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "World War I",
                    spanish: "Primera Guerra Mundial"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Civil War",
                    spanish: "Guerra Civil"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Revolutionary War",
                    spanish: "Guerra Revolucionaria"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Vietnam War",
                    spanish: "Guerra de Vietnam"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "1800s History",
        question: LocalizedText(
            english: "Name the U.S. war between the North and the South.",
            spanish: "Nombre la guerra de EE. UU. entre el Norte y el Sur."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Revolutionary War",
                    spanish: "La Guerra Revolucionaria"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Civil War",
                    spanish: "La Guerra Civil"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The War of 1812",
                    spanish: "La Guerra de 1812"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The French and Indian War",
                    spanish: "La Guerra Franco-Indígena"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "1800s History",
        question: LocalizedText(
            english: "The Civil War had many important events. Name one.",
            spanish: "La Guerra Civil tuvo muchos eventos importantes. Mencione uno."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Boston Tea Party",
                    spanish: "Motín del Té de Boston"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Battle of Gettysburg",
                    spanish: "Batalla de Gettysburg"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Signing of the Constitution",
                    spanish: "Firma de la Constitución"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Attack on Pearl Harbor",
                    spanish: "Ataque a Pearl Harbor"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "1800s History",
        question: LocalizedText(
            english: "Abraham Lincoln is famous for many things. Name one.",
            spanish: "Abraham Lincoln es famoso por muchas cosas. Mencione una."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Wrote the Constitution",
                    spanish: "Escribió la Constitución"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Freed the slaves Emancipation Proclamation",
                    spanish: "Liberó a los esclavos mediante la Proclamación de Emancipación"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Was the first president",
                    spanish: "Fue el primer presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Started the Industrial Revolution",
                    spanish: "Inició la Revolución Industrial"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "1800s History",
        question: LocalizedText(
            english: "What did the Emancipation Proclamation do?",
            spanish: "¿Qué hizo la Proclamación de Emancipación?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Gave women the right to vote",
                    spanish: "Concedió a las mujeres el derecho al voto"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Freed the slaves",
                    spanish: "Liberó a los esclavos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Ended the War of 1812",
                    spanish: "Puso fin a la Guerra de 1812"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Started the Civil War",
                    spanish: "Inició la Guerra Civil"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "1800s History",
        question: LocalizedText(
            english: "What U.S. war ended slavery?",
            spanish: "¿Qué guerra estadounidense puso fin a la esclavitud?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Revolutionary War",
                    spanish: "La Guerra Revolucionaria"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Civil War",
                    spanish: "La Guerra Civil"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "War of 1812",
                    spanish: "Guerra de 1812"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Mexican-American War",
                    spanish: "Guerra México-Estadounidense"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "1800s History",
        question: LocalizedText(
            english: "What amendment says all persons born or naturalized in the United States are U.S. citizens?",
            spanish: "¿Qué enmienda dice que todas las personas nacidas o naturalizadas en Estados Unidos, y sujetas a su jurisdicción, son ciudadanos estadounidenses?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1st Amendment",
                    spanish: "Enmienda 1"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "14th Amendment",
                    spanish: "Enmienda 14"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "19th Amendment",
                    spanish: "Enmienda 19"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "22nd Amendment",
                    spanish: "Enmienda 22"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "1800s History",
        question: LocalizedText(
            english: "When did all men get the right to vote?",
            spanish: "¿Cuándo obtuvieron todos los hombres el derecho al voto?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1776",
                    spanish: "1776"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "After the Civil War",
                    spanish: "Después de la Guerra Civil"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1920",
                    spanish: "1920"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1945",
                    spanish: "1945"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "1800s History",
        question: LocalizedText(
            english: "Name one leader of the women’s rights movement in the 1800s.",
            spanish: "Mencione a un líder del movimiento por los derechos de la mujer en el siglo XIX."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Rosa Parks",
                    spanish: "Rosa Parks"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Susan B. Anthony",
                    spanish: "Susan B. Anthony"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Abigail Adams",
                    spanish: "Abigail Adams"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Eleanor Roosevelt",
                    spanish: "Eleanor Roosevelt"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Name one war fought by the United States in the 1900s.",
            spanish: "Mencione una guerra en la que Estados Unidos peleó en el siglo XX (los años 1900)."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Civil War",
                    spanish: "La Guerra Civil"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "World War I",
                    spanish: "Primera Guerra Mundial"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Mexican-American War",
                    spanish: "La Guerra México-Estadounidense"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The War of 1812",
                    spanish: "La Guerra de 1812"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Why did the United States enter World War I?",
            spanish: "¿Por qué entró Estados Unidos en la Primera Guerra Mundial?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Sinking of the Titanic",
                    spanish: "Hundimiento del Titanic"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Germany attacked U.S. civilian ships",
                    spanish: "Alemania atacó barcos civiles estadounidenses"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Invasion of France",
                    spanish: "Invasión de Francia"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To stop the spread of communism",
                    spanish: "Para detener la expansión del comunismo"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "When did all women get the right to vote?",
            spanish: "¿Cuándo obtuvieron todas las mujeres el derecho al voto?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1776",
                    spanish: "1776"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1920",
                    spanish: "1920"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1865",
                    spanish: "1865"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1945",
                    spanish: "1945"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "What was the Great Depression?",
            spanish: "¿Qué fue la Gran Depresión?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A major earthquake",
                    spanish: "Un major earthquake"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Longest economic recession in modern history",
                    spanish: "Longest económicun recession en modern history"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The end of the Cold War",
                    spanish: "El fin de la Guerra Fría"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A war with the Soviet Union",
                    spanish: "Un guerrun con el Soviet Union"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "When did the Great Depression start?",
            spanish: "¿Cuándo comenzó la Gran Depresión?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1914",
                    spanish: "1914"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1929",
                    spanish: "1929"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1941",
                    spanish: "1941"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1950",
                    spanish: "1950"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Who was president during the Great Depression and World War II?",
            spanish: "¿Quién era presidente durante la Gran Depresión y la Segunda Guerra Mundial?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Woodrow Wilson",
                    spanish: "Woodrow Wilson"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Franklin Roosevelt",
                    spanish: "Franklin Roosevelt"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Herbert Hoover",
                    spanish: "Herbert Hoover"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Harry Truman",
                    spanish: "Harry Truman"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Why did the United States enter World War II?",
            spanish: "¿Por qué entró Estados Unidos en la Segunda Guerra Mundial?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Sinking of the Titanic",
                    spanish: "Hundimiento del Titanic"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Japanese attacked Pearl Harbor",
                    spanish: "Japón atacó Pearl Harbor"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Invasion of Poland",
                    spanish: "Invasión de Polonia"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fall of the Berlin Wall",
                    spanish: "Caída del Muro de Berlín"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Dwight Eisenhower is famous for many things. Name one.",
            spanish: "Dwight Eisenhower es famoso por muchas cosas. Mencione una."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "General during World War II",
                    spanish: "General durante la Segunda Guerra Mundial"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Wrote the Declaration",
                    spanish: "Escribió la Declaración"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Inventor of the light bulb",
                    spanish: "Inventor de el light bulb"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Third President",
                    spanish: "Tercer presidente"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Who was the United States’ main rival during the Cold War?",
            spanish: "¿Quién fue el principal rival de Estados Unidos durante la Guerra Fría?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Germany",
                    spanish: "Alemania"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Soviet Union",
                    spanish: "Unión Soviética"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Japan",
                    spanish: "Japón"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "China",
                    spanish: "China"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "During the Cold War, what was one main concern of the United States?",
            spanish: "Durante la Guerra Fría, ¿cuál fue una preocupación principal de Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Climate change",
                    spanish: "Cambio climático"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Communism",
                    spanish: "Comunismo"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Great Depression",
                    spanish: "La Gran Depresión"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Unemployment",
                    spanish: "Desempleo"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Why did the United States enter the Korean War?",
            spanish: "¿Por qué entró Estados Unidos en la Guerra de Corea?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To gain more territory",
                    spanish: "Para obtener más territorio"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To stop the spread of communism",
                    spanish: "Para detener la expansión del comunismo"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To support Japan",
                    spanish: "Para apoyar a Japón"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To end World War II",
                    spanish: "Para poner fin a la Segunda Guerra Mundial"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Why did the United States enter the Vietnam War?",
            spanish: "¿Por qué entró Estados Unidos en la Guerra de Vietnam?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To gain oil rights",
                    spanish: "Para obtener derechos sobre el petróleo"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To stop the spread of communism",
                    spanish: "Para detener la expansión del comunismo"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To support China",
                    spanish: "Para apoyar a China"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To establish a monarchy",
                    spanish: "Para establecer una monarquía"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "What did the civil rights movement do?",
            spanish: "¿Qué hizo el movimiento por los derechos civiles?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fought for the environment",
                    spanish: "Luchó por el medio ambiente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fought to end racial discrimination",
                    spanish: "Luchó para poner fin a la discriminación racial"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Promoted religious laws",
                    spanish: "Promovió leyes religiosas"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Stopped the Vietnam War",
                    spanish: "Detuvo la Guerra de Vietnam"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Martin Luther King, Jr. is famous for many things. Name one.",
            spanish: "Martin Luther King, Jr. es famoso por muchas cosas. Mencione una."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Became the first Black President",
                    spanish: "Se convirtió en el primer presidente negro"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fought for civil rights",
                    spanish: "Luchó por los derechos civiles"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Discovered the North Pole",
                    spanish: "Descubrió el Polo Norte"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Led the American Revolution",
                    spanish: "Lideró la Revolución Americana"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Why did the United States enter the Persian Gulf War?",
            spanish: "¿Por qué entró Estados Unidos en la Guerra del Golfo Pérsico?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To stop the Soviet Union",
                    spanish: "Para detener a la Unión Soviética"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To force the Iraqi military from Kuwait",
                    spanish: "Para expulsar al ejército iraquí de Kuwait"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To stop the Vietnam War",
                    spanish: "Para detener la Guerra de Vietnam"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To protect the border with Mexico",
                    spanish: "Para proteger la frontera con México"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "What major event happened on September 11, 2001 in the United States?",
            spanish: "¿Qué evento importante ocurrió el 11 de septiembre de 2001 en Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The stock market crashed",
                    spanish: "La bolsa de valores se desplomó"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Terrorists attacked the United States",
                    spanish: "Los terroristas atacaron Estados Unidos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The end of the Cold War",
                    spanish: "El fin de la Guerra Fría"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A major hurricane hit New York",
                    spanish: "Un gran huracán azotó Nueva York"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Name one U.S. military conflict after the September 11, 2001 attacks.",
            spanish: "Mencione un conflicto militar de Estados Unidos posterior a los ataques del 11 de septiembre de 2001."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Korean War",
                    spanish: "La Guerra de Corea"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "War in Afghanistan",
                    spanish: "Guerra en Afganistán"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Vietnam War",
                    spanish: "El Vietnam Guerra"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Cold War",
                    spanish: "Guerra Fría"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Name one American Indian tribe in the United States.",
            spanish: "Mencione una tribu de indios americanos de Estados Unidos."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Cherokee",
                    spanish: "Cherokee"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Zulu",
                    spanish: "Zulu"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Mayan",
                    spanish: "Maya"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Aztec",
                    spanish: "Azteca"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Recent American History",
        question: LocalizedText(
            english: "Name one example of an American innovation.",
            spanish: "Mencione un ejemplo de una innovación estadounidense."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Steam Engine",
                    spanish: "La máquina de vapor"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Light bulb",
                    spanish: "Bombilla"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Printing Press",
                    spanish: "La imprenta"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Gunpowder",
                    spanish: "Pólvora"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Symbols",
        question: LocalizedText(
            english: "What is the capital of the United States?",
            spanish: "¿Cuál es la capital de Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "New York City",
                    spanish: "Nueva York"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Washington, D.C.",
                    spanish: "Washington, D.C."
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Philadelphia",
                    spanish: "Filadelfia"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Los Angeles",
                    spanish: "Los Ángeles"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Symbols",
        question: LocalizedText(
            english: "Where is the Statue of Liberty?",
            spanish: "¿Dónde está la Estatua de la Libertad?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "San Francisco",
                    spanish: "San Francisco"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "New York (Harbor)",
                    spanish: "Nueva York (puerto)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Washington, D.C.",
                    spanish: "Washington, D.C."
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Boston",
                    spanish: "Boston"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Symbols",
        question: LocalizedText(
            english: "Why does the flag have 13 stripes?",
            spanish: "¿Por qué la bandera tiene 13 franjas?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because there were 13 original colonies",
                    spanish: "Porque había 13 colonias originales"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because there were 13 signers of the Constitution",
                    spanish: "Porque había 13 firmantes de la Constitución"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To represent the 13 branches of government",
                    spanish: "Para representar las 13 ramas del gobierno"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because the flag was made on July 13th",
                    spanish: "Porque la bandera se hizo el 13 de julio"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Symbols",
        question: LocalizedText(
            english: "Why does the flag have 50 stars?",
            spanish: "¿Por qué la bandera tiene 50 estrellas?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "For the 50 original colonies",
                    spanish: "Por las 50 colonias originales"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because there is one star for each state",
                    spanish: "Porque hay una estrella por cada estado"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To represent 50 years of independence",
                    spanish: "Para representar 50 años de independencia"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because 50 people wrote the Constitution",
                    spanish: "Porque 50 personas escribieron la Constitución"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Symbols",
        question: LocalizedText(
            english: "What is the name of the national anthem?",
            spanish: "¿Cómo se llama el himno nacional?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "America the Beautiful",
                    spanish: "America the Beautiful"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Star-Spangled Banner",
                    spanish: "The Star-Spangled Banner"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "God Bless America",
                    spanish: "God Bless America"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "My Country 'Tis of Thee",
                    spanish: "My Country 'Tis of Thee"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Symbols",
        question: LocalizedText(
            english: "The Nation’s first motto was 'E Pluribus Unum.' What does that mean?",
            spanish: "El primer lema de la nación fue \"E Pluribus Unum\". ¿Qué significa?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "In God We Trust",
                    spanish: "En Dios confiamos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Out of many, one",
                    spanish: "De muchos, uno"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Freedom for all",
                    spanish: "Libertad para todos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Justice is blind",
                    spanish: "La justicia es ciega"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Holidays",
        question: LocalizedText(
            english: "What is Independence Day?",
            spanish: "¿Qué es el día de la independencia?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The day we vote",
                    spanish: "El día en que votamos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A holiday to celebrate U.S. independence from Britain",
                    spanish: "Un día festivo para celebrar la independencia de Estados Unidos de Gran Bretaña"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The day the war ended",
                    spanish: "El día en que terminó la guerra"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The day the President is sworn in",
                    spanish: "El día en que el presidente presta juramento"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Holidays",
        question: LocalizedText(
            english: "Name three national U.S. holidays.",
            spanish: "Nombra tres días festivos nacionales de Estados Unidos."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Easter, Halloween, Earth Day",
                    spanish: "Pascua, Halloween, Día de la Tierra"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Memorial Day, Independence Day, Thanksgiving Day",
                    spanish: "Día de los Caídos, Día de la Independencia, Día de Acción de Gracias"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Valentine's Day, Mother's Day, Father's Day",
                    spanish: "Día de San Valentín, Día de la Madre, Día del Padre"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Good Friday, St. Patrick's Day, Flag Day",
                    spanish: "Viernes Santo, Día de San Patricio, Día de la Bandera"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Holidays",
        question: LocalizedText(
            english: "What is Memorial Day?",
            spanish: "¿Qué es el Día de los Caídos en las guerras (Memorial Day)?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A day to vote",
                    spanish: "Un día para votar"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A holiday to honor soldiers who died in military service",
                    spanish: "Un día festivo para honrar a los soldados que murieron en el servicio militar"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The birthday of the President",
                    spanish: "El cumpleaños del presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A celebration of the end of winter",
                    spanish: "Una celebración del final del invierno"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Holidays",
        question: LocalizedText(
            english: "What is Veterans Day?",
            spanish: "¿Qué es el Día de los Veteranos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A day for soldiers who died",
                    spanish: "Un día para los soldados que murieron"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A holiday to honor people who have served in the U.S. military",
                    spanish: "Un día festivo para honrar a las personas que han servido en las fuerzas armadas de EE. UU."
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A celebration of the Revolutionary War",
                    spanish: "Una celebración de la Guerra Revolucionaria"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The day the military was created",
                    spanish: "El día en que se creó el ejército"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    )
]
