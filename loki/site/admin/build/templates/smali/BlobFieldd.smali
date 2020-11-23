.class public Linstall/app/BlobFieldd;
.super Linstall/app/CursorFieldd;
.source "BlobFieldd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/CursorFieldd",
        "<[B>;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "columnIndex"    # I

    .prologue
    .line 5
    const-class v0, [B

    invoke-direct {p0, v0, p1}, Linstall/app/CursorFieldd;-><init>(Ljava/lang/Class;I)V

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "columName"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, [B

    invoke-direct {p0, v0, p1}, Linstall/app/CursorFieldd;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic returnValue(Linstall/app/Cursor;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    invoke-virtual {p0, p1}, Linstall/app/BlobFieldd;->returnValue(Linstall/app/Cursor;)[B

    move-result-object v0

    return-object v0
.end method

.method public returnValue(Linstall/app/Cursor;)[B
    .locals 1
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 16
    iget v0, p0, Linstall/app/BlobFieldd;->mColumnIndex:I

    invoke-interface {p1, v0}, Linstall/app/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public saveValue(Linstall/app/Cursor;)V
    .locals 0
    .param p1, "cursor"    # Linstall/app/Cursor;

    .prologue
    .line 13
    return-void
.end method
