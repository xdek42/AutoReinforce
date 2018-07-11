.class Landroid/support/transition/ChangeBoundsPort$3;
.super Landroid/animation/AnimatorListenerAdapter;
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
.field final synthetic this$0:Landroid/support/transition/ChangeBoundsPort;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBoundsPort;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/transition/ChangeBoundsPort;

    .prologue
    .line 306
    iput-object p1, p0, Landroid/support/transition/ChangeBoundsPort$3;->this$0:Landroid/support/transition/ChangeBoundsPort;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 310
    return-void
.end method
