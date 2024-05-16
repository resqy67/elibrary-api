'use strict';

/**
 * book-library router
 */

const { createCoreRouter } = require('@strapi/strapi').factories;

module.exports = createCoreRouter('api::book-library.book-library');
