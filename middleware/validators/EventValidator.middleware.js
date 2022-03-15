const { body } = require('express-validator');
exports.createUserSchema = [
    body('event_name')
        .exists()
        .withMessage('event_name is required')
        .isLength({ min: 3 })
        .withMessage('Must be at least 3 chars long'),
    body('event_starting_time')
        .exists()
        .withMessage('event_starting_time is required'),
    body('event_duration')
    .exists()
    .withMessage('event_duration is required')
];
