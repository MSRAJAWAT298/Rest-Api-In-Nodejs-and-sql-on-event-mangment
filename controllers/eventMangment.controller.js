const EventManagementModel = require('../models/eventMangment.model');
const HttpException = require('../utils/HttpException.utils');
const { validationResult } = require('express-validator');
const dotenv = require('dotenv');
dotenv.config();

/******************************************************************************
 *                              Events Controller
 ******************************************************************************/
class EventManagementController {
    getLiveEvents= async (req, res, next) => {
        var sql = `SELECT * FROM event_details WHERE event_starting_time = '${this.getCurrentDateTime("datetime",10)}'`;
        let eventList = await EventManagementModel.findEvents({custom_query:sql});
        if (!eventList.length) {
            throw new HttpException(404, 'Events not found');
        }
        res.send(eventList);
    };

    getUpcomingEvent = async (req, res, next) => {
        var sql = `SELECT * FROM event_details WHERE event_starting_time >= '${this.getCurrentDateTime()}'`;
        const Events = await EventManagementModel.findEvents({custom_query:sql});
        if (!Events) {
            throw new HttpException(404, 'Events not found');
        }
        res.send(Events);
    };

    createEvent = async (req, res, next) => {
        this.checkValidation(req);
        var sql = `INSERT INTO event_details (event_name, event_starting_time, event_duration,user_id) VALUES ("${req.body.event_name}", "${req.body.event_starting_time}", "${req.body.event_duration}",1)`;
        const result = await EventManagementModel.findEvents({custom_query:sql});
        if (!result) {
            throw new HttpException(500, 'Something went wrong');
        }
        res.status(201).send('Events was created!');
    };

    checkValidation = (req) => {
        const errors = validationResult(req)
        if (!errors.isEmpty()) {
            throw new HttpException(400, 'Validation faild', errors);
        }
    }
    
    getCurrentDateTime(return_type = "datetime", less_time_In_Minute = 0) {
        var today = new Date();
        var pad = function(num) { return ('0'+num).slice(-2) };
        
        if (return_type == "datetime") {
            var date = today.getFullYear() + '-' + pad(today.getMonth() + 1) + '-' + today.getDate();
        }
        if (less_time_In_Minute != 0) {
            today.setMinutes(today.getMinutes() + less_time_In_Minute);
        }
        var time = pad(today.getHours()) + ":" + pad(today.getMinutes())+":00";
        var dateTime = date + ' ' + time;
        
        return (return_type == "datetime") ? dateTime : time;
    }
}



/******************************************************************************
 *                               Export
 ******************************************************************************/
module.exports = new EventManagementController;