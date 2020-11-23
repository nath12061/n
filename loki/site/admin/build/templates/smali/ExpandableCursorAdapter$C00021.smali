.class Linstall/app/ExpandableCursorAdapter$C00021;
.super Landroid/database/DataSetObserver;
.source "ExpandableCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Linstall/app/ExpandableCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "C00021"
.end annotation


# instance fields
.field final synthetic this$0:Linstall/app/ExpandableCursorAdapter;


# direct methods
.method constructor <init>(Linstall/app/ExpandableCursorAdapter;)V
    .locals 0
    .param p1, "this$0"    # Linstall/app/ExpandableCursorAdapter;

    .prologue
    .line 24
    .local p0, "this":Linstall/app/ExpandableCursorAdapter$C00021;, "Linstall/app/ExpandableCursorAdapter<TT;>.C00021;"
    iput-object p1, p0, Linstall/app/ExpandableCursorAdapter$C00021;->this$0:Linstall/app/ExpandableCursorAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 28
    .local p0, "this":Linstall/app/ExpandableCursorAdapter$C00021;, "Linstall/app/ExpandableCursorAdapter<TT;>.C00021;"
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 29
    iget-object v0, p0, Linstall/app/ExpandableCursorAdapter$C00021;->this$0:Linstall/app/ExpandableCursorAdapter;

    # getter for: Linstall/app/ExpandableCursorAdapter;->mChildAdapters:Ljava/util/Hashtable;
    invoke-static {v0}, Linstall/app/ExpandableCursorAdapter;->access$000(Linstall/app/ExpandableCursorAdapter;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 30
    return-void
.end method
