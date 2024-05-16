'use strict';

/**
 * borrow-book service
 */

const { createCoreService } = require('@strapi/strapi').factories;

module.exports = createCoreService('api::borrow-book.borrow-book');
