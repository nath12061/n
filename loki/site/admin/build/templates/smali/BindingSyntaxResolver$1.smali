.class final Linstall/app/BindingSyntaxResolver$1;
.super Linstall/app/DynamicObject;
.source "BindingSyntaxResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linstall/app/BindingSyntaxResolver;->getDynamicObjectFromStatement(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Linstall/app/IObservable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Linstall/app/DynamicObject;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Linstall/app/DynamicObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method
