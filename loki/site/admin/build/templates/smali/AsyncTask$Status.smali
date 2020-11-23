.class public final enum Linstall/app/AsyncTask$Status;
.super Ljava/lang/Enum;
.source "AsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Linstall/app/AsyncTask$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Linstall/app/AsyncTask$Status;

.field public static final enum FINISHED:Linstall/app/AsyncTask$Status;

.field public static final enum PENDING:Linstall/app/AsyncTask$Status;

.field public static final enum RUNNING:Linstall/app/AsyncTask$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Linstall/app/AsyncTask$Status;

    const-string v1, "FINISHED"

    invoke-direct {v0, v1, v2}, Linstall/app/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/AsyncTask$Status;->FINISHED:Linstall/app/AsyncTask$Status;

    .line 11
    new-instance v0, Linstall/app/AsyncTask$Status;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v3}, Linstall/app/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/AsyncTask$Status;->PENDING:Linstall/app/AsyncTask$Status;

    .line 12
    new-instance v0, Linstall/app/AsyncTask$Status;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Linstall/app/AsyncTask$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Linstall/app/AsyncTask$Status;->RUNNING:Linstall/app/AsyncTask$Status;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Linstall/app/AsyncTask$Status;

    sget-object v1, Linstall/app/AsyncTask$Status;->FINISHED:Linstall/app/AsyncTask$Status;

    aput-object v1, v0, v2

    sget-object v1, Linstall/app/AsyncTask$Status;->PENDING:Linstall/app/AsyncTask$Status;

    aput-object v1, v0, v3

    sget-object v1, Linstall/app/AsyncTask$Status;->RUNNING:Linstall/app/AsyncTask$Status;

    aput-object v1, v0, v4

    sput-object v0, Linstall/app/AsyncTask$Status;->$VALUES:[Linstall/app/AsyncTask$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Linstall/app/AsyncTask$Status;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Linstall/app/AsyncTask$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Linstall/app/AsyncTask$Status;

    return-object v0
.end method

.method public static values()[Linstall/app/AsyncTask$Status;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Linstall/app/AsyncTask$Status;->$VALUES:[Linstall/app/AsyncTask$Status;

    invoke-virtual {v0}, [Linstall/app/AsyncTask$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Linstall/app/AsyncTask$Status;

    return-object v0
.end method
