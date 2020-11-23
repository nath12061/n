.class public Linstall/app/ViewFactory;
.super Ljava/lang/Object;
.source "ViewFactory.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# static fields
.field public static final BINDING_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/gueei.binding"


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private processedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;)V
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linstall/app/ViewFactory;->processedViews:Ljava/util/ArrayList;

    .line 17
    iput-object p1, p0, Linstall/app/ViewFactory;->mInflater:Landroid/view/LayoutInflater;

    .line 18
    return-void
.end method


# virtual methods
.method protected CreateViewByInflater(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 22
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.widget."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "viewFullName":Ljava/lang/String;
    const-string v3, "View"

    if-eq p1, v3, :cond_0

    const-string v3, "ViewGroup"

    if-ne p1, v3, :cond_2

    .line 24
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.view."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    :cond_1
    :goto_0
    iget-object v3, p0, Linstall/app/ViewFactory;->mInflater:Landroid/view/LayoutInflater;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, p3}, Landroid/view/LayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    .line 33
    .end local v1    # "viewFullName":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 25
    .restart local v1    # "viewFullName":Ljava/lang/String;
    :cond_2
    const-string v3, "binding."

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gueei.binding.widgets."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2e

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_3
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 28
    move-object v1, p1

    goto :goto_0

    .line 31
    .end local v1    # "viewFullName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public getProcessedViews()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Linstall/app/ViewFactory;->processedViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2, p3}, Linstall/app/ViewFactory;->CreateViewByInflater(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    .line 39
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_1

    .line 40
    const/4 v5, 0x0

    .line 56
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-object v5

    .line 42
    .restart local v5    # "view":Landroid/view/View;
    :cond_1
    new-instance v4, Linstall/app/BindingMap;

    invoke-direct {v4}, Linstall/app/BindingMap;-><init>()V

    .line 43
    .local v4, "map":Linstall/app/BindingMap;
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v2

    .line 44
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 45
    invoke-interface {p3, v3}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "attrName":Ljava/lang/String;
    const-string v6, "http://www.gueei.com/android-binding/"

    invoke-interface {p3, v6, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "attrValue":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 48
    invoke-virtual {v4, v0, v1}, Linstall/app/BindingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 51
    .end local v0    # "attrName":Ljava/lang/String;
    .end local v1    # "attrValue":Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Linstall/app/BindingMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 54
    invoke-static {v5, v4}, Linstall/app/Binder;->putBindingMapToView(Landroid/view/View;Linstall/app/BindingMap;)V

    .line 55
    iget-object v6, p0, Linstall/app/ViewFactory;->processedViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
