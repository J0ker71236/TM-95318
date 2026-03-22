.class Lio/appium/android/apis/app/PresentationActivity$3;
.super Ljava/lang/Object;
.source "PresentationActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/PresentationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/PresentationActivity;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/PresentationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/PresentationActivity;

    .line 312
    iput-object p1, p0, Lio/appium/android/apis/app/PresentationActivity$3;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 315
    move-object v0, p1

    check-cast v0, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;

    .line 316
    .local v0, "presentation":Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;
    invoke-virtual {v0}, Lio/appium/android/apis/app/PresentationActivity$DemoPresentation;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 317
    .local v1, "displayId":I
    const-string v2, "PresentationActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Presentation on display #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " was dismissed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v2, p0, Lio/appium/android/apis/app/PresentationActivity$3;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-static {v2}, Lio/appium/android/apis/app/PresentationActivity;->access$100(Lio/appium/android/apis/app/PresentationActivity;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    .line 319
    iget-object v2, p0, Lio/appium/android/apis/app/PresentationActivity$3;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-static {v2}, Lio/appium/android/apis/app/PresentationActivity;->access$000(Lio/appium/android/apis/app/PresentationActivity;)Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->notifyDataSetChanged()V

    .line 320
    return-void
.end method
