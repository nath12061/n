.class public Linstall/app/MatrixCursor$RowBuilder;
.super Ljava/lang/Object;
.source "MatrixCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/MatrixCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RowBuilder"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/MatrixCursor;


# direct methods
.method constructor <init>(Linstall/app/MatrixCursor;)V
    .locals 2
    .param p1, "this$0"    # Linstall/app/MatrixCursor;

    .prologue
    .line 7
    iput-object p1, p0, Linstall/app/MatrixCursor$RowBuilder;->this$0:Linstall/app/MatrixCursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Linstall/app/MatrixCursor$RowBuilder;
    .locals 2
    .param p1, "columnValue"    # Ljava/lang/Object;

    .prologue
    .line 12
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
