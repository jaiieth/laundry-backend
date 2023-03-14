/*
  Warnings:

  - Changed the type of `size` on the `Branch` table. No cast exists, the column would be dropped and recreated, which cannot be done if there is data, since the column is required.

*/
-- CreateEnum
CREATE TYPE "SizeEnum" AS ENUM ('SMALL', 'MEDIUM', 'LARGE', 'VERY_LARGE');

-- AlterTable
ALTER TABLE "Branch" DROP COLUMN "size",
ADD COLUMN     "size" "SizeEnum" NOT NULL;
