'use strict';

/**
 * book-library service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::book-library.book-library');
