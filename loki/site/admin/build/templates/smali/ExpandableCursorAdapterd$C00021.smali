.class Linstall/app/ExpandableCursorAdapterd$C00021;
.super Linstall/app/DataSetObserver;
.source "ExpandableCursorAdapterd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ExpandableCursorAdapterd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00021"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/ExpandableCursorAdapterd;


# direct methods
.method constructor <init>(Linstall/app/ExpandableCursorAdapterd;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/ExpandableCursorAdapterd;

    .prologue
    .line 15
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd$C00021;, "Linstall/app/ExpandableCursorAdapterd<TT;>.C00021;"
    iput-object p1, p0, Linstall/app/ExpandableCursorAdapterd$C00021;->this$0:Linstall/app/ExpandableCursorAdapterd;

    invoke-direct {p0}, Linstall/app/DataSetObserver;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Linstall/app/ExpandableCursorAdapterd$C00021;, "Linstall/app/ExpandableCursorAdapterd<TT;>.C00021;"
    invoke-super {p0}, Linstall/app/DataSetObserver;->onChanged()V

    .line 20
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapterd$C00021;->this$0:Linstall/app/ExpandableCursorAdapterd;

    # getter for: Linstall/app/ExpandableCursorAdapterd;->mChildAdapters:Ljava/util/Hashtable;
    invoke-static {v0}, Linstall/app/ExpandableCursorAdapterd;->access$000(Linstall/app/ExpandableCursorAdapterd;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 21
    return-void
.end method
