.class Lio/appium/android/apis/app/MessengerServiceActivities$Binding$2;
.super Ljava/lang/Object;
.source "MessengerServiceActivities.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/MessengerServiceActivities$Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/MessengerServiceActivities$Binding;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    .line 166
    iput-object p1, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$2;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 168
    iget-object v0, p0, Lio/appium/android/apis/app/MessengerServiceActivities$Binding$2;->this$0:Lio/appium/android/apis/app/MessengerServiceActivities$Binding;

    invoke-virtual {v0}, Lio/appium/android/apis/app/MessengerServiceActivities$Binding;->doBindService()V

    .line 169
    return-void
.end method
