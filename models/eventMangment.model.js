const query = require('../db/db-connection');
const { multipleColumnSet } = require('../utils/common.utils');
class EventManagementModel {
    tableName = 'eventManagment';

    findEvents = async (params = {}) => {
        if(params!="" && Object.keys(params)[0]=="custom_query" && params.custom_query!=""){
            return await query(params.custom_query);
        }
        let sql = `SELECT * FROM ${this.tableName}`;
        if (!Object.keys(params).length) {
            return await query(sql);
        }
        const { columnSet, values } = multipleColumnSet(params)
        sql += ` WHERE ${columnSet}` ;
        return await query(sql, [...values]);
    }

    checkUserExist = async (params) => {
        const { columnSet, values } = multipleColumnSet(params)

        const sql = `SELECT * FROM user WHERE ${columnSet}`;
        const result = await query(sql, [...values]);
        // return back the first row (eventManagment)
        return result[0];
    }

    create = async ({ event_name, event_starting_time, event_duration }) => {
        const sql = `INSERT INTO ${this.tableName} (event_name, event_starting_time, event_duration) VALUES (?,?,?)`;
        const result = await query(sql, [event_name, event_starting_time, event_duration]);
        const affectedRows = result ? result.affectedRows : 0;
        return affectedRows;
    }
}

module.exports = new EventManagementModel;