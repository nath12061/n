.class public interface abstract annotation Linstall/app/RegexMatch;
.super Ljava/lang/Object;
.source "RegexMatch.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Linstall/app/RegexMatch;
        ErrorMessage = "%fieldname% does not match the regext pattern: %pattern%"
        Validator = Linstall/app/RegexMatch$RegexMatchValidator;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/RegexMatch$RegexMatchValidator;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract ErrorMessage()Ljava/lang/String;
.end method

.method public abstract Pattern()Ljava/lang/String;
.end method

.method public abstract Validator()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method
