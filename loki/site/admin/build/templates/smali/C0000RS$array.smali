.class public final Linstall/app/C0000RS$array;
.super Ljava/lang/Object;
.source "C0000RS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/C0000RS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static final emailAddressTypes:I = 0x1070000

.field public static final imProtocols:I = 0x1070001

.field public static final organizationTypes:I = 0x1070002

.field public static final phoneTypes:I = 0x1070003

.field public static final postalAddressTypes:I = 0x1070004


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
