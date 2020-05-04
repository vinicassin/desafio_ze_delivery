require('dotenv').config();

module.exports = {
    createHeader: (...obj) => {
        let header = Object.assign(...obj);
        return header
    },
    
    allHeaders: {
        noHeader: {}
    }
};