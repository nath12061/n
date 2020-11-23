.class public interface abstract annotation Linstall/app/Requiredd;
.super Ljava/lang/Object;
.source "Requiredd.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Linstall/app/Requiredd;
        ErrorMessagRes = 0x7f030000
        ErrorMessage = ""
        Validator = Linstall/app/Requiredd$RequiredValidator;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Linstall/app/Requiredd$RequiredValidator;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract ErrorMessagRes()I
.end method

.method public abstract ErrorMessage()Ljava/lang/String;
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
