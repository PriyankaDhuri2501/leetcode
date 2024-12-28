/**
 * Checks if the given object or array is empty.
 *
 * @param {Object|Array} obj - The object or array to check.
 * @returns {boolean} - True if the object or array is empty, false otherwise.
 */
function isEmpty(obj) {
  if (Array.isArray(obj)) {
    // Check if the array has any elements
    return obj.length === 0;
  } else {
    // Check if the object has any keys
    return Object.keys(obj).length === 0;
  }
}