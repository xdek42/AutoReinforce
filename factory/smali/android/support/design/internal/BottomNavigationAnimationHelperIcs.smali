.class Landroid/support/design/internal/BottomNavigationAnimationHelperIcs;
.super Landroid/support/design/internal/BottomNavigationAnimationHelperBase;
.source "BottomNavigationAnimationHelperIcs.java"


# static fields
.field private static final ACTIVE_ANIMATION_DURATION_MS:J = 0x73L


# instance fields
.field private final mSet:Landroid/support/transition/TransitionSet;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/support/design/internal/BottomNavigationAnimationHelperBase;-><init>()V

    .line 31
    new-instance v1, Landroid/support/transition/AutoTransition;

    invoke-direct {v1}, Landroid/support/transition/AutoTransition;-><init>()V

    iput-object v1, p0, Landroid/support/design/internal/BottomNavigationAnimationHelperIcs;->mSet:Landroid/support/transition/TransitionSet;

    .line 32
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationAnimationHelperIcs;->mSet:Landroid/support/transition/TransitionSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->setOrdering(I)Landroid/support/transition/TransitionSet;

    .line 33
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationAnimationHelperIcs;->mSet:Landroid/support/transition/TransitionSet;

    const-wide/16 v2, 0x73

    invoke-virtual {v1, v2, v3}, Landroid/support/transition/TransitionSet;->setDuration(J)Landroid/support/transition/Transition;

    .line 34
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationAnimationHelperIcs;->mSet:Landroid/support/transition/TransitionSet;

    new-instance v2, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroid/support/v4/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/support/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/support/transition/Transition;

    .line 35
    new-instance v0, Landroid/support/design/internal/TextScale;

    invoke-direct {v0}, Landroid/support/design/internal/TextScale;-><init>()V

    .line 36
    .local v0, "textScale":Landroid/support/design/internal/TextScale;
    iget-object v1, p0, Landroid/support/design/internal/BottomNavigationAnimationHelperIcs;->mSet:Landroid/support/transition/TransitionSet;

    invoke-virtual {v1, v0}, Landroid/support/transition/TransitionSet;->addTransition(Landroid/support/transition/Transition;)Landroid/support/transition/TransitionSet;

    .line 37
    return-void
.end method


# virtual methods
.method beginDelayedTransition(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    .line 40
    iget-object v0, p0, Landroid/support/design/internal/BottomNavigationAnimationHelperIcs;->mSet:Landroid/support/transition/TransitionSet;

    invoke-static {p1, v0}, Landroid/support/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/support/transition/Transition;)V

    .line 41
    return-void
.end method
