var filter = function(arr, fn) {
    let filteredArr = [];
  
    for (let i = 0; i < arr.length; i++) {
      if (fn(arr[i], i)) {
        filteredArr.push(arr[i]); 
      }
    }
    
    // Return the filtered array
    return filteredArr;
  };
  