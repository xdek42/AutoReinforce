.class Landroid/support/transition/VisibilityIcs;
.super Landroid/support/transition/TransitionIcs;
.source "VisibilityIcs.java"

# interfaces
.implements Landroid/support/transition/VisibilityImpl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/VisibilityIcs$VisibilityWrapper;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/transition/TransitionIcs;-><init>()V

    .line 57
    return-void
.end method


# virtual methods
.method public init(Landroid/support/transition/TransitionInterface;Ljava/lang/Object;)V
    .locals 1
    .param p1, "external"    # Landroid/support/transition/TransitionInterface;
    .param p2, "internal"    # Ljava/lang/Object;

    .prologue
    .line 30
    iput-object p1, p0, Landroid/support/transition/VisibilityIcs;->mExternalTransition:Landroid/support/transition/TransitionInterface;

    .line 31
    if-nez p2, :cond_0

    .line 32
    new-instance v0, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;

    check-cast p1, Landroid/support/transition/VisibilityInterface;

    .end local p1    # "external":Landroid/support/transition/TransitionInterface;
    invoke-direct {v0, p1}, Landroid/support/transition/VisibilityIcs$VisibilityWrapper;-><init>(Landroid/support/transition/VisibilityInterface;)V

    iput-object v0, p0, Landroid/support/transition/VisibilityIcs;->mTransition:Landroid/support/transition/TransitionPort;

    .line 36
    .end local p2    # "internal":Ljava/lang/Object;
    :goto_0
    return-void

    .line 34
    .restart local p1    # "external":Landroid/support/transition/TransitionInterface;
    .restart local p2    # "internal":Ljava/lang/Object;
    :cond_0
    check-cast p2, Landroid/support/transition/VisibilityPort;

    .end local p2    # "internal":Ljava/lang/Object;
    iput-object p2, p0, Landroid/support/transition/VisibilityIcs;->mTransition:Landroid/support/transition/TransitionPort;

    goto :goto_0
.end method

.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .locals 1
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs;->mTransition:Landroid/support/transition/TransitionPort;

    check-cast v0, Landroid/support/transition/VisibilityPort;

    invoke-virtual {v0, p1}, Landroid/support/transition/VisibilityPort;->isVisible(Landroid/support/transition/TransitionValues;)Z

    move-result v0

    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs;->mTransition:Landroid/support/transition/TransitionPort;

    check-cast v0, Landroid/support/transition/VisibilityPort;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/VisibilityPort;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 6
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .prologue
    .line 53
    iget-object v0, p0, Landroid/support/transition/VisibilityIcs;->mTransition:Landroid/support/transition/TransitionPort;

    check-cast v0, Landroid/support/transition/VisibilityPort;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/support/transition/VisibilityPort;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
