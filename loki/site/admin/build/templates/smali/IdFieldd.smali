.class public Linstall/app/IdFieldd;
.super Linstall/app/LongFieldd;
.source "IdFieldd.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "columnIndex"    # I

    .prologue
    .line 5
    invoke-direct {p0, p1}, Linstall/app/LongFieldd;-><init>(I)V

    .line 6
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "columnName"    # Ljava/lang/String;

    .prologue
    .line 9
    invoke-direct {p0, p1}, Linstall/app/LongFieldd;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method
