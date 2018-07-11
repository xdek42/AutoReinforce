.class final Landroid/support/v7/widget/GapWorker$1;
.super Ljava/lang/Object;
.source "GapWorker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/GapWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/support/v7/widget/GapWorker$Task;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/support/v7/widget/GapWorker$Task;Landroid/support/v7/widget/GapWorker$Task;)I
    .locals 7
    .param p1, "lhs"    # Landroid/support/v7/widget/GapWorker$Task;
    .param p2, "rhs"    # Landroid/support/v7/widget/GapWorker$Task;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 191
    iget-object v2, p1, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    iget-object v6, p2, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez v6, :cond_1

    move v6, v3

    :goto_1
    if-eq v2, v6, :cond_3

    .line 192
    iget-object v2, p1, Landroid/support/v7/widget/GapWorker$Task;->view:Landroid/support/v7/widget/RecyclerView;

    if-nez v2, :cond_2

    .line 208
    :goto_2
    return v3

    :cond_0
    move v2, v4

    .line 191
    goto :goto_0

    :cond_1
    move v6, v4

    goto :goto_1

    :cond_2
    move v3, v5

    .line 192
    goto :goto_2

    .line 196
    :cond_3
    iget-boolean v2, p1, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    iget-boolean v6, p2, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    if-eq v2, v6, :cond_5

    .line 197
    iget-boolean v2, p1, Landroid/support/v7/widget/GapWorker$Task;->immediate:Z

    if-eqz v2, :cond_4

    :goto_3
    move v3, v5

    goto :goto_2

    :cond_4
    move v5, v3

    goto :goto_3

    .line 201
    :cond_5
    iget v2, p2, Landroid/support/v7/widget/GapWorker$Task;->viewVelocity:I

    iget v3, p1, Landroid/support/v7/widget/GapWorker$Task;->viewVelocity:I

    sub-int v1, v2, v3

    .line 202
    .local v1, "deltaViewVelocity":I
    if-eqz v1, :cond_6

    move v3, v1

    goto :goto_2

    .line 205
    :cond_6
    iget v2, p1, Landroid/support/v7/widget/GapWorker$Task;->distanceToItem:I

    iget v3, p2, Landroid/support/v7/widget/GapWorker$Task;->distanceToItem:I

    sub-int v0, v2, v3

    .line 206
    .local v0, "deltaDistanceToItem":I
    if-eqz v0, :cond_7

    move v3, v0

    goto :goto_2

    :cond_7
    move v3, v4

    .line 208
    goto :goto_2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 187
    check-cast p1, Landroid/support/v7/widget/GapWorker$Task;

    check-cast p2, Landroid/support/v7/widget/GapWorker$Task;

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/GapWorker$1;->compare(Landroid/support/v7/widget/GapWorker$Task;Landroid/support/v7/widget/GapWorker$Task;)I

    move-result v0

    return v0
.end method
