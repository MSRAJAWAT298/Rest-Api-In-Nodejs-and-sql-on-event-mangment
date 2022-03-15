const express = require('express');
const router = express.Router();
const eventMangment = require('../controllers/eventMangment.controller');
const auth = require('../middleware/auth.middleware');
const awaitHandlerFactory = require('../middleware/awaitHandlerFactory.middleware');
router.get('/upcoming_event', auth(), awaitHandlerFactory(eventMangment.getUpcomingEvent));
router.get('/live_event', auth(), awaitHandlerFactory(eventMangment.getLiveEvents));
router.post('/create_event', awaitHandlerFactory(eventMangment.createEvent));
module.exports = router;