/*
  Warnings:

  - A unique constraint covering the columns `[mode,duration,weight,price]` on the table `Mode` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "Mode_mode_duration_weight_price_key" ON "Mode"("mode", "duration", "weight", "price");
