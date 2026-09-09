//
//  Q2008Version.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI

let q2008version: [Question] = [
    Question(
        id: UUID(),
        category: "Principles of American Democracy",
        question: LocalizedText(
            english: "What is the supreme law of the land?",
            spanish: "¿Cuál es la ley suprema de la nación?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Bill of Rights",
                    spanish: "la Carta de Derechos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Constitution",
                    spanish: "la Constitución"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Declaration of Independence",
                    spanish: "la Declaración de Independencia"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Articles of Confederation",
                    spanish: "los Artículos de la Confederación"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Democracy",
        question: LocalizedText(
            english: "What does the Constitution do?",
            spanish: "¿Qué hace la Constitución?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Sets up the government",
                    spanish: "Establece el gobierno"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Declares independence",
                    spanish: "Declara la independencia"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Tax the colonies",
                    spanish: "Grava a las colonias"
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
        category: "Principles of American Democracy",
        question: LocalizedText(
            english: "The idea of self-government is in the first three words of the Constitution. What are these words?",
            spanish: "Las primeras tres palabras de la Constitución contienen la idea del autogobierno (de que el pueblo se gobierna a sí mismo). ¿Cuáles son estas palabras?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "We the People",
                    spanish: "Nosotros, el pueblo"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Congress shall make",
                    spanish: "El Congreso hará"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Liberty for All",
                    spanish: "Libertad para todos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "In God We",
                    spanish: "En Dios confiamos"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Democracy",
        question: LocalizedText(
            english: "What is an amendment?",
            spanish: "¿Qué es una enmienda?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A law",
                    spanish: "Una ley"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A preamble",
                    spanish: "Un preámbulo"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A change (to the Constitution)",
                    spanish: "Un cambio (a la Constitución)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "A court ruling",
                    spanish: "Una decisión judicial"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Democracy",
        question: LocalizedText(
            english: "What do we call the first ten amendments to the Constitution?",
            spanish: "¿Con qué nombre se conocen las primeras diez enmiendas a la Constitución?"
        ),
        answers: [
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
                    english: "The Bill of Rights",
                    spanish: "la Carta de Derechos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Magna Carta",
                    spanish: "la Carta Magna"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Declaration of Independence",
                    spanish: "la Declaración de Independencia"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Democracy",
        question: LocalizedText(
            english: "What is one right or freedom from the First Amendment?",
            spanish: "¿Cuál es un derecho o libertad que la Primera Enmienda garantiza?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Trial by jury",
                    spanish: "juicio por jurado"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Right to bear arms",
                    spanish: "derecho a portar armas"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Speech",
                    spanish: "expresión"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Voting",
                    spanish: "votar"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Principles of American Democracy",
        question: LocalizedText(
            english: "How many amendments does the Constitution have?",
            spanish: "¿Cuántas enmiendas tiene la Constitución?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Ten (10)",
                    spanish: "diez (10)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Twenty-seven (27)",
                    spanish: "veintisiete (27)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fifty (50)",
                    spanish: "cincuenta (50)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "One hundred (100)",
                    spanish: "cien (100)"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Democracy",
        question: LocalizedText(
            english: "What did the Declaration of Independence do?",
            spanish: "¿Qué hizo la Declaración de Independencia?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Set up the government",
                    spanish: "Estableció el gobierno"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Announced our independence (from Great Britain)",
                    spanish: "Anunció nuestra independencia (de Gran Bretaña)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Ended the Civil War",
                    spanish: "Terminó la Guerra Civil"
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
        category: "Principles of American Democracy",
        question: LocalizedText(
            english: "What are two rights in the Declaration of Independence?",
            spanish: "¿Cuáles son dos derechos en la Declaración de la Independencia?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Life and Liberty",
                    spanish: "La vida y la libertad"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Speech and Religion",
                    spanish: "La expresión y la religión"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Voting and Privacy",
                    spanish: "El voto y la privacidad"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Justice and Peace",
                    spanish: "La justicia y la paz"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Democracy",
        question: LocalizedText(
            english: "What is freedom of religion?",
            spanish: "¿En qué consiste la libertad de religión?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "You must practice a religion",
                    spanish: "Debe practicar una religión"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "You can practice any religion, or not practice a religion",
                    spanish: "Puede practicar cualquier religión o no practicar ninguna"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Only certain religions are allowed",
                    spanish: "Solo se permiten ciertas religiones"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Religious leaders make the laws",
                    spanish: "Los líderes religiosos hacen las leyes"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Principles of American Democracy",
        question: LocalizedText(
            english: "What is the economic system in the United States?",
            spanish: "¿Cuál es el sistema económico de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Socialist economy",
                    spanish: "economía socialista"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Communist economy",
                    spanish: "economía comunista"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Capitalist economy",
                    spanish: "economía capitalista"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Barter system",
                    spanish: "sistema de trueque"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Principles of American Democracy",
        question: LocalizedText(
            english: "What is the 'rule of law'?",
            spanish: "¿En qué consiste el “estado de derecho”?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Leaders are above the law",
                    spanish: "Los líderes están por encima de la ley"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Everyone must follow the law",
                    spanish: "Todos deben obedecer la ley"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Only citizens follow laws",
                    spanish: "Solo los ciudadanos obedecen las leyes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The military makes the laws",
                    spanish: "Los militares hacen las leyes"
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
            english: "Name one branch or part of the government.",
            spanish: "Nombre una rama o parte del gobierno."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Cabinet",
                    spanish: "el Gabinete"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Congress",
                    spanish: "el Congreso"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Military",
                    spanish: "los militares"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "State Department",
                    spanish: "el Departamento de Estado"
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
            english: "What stops one branch of government from becoming too powerful?",
            spanish: "¿Qué evita que una rama del gobierno se vuelva demasiado poderosa?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "el Presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Separation of powers",
                    spanish: "separación de poderes"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Bill of Rights",
                    spanish: "la Carta de Derechos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "State governors",
                    spanish: "los gobernadores estatales"
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
            english: "Who is in charge of the executive branch?",
            spanish: "¿Quién está a cargo de la rama ejecutiva?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Chief Justice",
                    spanish: "el Presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "el Presidente de la Corte Suprema"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Speaker of the House",
                    spanish: "el Presidente de la Cámara de Representantes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Prime Minister",
                    spanish: "el Primer Ministro"
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
            english: "Who makes federal laws?",
            spanish: "¿Quién crea las leyes federales?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Supreme Court",
                    spanish: "la Corte Suprema"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Congress",
                    spanish: "el Congreso"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Cabinet",
                    spanish: "el Gabinete"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Governors",
                    spanish: "los gobernadores"
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
            spanish: "¿Cuáles son las dos partes que integran el Congreso de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President and Cabinet",
                    spanish: "el Presidente y el Gabinete"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Senate and House (of Representatives)",
                    spanish: "el Senado y la Cámara (de Representantes)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Supreme Court and Lower Courts",
                    spanish: "la Corte Suprema y los tribunales inferiores"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The FBI and CIA",
                    spanish: "el FBI y la CIA"
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
            english: "How many U.S. Senators are there?",
            spanish: "¿Cuántos senadores de los Estados Unidos hay?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fifty (50)",
                    spanish: "cincuenta (50)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "One hundred (100)",
                    spanish: "cien (100)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Four hundred thirty-five (435)",
                    spanish: "cuatrocientos treinta y cinco (435)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fifty-two (52)",
                    spanish: "cincuenta y dos (52)"
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
            english: "We elect a U.S. Senator for how many years?",
            spanish: "¿De cuántos años es el término de elección de un senador de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Two (2)",
                    spanish: "dos (2)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Four (4)",
                    spanish: "cuatro (4)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Six (6)",
                    spanish: "seis (6)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Eight (8)",
                    spanish: "ocho (8)"
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
            english: "Who is one of your state’s U.S. Senators now?",
            spanish: "Nombre a uno de los senadores actuales del estado donde usted vive."
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
                    english: "Joe Biden",
                    spanish: "Joe Biden"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Varies by State (Find yours in Representatives section)",
                    spanish: "Varía según el estado (encuentre el suyo en la sección de Representantes)"
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
            english: "The House of Representatives has how many voting members?",
            spanish: "¿Cuántos miembros votantes tiene la Cámara de Representantes?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "One hundred (100)",
                    spanish: "cien (100)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Four hundred thirty-five (435)",
                    spanish: "cuatrocientos treinta y cinco (435)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fifty (50)",
                    spanish: "cincuenta (50)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Two hundred (200)",
                    spanish: "doscientos (200)"
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
            english: "We elect a U.S. Representative for how many years?",
            spanish: "¿De cuántos años es el término de elección de un representante de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Two (2)",
                    spanish: "dos (2)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Four (4)",
                    spanish: "cuatro (4)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Six (6)",
                    spanish: "seis (6)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Life",
                    spanish: "de por vida"
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
            english: "Name your U.S. Representative.",
            spanish: "Dé el nombre de su representante a nivel nacional."
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
                    spanish: "el Presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Varies by District (Find yours in Representatives section)",
                    spanish: "Varía según el distrito (encuentre el suyo en la sección de Representantes)"
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
            english: "Who does a U.S. Senator represent?",
            spanish: "¿A quiénes representa un senador de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Only the people who voted for them",
                    spanish: "Solo a las personas que votaron por él"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "All people of the state",
                    spanish: "A todas las personas del estado"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The state legislature",
                    spanish: "A la legislatura estatal"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "Al Presidente"
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
            english: "Why do some states have more Representatives than other states?",
            spanish: "¿Por qué tienen algunos estados más representantes que otros?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because they are larger in land size",
                    spanish: "Porque tienen mayor extensión territorial"
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
                    english: "Because they were the first states",
                    spanish: "Porque fueron los primeros estados"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because the President chooses",
                    spanish: "Porque el Presidente elige"
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
            english: "We elect a President for how many years?",
            spanish: "¿De cuántos años es el término de elección de un presidente?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Two (2)",
                    spanish: "dos (2)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Four (4)",
                    spanish: "cuatro (4)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Six (6)",
                    spanish: "seis (6)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Eight (8)",
                    spanish: "ocho (8)"
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
            english: "In what month do we vote for President?",
            spanish: "¿En qué mes votamos por un nuevo presidente?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "January",
                    spanish: "enero"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "July",
                    spanish: "julio"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "November",
                    spanish: "noviembre"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "December",
                    spanish: "diciembre"
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
            english: "What is the name of the President of the United States now?",
            spanish: "¿Cómo se llama el actual Presidente de los Estados Unidos?"
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
            spanish: "¿Cómo se llama el actual Vicepresidente de los Estados Unidos?"
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
                    english: "JD Vance",
                    spanish: "JD Vance"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Tim Walz",
                    spanish: "Tim Walz"
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
            english: "If the President can no longer serve, who becomes President?",
            spanish: "Si el Presidente ya no puede cumplir sus funciones, ¿quién se convierte en Presidente?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Speaker of the House",
                    spanish: "el Presidente de la Cámara de Representantes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Vice President",
                    spanish: "el Vicepresidente"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Chief Justice",
                    spanish: "el Presidente de la Corte Suprema"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Secretary of State",
                    spanish: "el Secretario de Estado"
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
            english: "If both the President and the Vice President can no longer serve, who becomes President?",
            spanish: "Si tanto el Presidente como el Vicepresidente ya no pueden cumplir sus funciones, ¿quién se convierte en Presidente?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Secretary of Defense",
                    spanish: "el Secretario de Defensa"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Speaker of the House",
                    spanish: "el Presidente de la Cámara de Representantes"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Chief Justice",
                    spanish: "el Presidente de la Corte Suprema"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The First Lady",
                    spanish: "la Primera Dama"
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
            english: "Who is the Commander in Chief of the military?",
            spanish: "¿Quién es el Comandante en Jefe de las Fuerzas Armadas?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Secretary of Defense",
                    spanish: "el Secretario de Defensa"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "el Presidente"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The General of the Army",
                    spanish: "el General del Ejército"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Chief of Staff",
                    spanish: "el Jefe del Estado Mayor"
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
            spanish: "¿Quién firma los proyectos de ley para convertirlos en ley?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Chief Justice",
                    spanish: "el Presidente de la Corte Suprema"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "el Presidente"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Speaker of the House",
                    spanish: "el Presidente de la Cámara de Representantes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Senate Leader",
                    spanish: "el líder del Senado"
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
                    spanish: "la Corte Suprema"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "el Presidente"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Vice President",
                    spanish: "el Vicepresidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Congress",
                    spanish: "el Congreso"
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
            spanish: "¿Qué hace el Gabinete del Presidente?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Makes laws",
                    spanish: "Hace leyes"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Advises the President",
                    spanish: "Asesora al Presidente"
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
                    english: "Commands the military",
                    spanish: "Comanda las fuerzas militares"
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
            spanish: "¿Cuáles son dos puestos a nivel de gabinete?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Secretary of State and Secretary of Labor",
                    spanish: "Secretario de Estado y Secretario del Trabajo"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Senator and Representative",
                    spanish: "Senador y Representante"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Chief Justice and Associate Justice",
                    spanish: "Presidente de la Corte Suprema y Juez Asociado"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Governor and Mayor",
                    spanish: "Gobernador y Alcalde"
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
                    english: "Signs treaties",
                    spanish: "Firma tratados"
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
                    english: "Vetoes bills",
                    spanish: "Veta proyectos de ley"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Collects taxes",
                    spanish: "Recauda impuestos"
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
            spanish: "¿Cuál es el tribunal más alto de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The District Court",
                    spanish: "el Tribunal de Distrito"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Supreme Court",
                    spanish: "la Corte Suprema"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Appeals Court",
                    spanish: "el Tribunal de Apelaciones"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Cabinet",
                    spanish: "el Gabinete"
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
            english: "How many justices are on the Supreme Court?",
            spanish: "¿Cuántos jueces hay en la Corte Suprema?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Seven (7)",
                    spanish: "siete (7)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Nine (9)",
                    spanish: "nueve (9)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Twelve (12)",
                    spanish: "doce (12)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fifteen (15)",
                    spanish: "quince (15)"
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
            spanish: "¿Quién es el presidente actual de la Corte Suprema de los Estados Unidos?"
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
            english: "Under our Constitution, some powers belong to the federal government. What is one power of the federal government?",
            spanish: "De acuerdo con nuestra Constitución, algunos poderes pertenecen al gobierno federal. ¿Cuál es un poder del gobierno federal?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To give a driver's license",
                    spanish: "Conceder una licencia de conducir"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To declare war",
                    spanish: "Declarar la guerra"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To provide schooling",
                    spanish: "Proporcionar educación"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To approve zoning",
                    spanish: "Aprobar la zonificación"
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
            english: "Under our Constitution, some powers belong to the states. What is one power of the states?",
            spanish: "De acuerdo con nuestra Constitución, algunos poderes pertenecen a los estados. ¿Cuál es un poder de los estados?"
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
                    spanish: "Proporcionar escuelas y educación"
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
            english: "Who is the Governor of your state now?",
            spanish: "¿Quién es el gobernador actual de su estado?"
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
                    spanish: "el Alcalde"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Varies by State (Find yours in Representatives section)",
                    spanish: "Varía según el estado (encuentre el suyo en la sección de Representantes)"
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
            english: "What is the capital of your state?",
            spanish: "¿Cuál es la capital de su estado?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Miami",
                    spanish: "Miami"
                ),
                isCorrect: false
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
                    english: "Varies by State",
                    spanish: "Varía según el estado"
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
            english: "What are the two major political parties in the United States?",
            spanish: "¿Cuáles son los dos principales partidos políticos de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Libertarian and Green",
                    spanish: "Libertario y Verde"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Democratic and Republican",
                    spanish: "Demócrata y Republicano"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Whig and Federalist",
                    spanish: "Whig y Federalista"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Progressive and Conservative",
                    spanish: "Progresista y Conservador"
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
            english: "What is the political party of the President now?",
            spanish: "¿Cuál es el partido político del Presidente actual?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Democratic Party",
                    spanish: "Partido Demócrata"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Republican Party",
                    spanish: "Partido Republicano"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Independent",
                    spanish: "Independiente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Libertarian Party",
                    spanish: "Partido Libertario"
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
            english: "What is the name of the Speaker of the House of Representatives now?",
            spanish: "¿Cómo se llama el Presidente actual de la Cámara de Representantes?"
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
                    english: "Kevin McCarthy",
                    spanish: "Kevin McCarthy"
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
                    english: "Hakeem Jeffries",
                    spanish: "Hakeem Jeffries"
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
            english: "There are four amendments to the Constitution about who can vote. Describe one of them.",
            spanish: "Existen cuatro enmiendas a la Constitución sobre quién puede votar. Describa una de ellas."
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
                    english: "Any citizen can vote (Women and men can vote)",
                    spanish: "Cualquier ciudadano puede votar (mujeres y hombres pueden votar)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Only people with jobs can vote",
                    spanish: "Solo las personas que tienen trabajo pueden votar"
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
        category: "System of Government",
        question: LocalizedText(
            english: "What is one responsibility that is only for United States citizens?",
            spanish: "¿Cuál es una responsabilidad que corresponde solo a los ciudadanos de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Working a job",
                    spanish: "Tener un trabajo"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Serve on a jury",
                    spanish: "Prestar servicio en un jurado"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Paying rent",
                    spanish: "Pagar alquiler"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Obeying traffic laws",
                    spanish: "Obedecer las leyes de tránsito"
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
            english: "Name one right only for United States citizens.",
            spanish: "Nombre un derecho que corresponde solo a los ciudadanos de los Estados Unidos."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Freedom of speech",
                    spanish: "Libertad de expresión"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Vote in a federal election",
                    spanish: "Votar en una elección federal"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Freedom of religion",
                    spanish: "Libertad de religión"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Right to bear arms",
                    spanish: "Derecho a portar armas"
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
            english: "What are two rights of everyone living in the United States?",
            spanish: "¿Cuáles son dos derechos que pueden ejercer todas las personas que viven en los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Voting and running for office",
                    spanish: "Votar y postularse a un cargo político"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Freedom of speech and freedom of religion",
                    spanish: "Libertad de expresión y libertad de religión"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Right to a free car and house",
                    spanish: "Derecho a un automóvil y una casa gratis"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Right to ignore the law",
                    spanish: "Derecho a ignorar la ley"
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
            english: "What do we show loyalty to when we say the Pledge of Allegiance?",
            spanish: "¿A qué demostramos nuestra lealtad cuando decimos el Juramento de Lealtad (Pledge of Allegiance)?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The President",
                    spanish: "al Presidente"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The United States",
                    spanish: "a los Estados Unidos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The State Governor",
                    spanish: "al gobernador del estado"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Congress",
                    spanish: "al Congreso"
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
            english: "What is one promise you make when you become a United States citizen?",
            spanish: "¿Cuál es una promesa que usted hace cuando se convierte en ciudadano de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To never leave the country",
                    spanish: "Nunca salir del país"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Defend the Constitution and laws of the United States",
                    spanish: "Defender la Constitución y las leyes de los Estados Unidos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To join a political party",
                    spanish: "Afiliarse a un partido político"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To change your name",
                    spanish: "Cambiarse el nombre"
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
            english: "How old do citizens have to be to vote for President?",
            spanish: "¿Cuántos años tienen que tener los ciudadanos para votar por el Presidente?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Sixteen (16)",
                    spanish: "dieciséis (16)"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Eighteen (18) and older",
                    spanish: "dieciocho (18) años en adelante"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Twenty-one (21)",
                    spanish: "veintiún (21) años"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Twenty-five (25)",
                    spanish: "veinticinco (25) años"
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
            english: "What are two ways that Americans can participate in their democracy?",
            spanish: "¿Cuáles son dos maneras mediante las cuales los ciudadanos americanos pueden participar en su democracia?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Vote and join a political party",
                    spanish: "Votar y afiliarse a un partido político"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Read the news and stay home",
                    spanish: "Leer las noticias y quedarse en casa"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Pay rent and buy groceries",
                    spanish: "Pagar alquiler y comprar alimentos"
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
        category: "System of Government",
        question: LocalizedText(
            english: "When is the last day you can send in federal income tax forms?",
            spanish: "¿Cuál es la fecha límite para enviar la declaración federal de impuestos sobre ingresos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "January 1",
                    spanish: "1 de enero"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "April 15",
                    spanish: "15 de abril"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "July 4",
                    spanish: "4 de julio"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "December 31",
                    spanish: "31 de diciembre"
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
            english: "When must all men register for the Selective Service?",
            spanish: "¿Cuándo deben inscribirse todos los hombres en el Servicio Selectivo?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "At age 16",
                    spanish: "a los 16 años"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "At age eighteen (18)",
                    spanish: "a los dieciocho (18) años"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "At age 21",
                    spanish: "a los 21 años"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Never",
                    spanish: "nunca"
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
            english: "What is one reason colonists came to America?",
            spanish: "¿Cuál es una razón por la que los colonos vinieron a América?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To see the scenery",
                    spanish: "Ver el paisaje"
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
                    english: "To build a new palace for the King",
                    spanish: "Construir un nuevo palacio para el Rey"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To start a new war",
                    spanish: "Comenzar una nueva guerra"
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
            spanish: "¿Quiénes vivían en lo que hoy conocemos como los Estados Unidos antes de la llegada de los europeos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Vikings",
                    spanish: "vikingos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Native Americans",
                    spanish: "nativos americanos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Australians",
                    spanish: "australianos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Nobody",
                    spanish: "nadie"
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
            english: "What group of people was taken to America and sold as slaves?",
            spanish: "¿Qué grupo de personas fue traído a los Estados Unidos y vendido como esclavos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Canadians",
                    spanish: "canadienses"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Africans",
                    spanish: "africanos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Englishmen",
                    spanish: "ingleses"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Spanish",
                    spanish: "españoles"
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
            english: "Why did the colonists fight the British?",
            spanish: "¿Por qué lucharon los colonos contra los británicos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because of high taxes (taxation without representation)",
                    spanish: "Debido a los impuestos altos (impuestos sin representación)"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because of the weather",
                    spanish: "Debido al clima"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because they wanted to explore the west",
                    spanish: "Porque querían explorar el oeste"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because they wanted a King",
                    spanish: "Porque querían un Rey"
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
                    english: "James Madison",
                    spanish: "James Madison"
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
            english: "When was the Declaration of Independence adopted?",
            spanish: "¿Cuándo fue adoptada la Declaración de Independencia?"
        ),
        answers: [
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
                    english: "July 4, 1787",
                    spanish: "4 de julio de 1787"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "July 4, 1865",
                    spanish: "4 de julio de 1865"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "January 1, 1800",
                    spanish: "1 de enero de 1800"
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
            english: "There were 13 original states. Name three.",
            spanish: "Había 13 estados originales. Nombre tres."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "California, Texas, Florida",
                    spanish: "California, Texas, Florida"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "New York, New Jersey, Pennsylvania",
                    spanish: "Nueva York, Nueva Jersey, Pensilvania"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Washington, Oregon, Idaho",
                    spanish: "Washington, Oregón, Idaho"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Maine, Vermont, Ohio",
                    spanish: "Maine, Vermont, Ohio"
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
            english: "What happened at the Constitutional Convention?",
            spanish: "¿Qué ocurrió en la Convención Constitucional?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Declaration of Independence was signed",
                    spanish: "Se redactó la Constitución."
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Constitution was written",
                    spanish: "Se declaró la independencia."
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Civil War began",
                    spanish: "Se estableció la Carta de Derechos."
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Emancipation Proclamation was issued",
                    spanish: "Se eligió al primer Presidente."
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
            english: "When was the Constitution written?",
            spanish: "¿Cuándo fue redactada la Constitución?"
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
                    english: "1787",
                    spanish: "1787"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1812",
                    spanish: "1865"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "1865",
                    spanish: "1800"
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
            spanish: "Los Documentos Federalistas respaldaron la aprobación de la Constitución de los Estados Unidos. Nombre a uno de sus autores."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "John Adams",
                    spanish: "George Washington"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Alexander Hamilton",
                    spanish: "James Madison"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "George Washington",
                    spanish: "Thomas Jefferson"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Thomas Jefferson",
                    spanish: "Benjamin Franklin"
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
            english: "What is one thing Benjamin Franklin is famous for?",
            spanish: "Mencione una razón por la que es famoso Benjamin Franklin."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Being the first President",
                    spanish: "Fue presidente de los Estados Unidos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "U.S. diplomat",
                    spanish: "Fue diplomático estadounidense"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Discovering America",
                    spanish: "Fue general durante la Guerra Civil"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Writing the Constitution",
                    spanish: "Fue el primer Presidente de la Corte Suprema"
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
            english: "Who is the 'Father of Our Country'?",
            spanish: "¿Quién es conocido como el “Padre de Nuestra Nación”?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Abraham Lincoln",
                    spanish: "George Washington"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "George Washington",
                    spanish: "Abraham Lincoln"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Thomas Jefferson",
                    spanish: "Thomas Jefferson"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Benjamin Franklin",
                    spanish: "Benjamin Franklin"
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
            english: "Who was the first President?",
            spanish: "¿Quién fue el primer Presidente?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "John Adams",
                    spanish: "George Washington"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "George Washington",
                    spanish: "John Adams"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Thomas Jefferson",
                    spanish: "Thomas Jefferson"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Abraham Lincoln",
                    spanish: "Abraham Lincoln"
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
            english: "What territory did the United States buy from France in 1803?",
            spanish: "¿Qué territorio compró Estados Unidos a Francia en 1803?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Florida",
                    spanish: "el territorio de Luisiana"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Louisiana",
                    spanish: "el territorio de Texas"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Alaska",
                    spanish: "el territorio de Florida"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Texas",
                    spanish: "el territorio de California"
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
            english: "Name one war fought by the United States in the 1800s.",
            spanish: "Mencione una guerra en la que peleó Estados Unidos durante los años 1800."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "World War I",
                    spanish: "la Guerra de 1812"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Civil War",
                    spanish: "la Guerra entre México y Estados Unidos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Revolutionary War",
                    spanish: "la Guerra Civil"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Korean War",
                    spanish: "la Guerra Hispano-Estadounidense"
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
            english: "Name the U.S. war between the North and the South.",
            spanish: "Dé el nombre de la guerra entre el Norte y el Sur de los Estados Unidos."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Revolutionary War",
                    spanish: "la Guerra Civil"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Civil War",
                    spanish: "la Guerra Revolucionaria"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The War of 1812",
                    spanish: "la Guerra de 1812"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The French and Indian War",
                    spanish: "la Guerra Hispano-Estadounidense"
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
            english: "Name one problem that led to the Civil War.",
            spanish: "Mencione un problema que condujo a la Guerra Civil."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Taxes on tea",
                    spanish: "la esclavitud"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Slavery",
                    spanish: "razones económicas"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The border with Mexico",
                    spanish: "los derechos de los estados"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Women's suffrage",
                    spanish: "la inmigración"
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
            english: "What was one important thing that Abraham Lincoln did?",
            spanish: "¿Cuál fue una cosa importante que hizo Abraham Lincoln?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Founded the United Nations",
                    spanish: "Liberó a los esclavos"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Freed the slaves (Emancipation Proclamation)",
                    spanish: "Salvó (o preservó) la Unión"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Bought Alaska",
                    spanish: "Fue presidente durante la Guerra Civil"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Signed the Declaration of Independence",
                    spanish: "Firmó la Constitución"
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
            english: "What did the Emancipation Proclamation do?",
            spanish: "¿Qué hizo la Proclamación de la Emancipación?"
        ),
        answers: [
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
                    spanish: "Puso fin a la Guerra Civil"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Gave women the right to vote",
                    spanish: "Creó la Constitución"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Declared independence from Britain",
                    spanish: "Concedió el derecho al voto a las mujeres"
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
            english: "What did Susan B. Anthony do?",
            spanish: "¿Qué hizo Susan B. Anthony?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Founded the Red Cross",
                    spanish: "Luchó por los derechos de la mujer"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Fought for women’s rights",
                    spanish: "Luchó por los derechos civiles"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Was the first woman in Congress",
                    spanish: "Fue la primera mujer Presidenta"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Wrote the national anthem",
                    spanish: "Escribió la Constitución"
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
            spanish: "Mencione una guerra durante los años 1900 en la que peleó Estados Unidos."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Civil War",
                    spanish: "la Primera Guerra Mundial"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "World War I",
                    spanish: "la Segunda Guerra Mundial"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Revolutionary War",
                    spanish: "la Guerra de Corea"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Mexican-American War",
                    spanish: "la Guerra de Vietnam"
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
            english: "Who was President during World War I?",
            spanish: "¿Quién era el presidente durante la Primera Guerra Mundial?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Franklin Roosevelt",
                    spanish: "Woodrow Wilson"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Woodrow Wilson",
                    spanish: "Franklin Roosevelt"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Theodore Roosevelt",
                    spanish: "Theodore Roosevelt"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Herbert Hoover",
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
            english: "Who was President during the Great Depression and World War II?",
            spanish: "¿Quién era presidente durante la Gran Depresión y la Segunda Guerra Mundial?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Woodrow Wilson",
                    spanish: "Franklin Roosevelt"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Franklin Roosevelt",
                    spanish: "Woodrow Wilson"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Harry Truman",
                    spanish: "Harry Truman"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Dwight Eisenhower",
                    spanish: "Dwight Eisenhower"
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
            english: "Who did the United States fight in World War II?",
            spanish: "¿Contra qué países peleó Estados Unidos en la Segunda Guerra Mundial?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Russia, China, and Korea",
                    spanish: "Japón, Alemania e Italia"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Japan, Germany, and Italy",
                    spanish: "Rusia, China y Corea"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "England, France, and Spain",
                    spanish: "Inglaterra, Francia y España"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Mexico and Canada",
                    spanish: "México y Canadá"
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
            english: "Before he was President, Eisenhower was a general. What war was he in?",
            spanish: "Antes de ser presidente, Eisenhower era general. ¿En qué guerra participó?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "World War I",
                    spanish: "la Primera Guerra Mundial"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "World War II",
                    spanish: "la Segunda Guerra Mundial"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Civil War",
                    spanish: "la Guerra Civil"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Vietnam War",
                    spanish: "la Guerra de Vietnam"
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
            english: "During the Cold War, what was the main concern of the United States?",
            spanish: "Durante la Guerra Fría, ¿cuál era la principal preocupación de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Climate change",
                    spanish: "el cambio climático"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Communism",
                    spanish: "el comunismo"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Great Depression",
                    spanish: "la Gran Depresión"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Slavery",
                    spanish: "la esclavitud"
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
            english: "What movement tried to end racial discrimination?",
            spanish: "¿Qué movimiento trató de poner fin a la discriminación racial?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Prohibition movement",
                    spanish: "el movimiento de Prohibición"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Civil Rights movement",
                    spanish: "el movimiento de derechos civiles"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Women's Suffrage movement",
                    spanish: "el movimiento por el sufragio femenino"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Labor movement",
                    spanish: "el movimiento obrero"
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
            english: "What did Martin Luther King, Jr. do?",
            spanish: "¿Qué hizo Martin Luther King, Jr.?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Became the first Black President",
                    spanish: "Se convirtió en el primer Presidente negro"
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
            english: "What major event happened on September 11, 2001, in the United States?",
            spanish: "¿Qué suceso de gran magnitud ocurrió el 11 de septiembre de 2001 en los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Stock Market crashed",
                    spanish: "Se desplomó el mercado de valores"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Terrorists attacked the United States",
                    spanish: "Terroristas atacaron los Estados Unidos"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The end of the Cold War",
                    spanish: "Terminó la Guerra Fría"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The signing of the NAFTA treaty",
                    spanish: "Se firmó el tratado NAFTA"
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
            spanish: "Mencione una tribu de indios americanos en los Estados Unidos."
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
        category: "Geography",
        question: LocalizedText(
            english: "Name one of the two longest rivers in the United States.",
            spanish: "Mencione uno de los dos ríos más largos en los Estados Unidos."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Hudson River",
                    spanish: "el Missouri"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Mississippi River",
                    spanish: "el Mississippi"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Rio Grande",
                    spanish: "el Colorado"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Colorado River",
                    spanish: "el Río Grande"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Geography",
        question: LocalizedText(
            english: "What ocean is on the West Coast of the United States?",
            spanish: "¿Qué océano está en la costa oeste de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Atlantic Ocean",
                    spanish: "el Pacífico"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Pacific Ocean",
                    spanish: "el Atlántico"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Indian Ocean",
                    spanish: "el Índico"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Arctic Ocean",
                    spanish: "el Ártico"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Geography",
        question: LocalizedText(
            english: "What ocean is on the East Coast of the United States?",
            spanish: "¿Qué océano está en la costa este de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Pacific Ocean",
                    spanish: "el Pacífico"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Atlantic Ocean",
                    spanish: "el Atlántico"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Arctic Ocean",
                    spanish: "el Índico"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Gulf of Mexico",
                    spanish: "el Ártico"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Geography",
        question: LocalizedText(
            english: "Name one U.S. territory.",
            spanish: "Dé el nombre de un territorio de los Estados Unidos."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Bermuda",
                    spanish: "Puerto Rico"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Puerto Rico",
                    spanish: "Canadá"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Haiti",
                    spanish: "México"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Bahamas",
                    spanish: "Cuba"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Geography",
        question: LocalizedText(
            english: "Name one state that borders Canada.",
            spanish: "Mencione un estado que tiene frontera con Canadá."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "California",
                    spanish: "Maine"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "New York",
                    spanish: "Texas"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Texas",
                    spanish: "Florida"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Florida",
                    spanish: "California"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Geography",
        question: LocalizedText(
            english: "Name one state that borders Mexico.",
            spanish: "Mencione un estado que tiene frontera con México."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Nevada",
                    spanish: "California"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Texas",
                    spanish: "Nueva York"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Oregon",
                    spanish: "Florida"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Louisiana",
                    spanish: "Washington"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    ),
    Question(
        id: UUID(),
        category: "Geography",
        question: LocalizedText(
            english: "What is the capital of the United States?",
            spanish: "¿Cuál es la capital de los Estados Unidos?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "New York City",
                    spanish: "Washington, D.C."
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Washington, D.C.",
                    spanish: "Nueva York"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Philadelphia",
                    spanish: "Los Ángeles"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Los Angeles",
                    spanish: "Chicago"
                ),
                isCorrect: false
            )
        ],
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Geography",
        question: LocalizedText(
            english: "Where is the Statue of Liberty?",
            spanish: "¿Dónde está la Estatua de la Libertad?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "San Francisco",
                    spanish: "(el puerto de) Nueva York"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "New York (Harbor)",
                    spanish: "Washington, D.C."
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Washington, D.C.",
                    spanish: "Los Ángeles"
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
        isSenior: true
    ),
    Question(
        id: UUID(),
        category: "Symbols",
        question: LocalizedText(
            english: "Why does the flag have 13 stripes?",
            spanish: "¿Por qué hay 13 franjas en la bandera?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because there were 13 original colonies",
                    spanish: "porque representan las 13 colonias originales"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because there were 13 signers of the Constitution",
                    spanish: "porque representan los 13 estados actuales"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To represent the 13 branches of government",
                    spanish: "porque representan las 13 enmiendas originales"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because the flag was made on July 13th",
                    spanish: "porque representan las 13 guerras"
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
            english: "Why does the flag have 50 stars?",
            spanish: "¿Por qué hay 50 estrellas en la bandera?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "For the 50 original colonies",
                    spanish: "porque hay una estrella por cada estado"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because there is one star for each state",
                    spanish: "porque cada estrella representa una ciudad"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "To represent 50 years of independence",
                    spanish: "porque hay 50 territorios"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Because 50 people wrote the Constitution",
                    spanish: "porque hay 50 presidentes"
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
            english: "What is the name of the national anthem?",
            spanish: "¿Cómo se llama el himno nacional?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "America the Beautiful",
                    spanish: "The Star-Spangled Banner"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "The Star-Spangled Banner",
                    spanish: "God Bless America"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "God Bless America",
                    spanish: "America the Beautiful"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "My Country 'Tis of Thee",
                    spanish: "My Country, ’Tis of Thee"
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
            english: "When do we celebrate Independence Day?",
            spanish: "¿Cuándo celebramos el Día de la Independencia?"
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "January 1",
                    spanish: "el 4 de julio"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "July 4",
                    spanish: "el 1 de enero"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "September 11",
                    spanish: "el 25 de diciembre"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "November 11",
                    spanish: "el 11 de noviembre"
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
            english: "Name two national U.S. holidays.",
            spanish: "Mencione dos días feriados nacionales de los Estados Unidos."
        ),
        answers: [
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Easter and Halloween",
                    spanish: "el Día de Año Nuevo"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Thanksgiving and Christmas",
                    spanish: "el Día de Acción de Gracias"
                ),
                isCorrect: true
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "Valentine's Day and Earth Day",
                    spanish: "el Día de la Independencia"
                ),
                isCorrect: false
            ),
            Answer(
                id: UUID(),
                text: LocalizedText(
                    english: "St. Patrick's Day and Good Friday",
                    spanish: "el Día de Navidad"
                ),
                isCorrect: false
            )
        ],
        isSenior: false
    )
]

