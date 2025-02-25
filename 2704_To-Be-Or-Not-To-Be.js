function expect(val) {
    return {
      toBe: (otherVal) => {
        if (val === otherVal) {
          return true; 
        } else {
          throw new Error("Not Equal");
        }
      },
      notToBe: (otherVal) => {
        if (val !== otherVal) {
          return true; 
        } else {
          throw new Error("Equal");
        }
      },
    };
  }
  