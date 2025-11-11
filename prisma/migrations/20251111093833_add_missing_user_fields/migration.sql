-- AlterEnum
ALTER TYPE "Role" ADD VALUE 'GUEST';

-- AlterTable
ALTER TABLE "User" ADD COLUMN "isActive" BOOLEAN NOT NULL DEFAULT true;
ALTER TABLE "User" ADD COLUMN "magicToken" TEXT;
ALTER TABLE "User" ADD COLUMN "magicTokenExp" TIMESTAMP(3);

-- CreateIndex
CREATE UNIQUE INDEX "User_magicToken_key" ON "User"("magicToken");

-- CreateIndex
CREATE INDEX "User_magicToken_idx" ON "User"("magicToken");

