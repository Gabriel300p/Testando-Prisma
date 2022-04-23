import { Router } from "express";
import { CreateCategoryController } from "./controllers/CreateCategoryController";
import { CreateProductCategoryController } from "./controllers/CreateProductCategoryController";
import { CreateProductControllers } from "./controllers/CreateProductController";
import { CreateProductWithExistCategory } from "./controllers/CreateProductWithExistCategory";
import { FindProductsController } from "./controllers/FindProductsController";

const router = Router();

const createProduct = new CreateProductControllers();
const createCategory = new CreateCategoryController();
const createProductCategory = new CreateProductCategoryController();
const createProductCategoryExist = new CreateProductWithExistCategory();
const findProduct = new FindProductsController();

router.post("/product", createProduct.handle);
router.post("/category", createCategory.handle);
router.post("/productCategory", createProductCategory.handle);
router.post("/productWithCategory", createProductCategoryExist.handle);
router.get("/product/:id", findProduct.handle);

export { router };
