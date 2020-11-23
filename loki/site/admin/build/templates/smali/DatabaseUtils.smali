.class public Linstall/app/DatabaseUtils;
.super Ljava/lang/Object;
.source "DatabaseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/DatabaseUtils$InsertHelper;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "sqlString"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final appendValueToSql(Ljava/lang/StringBuilder;Ljava/lang/Object;)V
    .locals 2
    .param p0, "sql"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static bindObjectToProgram(Linstall/app/SQLiteProgram;ILjava/lang/Object;)V
    .locals 2
    .param p0, "prog"    # Linstall/app/SQLiteProgram;
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createDbFromSqlStatements(Linstall/app/Context;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Linstall/app/Context;
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "dbVersion"    # I
    .param p3, "sqlStatements"    # Ljava/lang/String;

    .prologue
    .line 209
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cursorDoubleToContentValues(Linstall/app/Cursor;Ljava/lang/String;Linstall/app/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Linstall/app/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cursorDoubleToCursorValues(Linstall/app/Cursor;Ljava/lang/String;Linstall/app/ContentValues;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Linstall/app/ContentValues;

    .prologue
    .line 177
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cursorIntToContentValues(Linstall/app/Cursor;Ljava/lang/String;Linstall/app/ContentValues;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Linstall/app/ContentValues;

    .prologue
    .line 161
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cursorIntToContentValues(Linstall/app/Cursor;Ljava/lang/String;Linstall/app/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Linstall/app/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 165
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cursorLongToContentValues(Linstall/app/Cursor;Ljava/lang/String;Linstall/app/ContentValues;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Linstall/app/ContentValues;

    .prologue
    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cursorLongToContentValues(Linstall/app/Cursor;Ljava/lang/String;Linstall/app/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Linstall/app/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 173
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cursorRowToContentValues(Linstall/app/Cursor;Linstall/app/ContentValues;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "values"    # Linstall/app/ContentValues;

    .prologue
    .line 185
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cursorStringToContentValues(Linstall/app/Cursor;Ljava/lang/String;Linstall/app/ContentValues;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Linstall/app/ContentValues;

    .prologue
    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cursorStringToContentValues(Linstall/app/Cursor;Ljava/lang/String;Linstall/app/ContentValues;Ljava/lang/String;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "values"    # Linstall/app/ContentValues;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cursorStringToInsertHelper(Linstall/app/Cursor;Ljava/lang/String;Linstall/app/DatabaseUtils$InsertHelper;I)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "inserter"    # Linstall/app/DatabaseUtils$InsertHelper;
    .param p3, "index"    # I

    .prologue
    .line 153
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dumpCurrentRow(Linstall/app/Cursor;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 133
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dumpCurrentRow(Linstall/app/Cursor;Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dumpCurrentRow(Linstall/app/Cursor;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 141
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dumpCurrentRowToString(Linstall/app/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 145
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dumpCursor(Linstall/app/Cursor;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 117
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dumpCursor(Linstall/app/Cursor;Ljava/io/PrintStream;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "stream"    # Ljava/io/PrintStream;

    .prologue
    .line 121
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dumpCursor(Linstall/app/Cursor;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static dumpCursorToString(Linstall/app/Cursor;)Ljava/lang/String;
    .locals 2
    .param p0, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 129
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getHexCollationKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longForQuery(Linstall/app/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 2
    .param p0, "db"    # Linstall/app/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 193
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static longForQuery(Linstall/app/SQLiteStatement;[Ljava/lang/String;)J
    .locals 2
    .param p0, "prog"    # Linstall/app/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static queryNumEntries(Linstall/app/SQLiteDatabase;Ljava/lang/String;)J
    .locals 2
    .param p0, "db"    # Linstall/app/SQLiteDatabase;
    .param p1, "table"    # Ljava/lang/String;

    .prologue
    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final readExceptionFromParcel(Linstall/app/Parcel;)V
    .locals 2
    .param p0, "reply"    # Linstall/app/Parcel;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static readExceptionWithFileNotFoundExceptionFromParcel(Linstall/app/Parcel;)V
    .locals 2
    .param p0, "reply"    # Linstall/app/Parcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stringForQuery(Linstall/app/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "db"    # Linstall/app/SQLiteDatabase;
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 201
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stringForQuery(Linstall/app/SQLiteStatement;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "prog"    # Linstall/app/SQLiteStatement;
    .param p1, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 205
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final writeExceptionToParcel(Linstall/app/Parcel;Ljava/lang/Exception;)V
    .locals 2
    .param p0, "reply"    # Linstall/app/Parcel;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 81
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
