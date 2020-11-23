.class public Linstall/app/BindingLogd;
.super Ljava/lang/Object;
.source "BindingLogd.java"


# static fields
.field public static final tag:Ljava/lang/String; = "Binderd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "occuredAt"    # Ljava/lang/String;
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 12
    return-void
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "occuredAt"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 8
    return-void
.end method
