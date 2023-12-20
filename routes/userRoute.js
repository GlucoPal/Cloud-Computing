const router = require('express').Router();
const multer = require('multer')
const storage = multer.diskStorage({
  destination: function (req, file, cb) {
    cb(null, './storage')
  },
  filename: function (req, file, cb) {
    const generateRandomString = (myLength) => {
      const chars =
        "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890";
      const randomArray = Array.from(
        { length: myLength },
        (v, k) => chars[Math.floor(Math.random() * chars.length)]
      );
    
      const randomString = randomArray.join("");
      return randomString;
    };

    let extension = file.originalname.split('.')
    extension = extension[extension.length - 1]
    cb(null, generateRandomString(32) + '.' + extension)
  }
})
const upload = multer({storage: storage})
const { TokenCheck } = require('../auth/tokenJWT');
const {
  createUser,
  login,
  getUserByUserId,
  getUsers,
  updateUsername,
  logout,

} = require('../controller/userController');

const {

  getfoodIdCategory,
  postNutritionEntry,
  updateFoodName,
  getAllFood,
  getNutritionEntry,
  getHistory,
  deleteHistoryById} = require("../controller/gi_foodController");
const { postScanOCR } = require('../controller/ocr_scan');

router.get("/allUser", TokenCheck, getUsers);

//user
router.post('/register', createUser); //register
router.post('/login', login); //login
router.get('/profile/:id', TokenCheck, getUserByUserId); //getuserbyID
router.patch('/profile/updateusername/:userId', TokenCheck, updateUsername);//updateUsername
router.post('/logout', TokenCheck, logout);//logout

//get food 
router.get("/allfood",TokenCheck,getAllFood)
router.get("/food/:id_category",TokenCheck,getfoodIdCategory);//Get Food by Category
// router.post("/result/:id_users",TokenCheck,postNutritionEntry); //Entry hasil nutrition fact 
router.get("/result/:id",TokenCheck,getNutritionEntry); //get hasil nutrion fact by id result
router.patch('/result/updateFoodName/:idResult', TokenCheck,updateFoodName); //update nama foodnya
router.get("/history/:id_users",TokenCheck,getHistory) //history user
router.delete('/history/:resultId', TokenCheck, deleteHistoryById)
// scan OCR
router.post('/scan/:id_users', upload.single('image'), TokenCheck, postScanOCR) 

module.exports = router;
