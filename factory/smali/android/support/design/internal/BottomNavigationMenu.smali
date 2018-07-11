.class public final Landroid/support/design/internal/BottomNavigationMenu;
.super Landroid/support/v7/view/menu/MenuBuilder;
.source "BottomNavigationMenu.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field public static final MAX_ITEM_COUNT:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/support/v7/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 3
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 46
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenu;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 51
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenu;->stopDispatchingItemsChanged()V

    .line 52
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/view/menu/MenuBuilder;->addInternal(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 53
    .local v0, "item":Landroid/view/MenuItem;
    instance-of v1, v0, Landroid/support/v7/view/menu/MenuItemImpl;

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 54
    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 56
    :cond_1
    invoke-virtual {p0}, Landroid/support/design/internal/BottomNavigationMenu;->startDispatchingItemsChanged()V

    .line 57
    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 2
    .param p1, "group"    # I
    .param p2, "id"    # I
    .param p3, "categoryOrder"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 41
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "BottomNavigationView does not support submenus"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
