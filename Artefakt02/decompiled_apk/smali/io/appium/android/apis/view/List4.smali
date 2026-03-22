.class public Lio/appium/android/apis/view/List4;
.super Landroid/app/ListActivity;
.source "List4.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/appium/android/apis/view/List4$SpeechView;,
        Lio/appium/android/apis/view/List4$SpeechListAdapter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    new-instance v0, Lio/appium/android/apis/view/List4$SpeechListAdapter;

    invoke-direct {v0, p0, p0}, Lio/appium/android/apis/view/List4$SpeechListAdapter;-><init>(Lio/appium/android/apis/view/List4;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lio/appium/android/apis/view/List4;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 42
    return-void
.end method
