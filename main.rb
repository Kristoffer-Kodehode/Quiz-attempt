questions = {
    Q1: {
        Q: "What day was JavaScript released?",
        O: ["May 23rd, 1995", "Nov 24th, 1995", "Dec 4th, 1995", "Dec 17th, 1996"],  
        A: "Dec 4th 1995"
    }, 
    Q2: {
        Q: "Inside which HTML element do we put the JavaScript?",
        O: ["<script>", "<scripting>", "<js>", "<javascript>"],  
        A: "<script>"
    }, 
    Q3: {
        Q: "What is the correct JavaScript syntax to change the content of the HTML element below? <p id='demo'> This is a demonstration.</p>",
        O: [
            "document.getElementByName('p').innerHTML = 'Hello World'!;", 
            "document.getElementById('demo').innerHTML = 'Hello World!';", 
            "document.getElement('p').innerHTML = 'Hello World!';", 
            "#demo.innerHTML = 'Hello World!';"
        ],  
        A: "document.getElementById('demo').innerHTML = 'Hello World!';"
    }, 
    Q4: {
        Q: "Where is the correct place to insert a JavaScript?",
        O: [
            "The <body> section",
            "The <head> section",
            "Both the <head> section and the <body> section are correct"],  
        A: "Both the <head> section and the <body> section are correct"
    }, 
    Q5: {
        Q: "What is the correct syntax for referring to an external script called 'xxx.js'?",
        O: ["<script name='xxx.js'>', '<script src='xxx.js'>', '<script href='xxx.js'>"],  
        A: "<script src='xxx.js'>"
    }, 
}

