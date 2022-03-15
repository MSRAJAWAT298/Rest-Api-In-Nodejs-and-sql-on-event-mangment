# Rest-Api-In-Nodejs-and-sql-on-event-mangment

**Design a database schema and REST APIs for an Event management platform that has the following specifications:**
**a. Create an event API that has the following model:**

  i.   Event Name
  
  ii.  Event Starting time
  
  iii. Event duration
  
  iv.  A single event, has a single Starting time and duration
  

**b. GET API that fetches the events classified into two categories:**

i. Upcoming event

ii. Live event- it should only be live 10 mins before the start time of the event


================

For use this code need to install

node

npm

mysql

===================================
Pre-requirement 

Token = "eyJ1c2VyX2lkIjoiMiIsInR5cCI6IkpXVCIsImFsZyI6IkhTMjU2In0.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyfQ.a8e7cmg-U7gSvdB2m_LS8wqz20w4_wKfV2AqD4Is4ng"


Dummy data to insert
====================================
{
      "event_name": "Cocktail Party new test",
      "event_starting_time": "2022-04-30 1:30:00",
      "event_duration": "1:00:00"
}

METHOD POST :  http://localhost:3000/api/create_event
METHOD GET  :  http://localhost:3000/api/live_event
METHOD GET  :  http://localhost:3000/api/upcoming_event


