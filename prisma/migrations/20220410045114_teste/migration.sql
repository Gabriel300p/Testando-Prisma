-- CreateTable
CREATE TABLE `tb_products` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,
    `bar_code` VARCHAR(191) NOT NULL,
    `price` DECIMAL(65, 30) NOT NULL,
    `created_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `altered_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    UNIQUE INDEX `tb_products_bar_code_key`(`bar_code`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_categories` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `tb_products_categories` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `id_product` INTEGER NOT NULL,
    `id_category` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `tb_products_categories` ADD CONSTRAINT `tb_products_categories_id_product_fkey` FOREIGN KEY (`id_product`) REFERENCES `tb_products`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `tb_products_categories` ADD CONSTRAINT `tb_products_categories_id_category_fkey` FOREIGN KEY (`id_category`) REFERENCES `tb_categories`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
