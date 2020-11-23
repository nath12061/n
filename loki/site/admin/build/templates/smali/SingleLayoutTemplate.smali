.class public abstract Linstall/app/SingleLayoutTemplate;
.super Linstall/app/LayoutTemplate;
.source "SingleLayoutTemplate.java"


# instance fields
.field private final mId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 6
    invoke-direct {p0}, Linstall/app/LayoutTemplate;-><init>()V

    .line 7
    iput p1, p0, Linstall/app/SingleLayoutTemplate;->mId:I

    .line 8
    return-void
.end method


# virtual methods
.method public getTemplate()I
    .locals 1

    .prologue
    .line 11
    iget v0, p0, Linstall/app/SingleLayoutTemplate;->mId:I

    return v0
.end method

.method public getTemplate(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 15
    iget v0, p0, Linstall/app/SingleLayoutTemplate;->mId:I

    return v0
.end method
