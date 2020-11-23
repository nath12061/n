.class public Linstall/app/LongFieldd;
.super Linstall/app/CursorFieldd;
.source "LongFieldd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/CursorFieldd",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 7
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, v0, p1}, Linstall/app/CursorFieldd;-><init>(Ljava/lang/Class;I)V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Ljava/lang/Long;

    invoke-direct {p0, v0, p1}, Linstall/app/CursorFieldd;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public returnValue(Linstall/app/Cursor;)Ljava/lang/Long;
    .locals 2
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 18
    iget v0, p0, Linstall/app/LongFieldd;->mColumnIndex:I

    invoke-interface {p1, v0}, Linstall/app/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic returnValue(Linstall/app/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Linstall/app/LongFieldd;->returnValue(Linstall/app/Cursor;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public saveValue(Linstall/app/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 15
    return-void
.end method
