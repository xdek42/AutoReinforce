.class public Landroid/support/v7/util/SortedList$BatchedCallback;
.super Landroid/support/v7/util/SortedList$Callback;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/SortedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatchedCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T2:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v7/util/SortedList$Callback",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field private final mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

.field final mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v7/util/SortedList$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/util/SortedList$Callback",
            "<TT2;>;)V"
        }
    .end annotation

    .prologue
    .line 773
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "wrappedCallback":Landroid/support/v7/util/SortedList$Callback;, "Landroid/support/v7/util/SortedList$Callback<TT2;>;"
    invoke-direct {p0}, Landroid/support/v7/util/SortedList$Callback;-><init>()V

    .line 774
    iput-object p1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    .line 775
    new-instance v0, Landroid/support/v7/util/BatchingListUpdateCallback;

    iget-object v1, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-direct {v0, v1}, Landroid/support/v7/util/BatchingListUpdateCallback;-><init>(Landroid/support/v7/util/ListUpdateCallback;)V

    iput-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    .line 776
    return-void
.end method


# virtual methods
.method public areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 805
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "oldItem":Ljava/lang/Object;, "TT2;"
    .local p2, "newItem":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)Z"
        }
    .end annotation

    .prologue
    .line 810
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "item1":Ljava/lang/Object;, "TT2;"
    .local p2, "item2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;TT2;)I"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    .local p1, "o1":Ljava/lang/Object;, "TT2;"
    .local p2, "o2":Ljava/lang/Object;, "TT2;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mWrappedCallback:Landroid/support/v7/util/SortedList$Callback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/SortedList$Callback;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public dispatchLastEvent()V
    .locals 1

    .prologue
    .line 818
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-virtual {v0}, Landroid/support/v7/util/BatchingListUpdateCallback;->dispatchLastEvent()V

    .line 819
    return-void
.end method

.method public onChanged(II)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 800
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v7/util/BatchingListUpdateCallback;->onChanged(IILjava/lang/Object;)V

    .line 801
    return-void
.end method

.method public onInserted(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 785
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/BatchingListUpdateCallback;->onInserted(II)V

    .line 786
    return-void
.end method

.method public onMoved(II)V
    .locals 1
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 795
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/BatchingListUpdateCallback;->onMoved(II)V

    .line 796
    return-void
.end method

.method public onRemoved(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "count"    # I

    .prologue
    .line 790
    .local p0, "this":Landroid/support/v7/util/SortedList$BatchedCallback;, "Landroid/support/v7/util/SortedList$BatchedCallback<TT2;>;"
    iget-object v0, p0, Landroid/support/v7/util/SortedList$BatchedCallback;->mBatchingListUpdateCallback:Landroid/support/v7/util/BatchingListUpdateCallback;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/util/BatchingListUpdateCallback;->onRemoved(II)V

    .line 791
    return-void
.end method
