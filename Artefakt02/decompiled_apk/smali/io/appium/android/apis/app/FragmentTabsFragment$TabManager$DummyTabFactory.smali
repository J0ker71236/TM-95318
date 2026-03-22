.class Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$DummyTabFactory;
.super Ljava/lang/Object;
.source "FragmentTabsFragment.java"

# interfaces
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DummyTabFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$DummyTabFactory;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 120
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$DummyTabFactory;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 121
    .local v0, "v":Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 123
    return-object v0
.end method
