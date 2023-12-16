const superagent = require('superagent')
const mysql = require('../database/data')
const { postNutritionEntry } = require('../models/gi_foodModel')

module.exports = {

    postScanOCR: (req, res) => {
        let image = req.file 
        let {food_name, idFood, GI} = req.body
        let idUser = req.params.id_users
        console.log(image)
        
        superagent
            .post('localhost:7000/ocr/process')
            .attach('image', image.path)
            .set('Content-Type', 'multipart/form-data')
            .end((err, response) => {
                let {
                    // calcium,
                    calories,
                    // cholesterol,
                    // potassium, 
                    protein,
                    // sodium,
                    serving
                } = response.body.result
                let carbohydrate = response.body.result['total carbohydrate']
                let fat = response.body.result['total fat']
                // let sugar = response.body.result['total sugars']
                
                let carboValue = (carbohydrate.includes('mg')) ? carbohydrate.split('mg')[0] : carbohydrate.split('g')[0] 
                let GL = (parseInt(carboValue) * GI) / 100
                let data = {
                    id_users: idUser,
                    id_food: idFood,
                    food_name: food_name,
                    charbo: carbohydrate,
                    protein: protein,
                    fat: fat,
                    calorie: calories,
                    serving_size: serving.split('size ')[1],
                    GL: GL,
                    image_path: image.filename
                }

                let entryResult = postNutritionEntry(data)

                res.status(200).json({
                    success: 1,
                    data: data
                })
                
            })
    },
}