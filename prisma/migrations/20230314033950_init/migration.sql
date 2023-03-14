/*
  Warnings:

  - The values [SMALL,MEDIUM,LARGE,VERY_LARGE] on the enum `SizeEnum` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterEnum
BEGIN;
CREATE TYPE "SizeEnum_new" AS ENUM ('S', 'M', 'L', 'XL');
ALTER TABLE "Branch" ALTER COLUMN "size" TYPE "SizeEnum_new" USING ("size"::text::"SizeEnum_new");
ALTER TYPE "SizeEnum" RENAME TO "SizeEnum_old";
ALTER TYPE "SizeEnum_new" RENAME TO "SizeEnum";
DROP TYPE "SizeEnum_old";
COMMIT;
