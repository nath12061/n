.class public abstract Linstall/app/ViewFactoryd;
.super Ljava/lang/Object;
.source "ViewFactoryd.java"

# interfaces
.implements Linstall/app/LayoutInflater$Factory;


# static fields
.field public static final BINDING_NAMESPACE:Ljava/lang/String; = "http://schemas.android.com/apk/res/gueei.binding"


# instance fields
.field private mInflater:Linstall/app/LayoutInflater;

.field private processedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Linstall/app/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Linstall/app/LayoutInflater;)V
    .locals 1
    .param p1, "inflater"    # Linstall/app/LayoutInflater;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Linstall/app/ViewFactoryd;->processedViews:Ljava/util/ArrayList;

    .line 17
    iput-object p1, p0, Linstall/app/ViewFactoryd;->mInflater:Linstall/app/LayoutInflater;

    .line 18
    return-void
.end method


# virtual methods
.method protected CreateViewByInflater(Ljava/lang/String;Linstall/app/Context;Linstall/app/AttributeSet;)Linstall/app/View;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Linstall/app/Context;
    .param p3, "attrs"    # Linstall/app/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 22
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.widget."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 23
    .local v1, "viewFullName":Ljava/lang/String;
    const-string v2, "View"

    if-eq p1, v2, :cond_0

    const-string v2, "ViewGroup"

    if-ne p1, v2, :cond_2

    .line 24
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.view."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 35
    .end local v1    # "viewFullName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v4

    .line 25
    .restart local v1    # "viewFullName":Ljava/lang/String;
    :cond_2
    const-string v2, "binding."

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gueei.binding.widgets."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 27
    :cond_3
    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 31
    .end local v1    # "viewFullName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
