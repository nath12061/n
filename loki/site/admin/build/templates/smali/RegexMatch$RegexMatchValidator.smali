.class public Linstall/app/RegexMatch$RegexMatchValidator;
.super Linstall/app/ValidatorBase;
.source "RegexMatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/RegexMatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RegexMatchValidator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Linstall/app/ValidatorBase",
        "<",
        "Linstall/app/RegexMatch;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Linstall/app/ValidatorBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected doFormatErrorMessage(Linstall/app/RegexMatch;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "parameters"    # Linstall/app/RegexMatch;
    .param p2, "fieldName"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-interface {p1}, Linstall/app/RegexMatch;->ErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "%fieldname%"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "%pattern%"

    invoke-interface {p1}, Linstall/app/RegexMatch;->Pattern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doFormatErrorMessage(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    check-cast p1, Linstall/app/RegexMatch;

    invoke-virtual {p0, p1, p2}, Linstall/app/RegexMatch$RegexMatchValidator;->doFormatErrorMessage(Linstall/app/RegexMatch;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doValidate(Ljava/lang/Object;Linstall/app/RegexMatch;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "parameters"    # Linstall/app/RegexMatch;
    .param p3, "model"    # Ljava/lang/Object;

    .prologue
    .line 20
    if-eqz p1, :cond_0

    instance-of v0, p1, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p2}, Linstall/app/RegexMatch;->Pattern()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 23
    :goto_0
    return v0

    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic doValidate(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 10
    check-cast p2, Linstall/app/RegexMatch;

    invoke-virtual {p0, p1, p2, p3}, Linstall/app/RegexMatch$RegexMatchValidator;->doValidate(Ljava/lang/Object;Linstall/app/RegexMatch;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAcceptedAnnotation()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 12
    const-class v0, Linstall/app/RegexMatch;

    return-object v0
.end method
