.class Lio/appium/android/apis/content/PickContact$ResultDisplayer;
.super Ljava/lang/Object;
.source "PickContact.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/content/PickContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResultDisplayer"
.end annotation


# instance fields
.field mMimeType:Ljava/lang/String;

.field mMsg:Ljava/lang/String;

.field final synthetic this$0:Lio/appium/android/apis/content/PickContact;


# direct methods
.method constructor <init>(Lio/appium/android/apis/content/PickContact;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/content/PickContact;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lio/appium/android/apis/content/PickContact$ResultDisplayer;->this$0:Lio/appium/android/apis/content/PickContact;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lio/appium/android/apis/content/PickContact$ResultDisplayer;->mMsg:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lio/appium/android/apis/content/PickContact$ResultDisplayer;->mMimeType:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lio/appium/android/apis/content/PickContact$ResultDisplayer;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Lio/appium/android/apis/content/PickContact$ResultDisplayer;->this$0:Lio/appium/android/apis/content/PickContact;

    iput-object p0, v1, Lio/appium/android/apis/content/PickContact;->mPendingResult:Lio/appium/android/apis/content/PickContact$ResultDisplayer;

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lio/appium/android/apis/content/PickContact;->startActivityForResult(Landroid/content/Intent;I)V

    .line 63
    return-void
.end method
