.class public final Linstall/app/C0000RS;
.super Ljava/lang/Object;
.source "C0000RS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/C0000RS$xml;,
        Linstall/app/C0000RS$style;,
        Linstall/app/C0000RS$string;,
        Linstall/app/C0000RS$raw;,
        Linstall/app/C0000RS$plurals;,
        Linstall/app/C0000RS$layout;,
        Linstall/app/C0000RS$integer;,
        Linstall/app/C0000RS$id;,
        Linstall/app/C0000RS$drawable;,
        Linstall/app/C0000RS$dimen;,
        Linstall/app/C0000RS$color;,
        Linstall/app/C0000RS$bool;,
        Linstall/app/C0000RS$attr;,
        Linstall/app/C0000RS$array;,
        Linstall/app/C0000RS$anim;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 1094
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1095
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
