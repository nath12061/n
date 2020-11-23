.class Linstall/app/ExpandableCursorAdapterd$1;
.super Linstall/app/CursorObservableAdapterd;
.source "ExpandableCursorAdapterd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Linstall/app/ExpandableCursorAdapterd;-><init>(Linstall/app/Context;Linstall/app/CursorObservabled;IILjava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/ExpandableCursorAdapterd;


# direct methods
.method constructor <init>(Linstall/app/ExpandableCursorAdapterd;Linstall/app/Context;Linstall/app/CursorObservabled;II)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/ExpandableCursorAdapterd;
    .param p2, "context"    # Linstall/app/Context;
    .param p3, "cursorObservable"    # Linstall/app/CursorObservabled;
    .param p4, "layoutId"    # I
    .param p5, "dropDownLayoutId"    # I

    .prologue
    .line 30
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd$1;, "Linstall/app/ExpandableCursorAdapterd$1;"
    iput-object p1, p0, Linstall/app/ExpandableCursorAdapterd$1;->this$0:Linstall/app/ExpandableCursorAdapterd;

    invoke-direct {p0, p2, p3, p4, p5}, Linstall/app/CursorObservableAdapterd;-><init>(Linstall/app/Context;Linstall/app/CursorObservabled;II)V

    return-void
.end method


# virtual methods
.method public getFilter()Linstall/app/Filter;
    .locals 1

    .prologue
    .line 33
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd$1;, "Linstall/app/ExpandableCursorAdapterd$1;"
    const/4 v0, 0x0

    return-object v0
.end method
