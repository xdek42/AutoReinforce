.class Landroid/support/transition/FadePort$1;
.super Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.source "FadePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/FadePort;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCanceled:Z

.field mPausedAlpha:F

.field final synthetic this$0:Landroid/support/transition/FadePort;

.field final synthetic val$endView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/support/transition/FadePort;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/transition/FadePort;

    .prologue
    .line 155
    iput-object p1, p0, Landroid/support/transition/FadePort$1;->this$0:Landroid/support/transition/FadePort;

    iput-object p2, p0, Landroid/support/transition/FadePort$1;->val$endView:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/transition/TransitionPort$TransitionListenerAdapter;-><init>()V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/FadePort$1;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/support/transition/TransitionPort;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/transition/FadePort$1;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/transition/FadePort$1;->mCanceled:Z

    .line 164
    return-void
.end method

.method public onTransitionEnd(Landroid/support/transition/TransitionPort;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 168
    iget-boolean v0, p0, Landroid/support/transition/FadePort$1;->mCanceled:Z

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Landroid/support/transition/FadePort$1;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 171
    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/TransitionPort;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 175
    iget-object v0, p0, Landroid/support/transition/FadePort$1;->val$endView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Landroid/support/transition/FadePort$1;->mPausedAlpha:F

    .line 176
    iget-object v0, p0, Landroid/support/transition/FadePort$1;->val$endView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 177
    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/TransitionPort;)V
    .locals 2
    .param p1, "transition"    # Landroid/support/transition/TransitionPort;

    .prologue
    .line 181
    iget-object v0, p0, Landroid/support/transition/FadePort$1;->val$endView:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/FadePort$1;->mPausedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 182
    return-void
.end method
