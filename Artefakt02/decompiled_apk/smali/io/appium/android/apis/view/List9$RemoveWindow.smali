.class final Lio/appium/android/apis/view/List9$RemoveWindow;
.super Ljava/lang/Object;
.source "List9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/List9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RemoveWindow"
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/view/List9;


# direct methods
.method private constructor <init>(Lio/appium/android/apis/view/List9;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lio/appium/android/apis/view/List9$RemoveWindow;->this$0:Lio/appium/android/apis/view/List9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/appium/android/apis/view/List9;Lio/appium/android/apis/view/List9$1;)V
    .locals 0
    .param p1, "x0"    # Lio/appium/android/apis/view/List9;
    .param p2, "x1"    # Lio/appium/android/apis/view/List9$1;

    .line 44
    invoke-direct {p0, p1}, Lio/appium/android/apis/view/List9$RemoveWindow;-><init>(Lio/appium/android/apis/view/List9;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 46
    iget-object v0, p0, Lio/appium/android/apis/view/List9$RemoveWindow;->this$0:Lio/appium/android/apis/view/List9;

    invoke-static {v0}, Lio/appium/android/apis/view/List9;->access$000(Lio/appium/android/apis/view/List9;)V

    .line 47
    return-void
.end method
