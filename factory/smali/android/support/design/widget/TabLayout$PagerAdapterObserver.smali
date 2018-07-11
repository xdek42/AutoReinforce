.class Landroid/support/design/widget/TabLayout$PagerAdapterObserver;
.super Landroid/database/DataSetObserver;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerAdapterObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TabLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TabLayout;)V
    .locals 0

    .prologue
    .line 2206
    iput-object p1, p0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 2207
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2211
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    .line 2212
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;->this$0:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    .line 2217
    return-void
.end method
