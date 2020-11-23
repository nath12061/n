.class Linstall/app/ContentResolver$C00011;
.super Ljava/lang/Object;
.source "ContentResolver.java"

# interfaces
.implements Linstall/app/Cursor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ContentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00011"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/ContentResolver;


# direct methods
.method constructor <init>(Linstall/app/ContentResolver;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/ContentResolver;

    .prologue
    .line 9
    iput-object p1, p0, Linstall/app/ContentResolver$C00011;->this$0:Linstall/app/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 13
    return-void
.end method

.method public copyStringToBuffer(ILinstall/app/CharArrayBuffer;)V
    .locals 0
    .param p1, "columnIndex"    # I
    .param p2, "buffer"    # Linstall/app/CharArrayBuffer;

    .prologue
    .line 16
    return-void
.end method

.method public deactivate()V
    .locals 0

    .prologue
    .line 19
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public getColumnCount()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 38
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getExtras()Linstall/app/Bundle;
    .locals 1

    .prologue
    .line 55
    new-instance v0, Linstall/app/Bundle;

    invoke-direct {v0}, Linstall/app/Bundle;-><init>()V

    return-object v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "columnIndex"    # I

    .prologue
    .line 67
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 79
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    return v0
.end method

.method public isAfterLast()Z
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public isBeforeFirst()Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public isFirst()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x0

    return v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public move(I)Z
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public moveToFirst()Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public moveToPrevious()Z
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    return v0
.end method

.method public registerContentObserver(Linstall/app/ContentObserver;)V
    .locals 0
    .param p1, "observer"    # Linstall/app/ContentObserver;

    .prologue
    .line 135
    return-void
.end method

.method public registerDataSetObserver(Linstall/app/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Linstall/app/DataSetObserver;

    .prologue
    .line 138
    return-void
.end method

.method public requery()Z
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public respond(Linstall/app/Bundle;)Linstall/app/Bundle;
    .locals 1
    .param p1, "extras"    # Linstall/app/Bundle;

    .prologue
    .line 145
    new-instance v0, Linstall/app/Bundle;

    invoke-direct {v0}, Linstall/app/Bundle;-><init>()V

    return-object v0
.end method

.method public setNotificationUri(Linstall/app/ContentResolver;Linstall/app/Uri;)V
    .locals 0
    .param p1, "cr"    # Linstall/app/ContentResolver;
    .param p2, "uri"    # Linstall/app/Uri;

    .prologue
    .line 149
    return-void
.end method

.method public unregisterContentObserver(Linstall/app/ContentObserver;)V
    .locals 0
    .param p1, "observer"    # Linstall/app/ContentObserver;

    .prologue
    .line 152
    return-void
.end method

.method public unregisterDataSetObserver(Linstall/app/DataSetObserver;)V
    .locals 0
    .param p1, "observer"    # Linstall/app/DataSetObserver;

    .prologue
    .line 155
    return-void
.end method
