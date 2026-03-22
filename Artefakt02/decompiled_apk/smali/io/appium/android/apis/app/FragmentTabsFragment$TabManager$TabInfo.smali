.class final Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;
.super Ljava/lang/Object;
.source "FragmentTabsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/FragmentTabsFragment$TabManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final args:Landroid/os/Bundle;

.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private fragment:Landroid/app/Fragment;

.field private final tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "_tag"    # Ljava/lang/String;
    .param p3, "_args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 104
    .local p2, "_class":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->tag:Ljava/lang/String;

    .line 106
    iput-object p2, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->clss:Ljava/lang/Class;

    .line 107
    iput-object p3, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->args:Landroid/os/Bundle;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

    .line 98
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->fragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$002(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;Landroid/app/Fragment;)Landroid/app/Fragment;
    .locals 0
    .param p0, "x0"    # Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;
    .param p1, "x1"    # Landroid/app/Fragment;

    .line 98
    iput-object p1, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->fragment:Landroid/app/Fragment;

    return-object p1
.end method

.method static synthetic access$100(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

    .line 98
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Ljava/lang/Class;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

    .line 98
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$300(Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;

    .line 98
    iget-object v0, p0, Lio/appium/android/apis/app/FragmentTabsFragment$TabManager$TabInfo;->args:Landroid/os/Bundle;

    return-object v0
.end method
