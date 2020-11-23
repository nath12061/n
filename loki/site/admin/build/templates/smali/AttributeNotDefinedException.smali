.class public Linstall/app/AttributeNotDefinedException;
.super Linstall/app/BindingException;
.source "AttributeNotDefinedException.java"


# static fields
.field private static final serialVersionUID:J = 0x2a8374d12778eb58L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1}, Linstall/app/BindingException;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 7
    invoke-direct {p0, p1, p2}, Linstall/app/BindingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Linstall/app/BindingException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    return-void
.end method
