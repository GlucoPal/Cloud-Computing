const superagent = require('superagent')
const mysql = require('../database/data')

module.exports = {

    postScanOCR: (req, res) => {
        let image = req.file 
        let {food_name, category, GI} = req.body
        let idUser = req.params.id_users
        
        
        superagent
            .post('localhost:7000/ocr/process')
            .attach('image', image.path)
            .set('Content-Type', 'multipart/form-data')
            .end((err, response) => {
                let {
                    calcium,
                    calories,
                    cholesterol,
                    potassium, 
                    protein,
                    sodium,
                    serving_size
                } = response.body.result
                let carbohydrate = response.body.result['total carbohydrate']
                let fat = response.body.result['total fat']
                let sugar = response.body.result['total sugars']

                let categoryQuery = "select id from food_category where category = ?"
                let idCategory
                
                mysql.query(categoryQuery, [category], ((err, result) => {
                    if (err){
                        res.status(404).json({
                            success: 0,
                            message: 'Category is not found.'
                        })
                    }
                    idCategory = result[0].id
                    // console.log(idCategory)
                    let insertFood = "insert into gi_food ( id_category, food, GI) values (?, ?, ?)"
                    let idGIFood

                    mysql.query(insertFood, [idCategory, food_name, GI], ((err, result) => {
                        if (err){
                            res.status(500).json({
                                success: 0,
                                message: 'Server error.'
                            })
                        }
                        idGIFood = result.insertId
                        
                        let carboValue = (carbohydrate.includes('mg')) ? carbohydrate.split('mg')[0] : carbohydrate.split('g')[0] 
                        let GL = (parseInt(carboValue) * GI) / 100
                        let insertResult = `insert into result 
                            (id_users, id_food, carbo, protein, fat, calorie, sodium, potassium, cholesterol, sugar, calcium, serving_size, GL) 
                            values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)`

                        mysql.query(insertResult, [idUser, idGIFood, carbohydrate, protein, fat, calories, sodium, potassium, cholesterol, sugar, calcium, serving_size, GL], (err, result) => {
                            if(err){
                                console.log(err)
                                res.status(500).json({
                                    success: 0,
                                    message: 'Server error.'
                                })
                            }
                            res.status(200).json({
                                success: 1,
                                data: {
                                    calcium: calcium,
                                    calories: calories,
                                    cholesterol: cholesterol,
                                    potassium: potassium,
                                    protein: protein,
                                    sodium: sodium,
                                    carbohydrate: carbohydrate,
                                    fat: fat,
                                    sugar: sugar,
                                    GI: GI,
                                    GL: GL,
                                    foodName: food_name,
                                    category: category
                                }
                            })
                        })
                    })) 
                })) 
            })
    },
}