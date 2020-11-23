.class public Linstall/app/AQuery;
.super Linstall/app/AbstractAQuery;
.source "AQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/AbstractAQuery",
        "<",
        "Linstall/app/AQuery;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/Activity;)V
    .locals 0
    .param p1, "act"    # Linstall/app/Activity;

    .prologue
    .line 4
    invoke-direct {p0}, Linstall/app/AbstractAQuery;-><init>()V

    .line 6
    return-void
.end method
