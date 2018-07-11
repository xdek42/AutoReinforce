.class Landroid/support/transition/ViewOverlay;
.super Ljava/lang/Object;
.source "ViewOverlay.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/ViewOverlay$OverlayViewGroup;
    }
.end annotation


# instance fields
.field protected mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    invoke-direct {v0, p1, p2, p3, p0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;Landroid/support/transition/ViewOverlay;)V

    iput-object v0, p0, Landroid/support/transition/ViewOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    .line 52
    return-void
.end method

.method public static createFrom(Landroid/view/View;)Landroid/support/transition/ViewOverlay;
    .locals 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-static {p0}, Landroid/support/transition/ViewOverlay;->getContentView(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 69
    .local v1, "contentView":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 71
    .local v3, "numChildren":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 72
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 73
    .local v0, "child":Landroid/view/View;
    instance-of v4, v0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    if-eqz v4, :cond_0

    .line 74
    check-cast v0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    .end local v0    # "child":Landroid/view/View;
    iget-object v4, v0, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->mViewOverlay:Landroid/support/transition/ViewOverlay;

    .line 79
    .end local v2    # "i":I
    .end local v3    # "numChildren":I
    :goto_1
    return-object v4

    .line 71
    .restart local v0    # "child":Landroid/view/View;
    .restart local v2    # "i":I
    .restart local v3    # "numChildren":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    new-instance v4, Landroid/support/transition/ViewGroupOverlay;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5, v1, p0}, Landroid/support/transition/ViewGroupOverlay;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_1

    .line 79
    .end local v2    # "i":I
    .end local v3    # "numChildren":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method static getContentView(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 55
    move-object v0, p0

    .line 56
    .local v0, "parent":Landroid/view/View;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1020002

    if-ne v1, v2, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Landroid/view/ViewGroup;

    .line 64
    .end local v0    # "parent":Landroid/view/View;
    :goto_1
    return-object v0

    .line 60
    .restart local v0    # "parent":Landroid/view/View;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 61
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .end local v0    # "parent":Landroid/view/View;
    check-cast v0, Landroid/view/ViewGroup;

    .restart local v0    # "parent":Landroid/view/View;
    goto :goto_0

    .line 64
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public add(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/support/transition/ViewOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->add(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Landroid/support/transition/ViewOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->clear()V

    .line 118
    return-void
.end method

.method getOverlayView()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Landroid/support/transition/ViewOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/transition/ViewOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 110
    iget-object v0, p0, Landroid/support/transition/ViewOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 111
    return-void
.end method
