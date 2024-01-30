-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Work" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "title" TEXT NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" DATETIME NOT NULL,
    "clientId" INTEGER,
    "status" TEXT,
    "description" TEXT,
    "price" REAL,
    "date" DATETIME,
    CONSTRAINT "Work_clientId_fkey" FOREIGN KEY ("clientId") REFERENCES "Client" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_Work" ("clientId", "createdAt", "date", "description", "id", "price", "status", "title", "updatedAt") SELECT "clientId", "createdAt", "date", "description", "id", "price", "status", "title", "updatedAt" FROM "Work";
DROP TABLE "Work";
ALTER TABLE "new_Work" RENAME TO "Work";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
