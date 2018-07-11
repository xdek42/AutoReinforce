.class Landroid/support/transition/ChangeBoundsPort$2;
.super Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.source "ChangeBoundsPort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/ChangeBoundsPort;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroid/support/transition/ChangeBoundsPort;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBoundsPort;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/transition/ChangeBoundsPort;

    .prologue
    .line 278
    iput-object p1, p0, Landroid/support/transition/ChangeBoundsPort$2;->this$0:Landroid/support/transition/ChangeBoundsPort;

    invoke-direct {p0}, Landroid/support/transition/TransitionPort$TransitionListenerAdapter;-><init>()V

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/ChangeBoundsPort$2;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/support/transition/TransitionPort;)V
    .locals 1
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 284
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/ChangeBoundsPort$2;->mCanceled:Z

    .line 285
    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/TransitionPort;)V
    .locals 1
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 289
    iget-boolean v0, p0, Landroid/support/transition/ChangeBoundsPort$2;->mCanceled:Z

    if-nez v0, :cond_0

    .line 292
    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/TransitionPort;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 297
    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/TransitionPort;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 302
    return-void
.end method
