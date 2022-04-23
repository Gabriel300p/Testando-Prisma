import { Request, Response } from "express";
import { prismaClient } from "../databases/prismaClient";

export class CreateProductControllers {
  async handle(request: Request, response: Response) {
    const { name, bar_code, price } = request.body;

    const product = await prismaClient.product.create({
      data: {
        bar_code,
        name,
        price,
      },
    });
    return response.json(product);
  }
}

