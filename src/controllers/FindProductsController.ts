import { Request, Response } from "express";
import { prismaClient } from "../databases/prismaClient";

export class FindProductsController {
  async handle(request: Request, response: Response) {
    const { id } = request.body;

    const product = await prismaClient.product.findFirst({
      where: {
        id,
      },
      include: {
        ProductCategory: true,
      },
    });
    return response.json(product);
  }
}
