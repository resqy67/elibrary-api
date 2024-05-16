'use strict';

/**
 * book-library controller
 */

const { createCoreController } = require('@strapi/strapi').factories;

module.exports = createCoreController('api::book-library.book-library');
