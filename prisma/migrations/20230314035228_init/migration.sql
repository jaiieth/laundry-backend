-- DropForeignKey
ALTER TABLE "Branch" DROP CONSTRAINT "Branch_franchiseeId_fkey";

-- AlterTable
ALTER TABLE "Branch" ALTER COLUMN "franchiseeId" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "Branch" ADD CONSTRAINT "Branch_franchiseeId_fkey" FOREIGN KEY ("franchiseeId") REFERENCES "Franchisee"("id") ON DELETE SET NULL ON UPDATE CASCADE;
