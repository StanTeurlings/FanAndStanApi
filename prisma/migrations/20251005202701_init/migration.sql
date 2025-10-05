-- CreateEnum
CREATE TYPE "Status" AS ENUM ('PENDING', 'COMPLETED');

-- CreateEnum
CREATE TYPE "category" AS ENUM ('ACTIVE', 'MUSIC', 'ART', 'TRAVEL', 'FOOD', 'MOVIE', 'OTHER');

-- CreateTable
CREATE TABLE "Event" (
    "id" SERIAL NOT NULL,
    "picture" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    "category" "category" NOT NULL,
    "description" TEXT NOT NULL,
    "uploadedAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "completedAt" TIMESTAMP(3),
    "status" "Status" NOT NULL DEFAULT 'PENDING',

    CONSTRAINT "Event_pkey" PRIMARY KEY ("id")
);
