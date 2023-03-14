-- DropForeignKey
ALTER TABLE "Machine" DROP CONSTRAINT "Machine_branchId_fkey";

-- AlterTable
ALTER TABLE "Machine" ALTER COLUMN "branchId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Machine" ADD CONSTRAINT "Machine_branchId_fkey" FOREIGN KEY ("branchId") REFERENCES "Branch"("id") ON DELETE SET NULL ON UPDATE CASCADE;
