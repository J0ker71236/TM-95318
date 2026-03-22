.class Lio/appium/android/apis/app/PresentationActivity$2;
.super Ljava/lang/Object;
.source "PresentationActivity.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


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

    .line 288
    iput-object p1, p0, Lio/appium/android/apis/app/PresentationActivity$2;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 291
    const-string v0, "PresentationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " added."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity$2;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-static {v0}, Lio/appium/android/apis/app/PresentationActivity;->access$000(Lio/appium/android/apis/app/PresentationActivity;)Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->updateContents()V

    .line 293
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 297
    const-string v0, "PresentationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " changed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity$2;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-static {v0}, Lio/appium/android/apis/app/PresentationActivity;->access$000(Lio/appium/android/apis/app/PresentationActivity;)Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->updateContents()V

    .line 299
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 303
    const-string v0, "PresentationActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " removed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lio/appium/android/apis/app/PresentationActivity$2;->this$0:Lio/appium/android/apis/app/PresentationActivity;

    invoke-static {v0}, Lio/appium/android/apis/app/PresentationActivity;->access$000(Lio/appium/android/apis/app/PresentationActivity;)Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lio/appium/android/apis/app/PresentationActivity$DisplayListAdapter;->updateContents()V

    .line 305
    return-void
.end method
