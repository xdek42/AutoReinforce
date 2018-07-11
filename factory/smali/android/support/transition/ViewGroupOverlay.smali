.class Landroid/support/transition/ViewGroupOverlay;
.super Landroid/support/transition/ViewOverlay;
.source "ViewGroupOverlay.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "requestingView"    # Landroid/view/View;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/support/transition/ViewOverlay;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 32
    return-void
.end method

.method public static createFrom(Landroid/view/ViewGroup;)Landroid/support/transition/ViewGroupOverlay;
    .locals 1
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 35
    invoke-static {p0}, Landroid/support/transition/ViewOverlay;->createFrom(Landroid/view/View;)Landroid/support/transition/ViewOverlay;

    move-result-object v0

    check-cast v0, Landroid/support/transition/ViewGroupOverlay;

    return-object v0
.end method


# virtual methods
.method public add(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->add(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public remove(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v0, p0, Landroid/support/transition/ViewGroupOverlay;->mOverlayViewGroup:Landroid/support/transition/ViewOverlay$OverlayViewGroup;

    invoke-virtual {v0, p1}, Landroid/support/transition/ViewOverlay$OverlayViewGroup;->remove(Landroid/view/View;)V

    .line 74
    return-void
.end method
