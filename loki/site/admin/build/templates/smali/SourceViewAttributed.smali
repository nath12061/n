.class public Linstall/app/SourceViewAttributed;
.super Linstall/app/ViewAttributed;
.source "SourceViewAttributed.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ViewAttributed",
        "<",
        "Linstall/app/ImageView;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Linstall/app/ImageView;)V
    .locals 2
    .param p1, "view"    # Linstall/app/ImageView;

    .prologue
    .line 5
    const-class v0, Ljava/lang/Object;

    const-string v1, "source"

    invoke-direct {p0, v0, p1, v1}, Linstall/app/ViewAttributed;-><init>(Ljava/lang/Class;Linstall/app/View;Ljava/lang/String;)V

    .line 6
    return-void
.end method


# virtual methods
.method protected AcceptThisTypeAs(Ljava/lang/Class;)Linstall/app/BindingTyped;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Linstall/app/BindingTyped;"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Linstall/app/BindingTyped;->OneWay:Linstall/app/BindingTyped;

    return-object v0
.end method

.method protected doSetAttributeValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 9
    if-nez p1, :cond_1

    .line 10
    invoke-virtual {p0}, Linstall/app/SourceViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Linstall/app/ImageView;->setImageDrawable(Linstall/app/Drawable;)V

    .line 23
    .end local p1    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 13
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {p0}, Linstall/app/SourceViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/ImageView;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Linstall/app/ImageView;->setImageResource(I)V

    .line 16
    :cond_2
    instance-of v0, p1, Linstall/app/Uri;

    if-eqz v0, :cond_3

    .line 17
    invoke-virtual {p0}, Linstall/app/SourceViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/ImageView;

    check-cast p1, Linstall/app/Uri;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Linstall/app/ImageView;->setImageURI(Linstall/app/Uri;)V

    goto :goto_0

    .line 18
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Linstall/app/Drawable;

    if-eqz v0, :cond_4

    .line 19
    invoke-virtual {p0}, Linstall/app/SourceViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/ImageView;

    check-cast p1, Linstall/app/Drawable;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Linstall/app/ImageView;->setImageDrawable(Linstall/app/Drawable;)V

    goto :goto_0

    .line 20
    .restart local p1    # "newValue":Ljava/lang/Object;
    :cond_4
    instance-of v0, p1, Linstall/app/Bitmap;

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Linstall/app/SourceViewAttributed;->getView()Linstall/app/View;

    move-result-object v0

    check-cast v0, Linstall/app/ImageView;

    check-cast p1, Linstall/app/Bitmap;

    .end local p1    # "newValue":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Linstall/app/ImageView;->setImageBitmap(Linstall/app/Bitmap;)V

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method
