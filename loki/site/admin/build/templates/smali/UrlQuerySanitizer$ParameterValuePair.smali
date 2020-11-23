.class public Linstall/app/UrlQuerySanitizer$ParameterValuePair;
.super Ljava/lang/Object;
.source "UrlQuerySanitizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/UrlQuerySanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParameterValuePair"
.end annotation


# instance fields
.field public mParameter:Ljava/lang/String;

.field public mValue:Ljava/lang/String;

.field final synthetic this$0:Linstall/app/UrlQuerySanitizer;


# direct methods
.method public constructor <init>(Linstall/app/UrlQuerySanitizer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/UrlQuerySanitizer;
    .param p2, "parameter"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Linstall/app/UrlQuerySanitizer$ParameterValuePair;->this$0:Linstall/app/UrlQuerySanitizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
