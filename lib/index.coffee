moment = require 'moment-timezone'

class Timezones
  
  getTimeZoneList: ()->
    USZ1: 'Калининградское время MSK−1 (UTC+2)'
    MSK: 'Московское время MSK (UTC+3)'
    SAMT: 'Самарское время MSK+1 (UTC+4)'
    YEKT: 'Екатеринбургское время MSK+2 (UTC+5)'
    OMST: 'Омское время MSK+3 (UTC+6)'
    KRAT: 'Красноярское время	MSK+4 (UTC+7)'
    IRKT: 'Иркутское время MSK+5 (UTC+8)'
    YAKT: 'Якутское время MSK+6 (UTC+9)'
    VLAT: 'Владивостокское время MSK+7 (UTC+10)'
    SRET: 'Среднеколымское время MSK+8 (UTC+11)'
    PETT: 'Камчатское время MSK+9 (UTC+12)'

  getTimeZoneMap: ()->
    USZ1: 'Europe/Kaliningrad'
    MSK: 'Europe/Moscow'
    SAMT: 'Europe/Samara'
    YEKT: 'Asia/Yekaterinburg'
    OMST: 'Asia/Omsk'
    KRAT: 'Asia/Krasnoyarsk'
    IRKT: 'Asia/Irkutsk'
    YAKT: 'Asia/Yakutsk'
    VLAT: 'Asia/Vladivostok'
    SRET: 'Asia/Sakhalin'
    PETT: 'Asia/Kamchatka'

  getCurrentDayAbbreviation: (timezone)->
    moment.tz timezone
    .format 'ddd'
    .toLowerCase()

  getCurrentTime: (timezone)->
    moment.tz timezone
    .format 'HH:mm'

module.exports = new Timezones()