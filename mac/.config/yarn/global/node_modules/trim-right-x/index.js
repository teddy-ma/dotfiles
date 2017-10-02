/**
 * @file This method removes whitespace from the right end of a string.
 * @version 1.3.4
 * @author Xotic750 <Xotic750@gmail.com>
 * @copyright  Xotic750
 * @license {@link <https://opensource.org/licenses/MIT> MIT}
 * @module trim-right-x
 */

'use strict';

var toStr = require('to-string-x');
var Rx = require('cached-constructors-x').RegExp;
var reRight = new Rx('[' + require('white-space-x').string + ']+$');
var replace = ''.replace;

/**
 * This method removes whitespace from the right end of a string.
 *
 * @param {string} string - The string to trim the right end whitespace from.
 * @returns {undefined|string} The right trimmed string.
 * @example
 * var trimRight = require('trim-right-x');
 *
 * trimRight(' \t\na \t\n') === ' \t\na'; // true
 */
module.exports = function trimRight(string) {
  return replace.call(toStr(string), reRight, '');
};
