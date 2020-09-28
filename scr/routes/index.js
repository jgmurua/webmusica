const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
    //res.sendFile(path.join(__dirname, 'view/index.html'));
    res.render('index', {title: 'Bailando con el gato'});
});

router.get('/contact', (req, res) => {
   res.render('contact',{ title: 'Contact Page'}); 
});

module.exports = router;