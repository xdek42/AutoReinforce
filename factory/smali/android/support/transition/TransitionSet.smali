.class public Landroid/support/transition/TransitionSet;
.super Landroid/support/transition/Transition;
.source "TransitionSet.java"


# static fields
.field public static final ORDERING_SEQUENTIAL:I = 0x1

.field public static final ORDERING_TOGETHER:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/transition/Transition;-><init>(Z)V

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 60
    new-instance v0, Landroid/support/transition/TransitionSetIcs;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionSetIcs;-><init>(Landroid/support/transition/TransitionInterface;)V

    iput-object v0, p0, Landroid/support/transition/TransitionSet;->mImpl:Landroid/support/transition/TransitionImpl;

    .line 64
    :goto_0
    return-void

    .line 62
    :cond_0
    new-instance v0, Landroid/support/transition/TransitionSetKitKat;

    invoke-direct {v0, p0}, Landroid/support/transition/TransitionSetKitKat;-><init>(Landroid/support/transition/TransitionInterface;)V

    iput-object v0, p0, Landroid/support/transition/TransitionSet;->mImpl:Landroid/support/transition/TransitionImpl;

    goto :goto_0
.end method


# virtual methods
.method public addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mImpl:Landroid/support/transition/TransitionImpl;

    check-cast v0, Landroid/support/transition/TransitionSetImpl;

    iget-object v1, p1, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-interface {v0, v1}, Landroid/support/transition/TransitionSetImpl;->addTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetImpl;

    .line 108
    return-object p0
.end method

.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 125
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->captureEndValues(Landroid/support/transition/TransitionValues;)V

    .line 126
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 1
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 130
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1}, Landroid/support/transition/TransitionImpl;->captureStartValues(Landroid/support/transition/TransitionValues;)V

    .line 131
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/transition/TransitionImpl;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public getOrdering()I
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mImpl:Landroid/support/transition/TransitionImpl;

    check-cast v0, Landroid/support/transition/TransitionSetImpl;

    invoke-interface {v0}, Landroid/support/transition/TransitionSetImpl;->getOrdering()I

    move-result v0

    return v0
.end method

.method public removeTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/Transition;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 119
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mImpl:Landroid/support/transition/TransitionImpl;

    check-cast v0, Landroid/support/transition/TransitionSetImpl;

    iget-object v1, p1, Landroid/support/transition/Transition;->mImpl:Landroid/support/transition/TransitionImpl;

    invoke-interface {v0, v1}, Landroid/support/transition/TransitionSetImpl;->removeTransition(Landroid/support/transition/TransitionImpl;)Landroid/support/transition/TransitionSetImpl;

    .line 120
    return-object p0
.end method

.method public setOrdering(I)Landroid/support/transition/TransitionSet;
    .locals 1
    .param p1, "ordering"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/transition/TransitionSet;->mImpl:Landroid/support/transition/TransitionImpl;

    check-cast v0, Landroid/support/transition/TransitionSetImpl;

    invoke-interface {v0, p1}, Landroid/support/transition/TransitionSetImpl;->setOrdering(I)Landroid/support/transition/TransitionSetImpl;

    .line 89
    return-object p0
.end method
