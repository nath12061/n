.class public Linstall/app/ValidationResult;
.super Ljava/lang/Object;
.source "ValidationResult.java"


# instance fields
.field private errorMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private valid:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Linstall/app/ValidationResult;->errorMessages:Ljava/util/ArrayList;

    .line 7
    iput-boolean v1, p0, Linstall/app/ValidationResult;->valid:Z

    return-void
.end method


# virtual methods
.method public getValidationErrors()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Linstall/app/ValidationResult;->errorMessages:Ljava/util/ArrayList;

    iget-object v1, p0, Linstall/app/ValidationResult;->errorMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 10
    iget-boolean v0, p0, Linstall/app/ValidationResult;->valid:Z

    return v0
.end method

.method public putValidationError(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Linstall/app/ValidationResult;->valid:Z

    .line 15
    iget-object v0, p0, Linstall/app/ValidationResult;->errorMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    return-void
.end method
