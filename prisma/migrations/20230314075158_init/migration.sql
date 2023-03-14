/*
  Warnings:

  - A unique constraint covering the columns `[username]` on the table `technician` will be added. If there are existing duplicate values, this will fail.
  - Added the required column `username` to the `technician` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "technician" ADD COLUMN     "username" TEXT NOT NULL;

-- CreateIndex
CREATE UNIQUE INDEX "technician_username_key" ON "technician"("username");
