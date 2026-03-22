.class public Lio/appium/android/apis/view/List14;
.super Landroid/app/ListActivity;
.source "List14.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/List14$EfficientAdapter;
    }
.end annotation


# static fields
.field private static final DATA:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 140
    sget-object v0, Lio/appium/android/apis/view/Cheeses;->sCheeseStrings:[Ljava/lang/String;

    sput-object v0, Lio/appium/android/apis/view/List14;->DATA:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lio/appium/android/apis/view/List14;->DATA:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 136
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    new-instance v0, Lio/appium/android/apis/view/List14$EfficientAdapter;

    invoke-direct {v0, p0}, Lio/appium/android/apis/view/List14$EfficientAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List14;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    return-void
.end method
