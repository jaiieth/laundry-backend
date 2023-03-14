/*
  Warnings:

  - You are about to drop the column `levelId` on the `Maintenance` table. All the data in the column will be lost.
  - You are about to drop the `Level` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `level` to the `Maintenance` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "MaintenanceLevelEnum" AS ENUM ('MINOR', 'MAJOR', 'SCHEDULE');

-- DropForeignKey
ALTER TABLE "Maintenance" DROP CONSTRAINT "Maintenance_levelId_fkey";

-- AlterTable
ALTER TABLE "Maintenance" DROP COLUMN "levelId",
ADD COLUMN     "level" "MaintenanceLevelEnum" NOT NULL;

-- DropTable
DROP TABLE "Level";
