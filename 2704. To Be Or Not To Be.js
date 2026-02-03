/**
 * @param {string} val
 * @return {Object}
 */

var expect = function(val) {
    return {
        toBe(other) {
            if (val !== other) throw "Not Equal";
            return true;
        },
        notToBe(other) {
            if (val === other) throw "Equal";
            return true;
        }
    };
};


expect(5).toBe(5);       // true
expect(5).notToBe(3);    // true

