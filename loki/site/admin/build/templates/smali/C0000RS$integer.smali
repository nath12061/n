.class public final Linstall/app/C0000RS$integer;
.super Ljava/lang/Object;
.source "C0000RS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/C0000RS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "integer"
.end annotation


# static fields
.field public static final config_longAnimTime:I = 0x10e0002

.field public static final config_mediumAnimTime:I = 0x10e0001

.field public static final config_shortAnimTime:I = 0x10e0000


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 920
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
