.class public Linstall/app/SingleLayoutTemplated;
.super Linstall/app/LayoutTemplated;
.source "SingleLayoutTemplated.java"


# instance fields
.field private final mId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 8
    invoke-direct {p0}, Linstall/app/LayoutTemplated;-><init>()V

    .line 9
    iput p1, p0, Linstall/app/SingleLayoutTemplated;->mId:I

    .line 10
    return-void
.end method


# virtual methods
.method public getTemplate()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Linstall/app/SingleLayoutTemplated;->mId:I

    return v0
.end method

.method public getTemplate(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 17
    iget v0, p0, Linstall/app/SingleLayoutTemplated;->mId:I

    return v0
.end method
