.class public interface abstract annotation Linstall/app/EqualsTod;
.super Ljava/lang/Object;
.source "EqualsTod.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Linstall/app/EqualsTod;
        ErrorMessage = "%fieldname% must be the same as %observable%"
        Validator = Linstall/app/EqualsTod$EqualsToValidator;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/EqualsTod$EqualsToValidator;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract ErrorMessage()Ljava/lang/String;
.end method

.method public abstract Observable()Ljava/lang/String;
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
