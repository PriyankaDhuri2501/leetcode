
var createHelloWorld = function() {
    
    return function () {
        return ("Hello World")
        
    }
};

const f = createHelloWorld();
f(); 
f({},null,42);
