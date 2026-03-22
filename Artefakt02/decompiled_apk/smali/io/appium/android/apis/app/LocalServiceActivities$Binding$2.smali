.class Lio/appium/android/apis/app/LocalServiceActivities$Binding$2;
.super Ljava/lang/Object;
.source "LocalServiceActivities.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/app/LocalServiceActivities$Binding;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/app/LocalServiceActivities$Binding;


# direct methods
.method constructor <init>(Lio/appium/android/apis/app/LocalServiceActivities$Binding;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/app/LocalServiceActivities$Binding;

    .line 146
    iput-object p1, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding$2;->this$0:Lio/appium/android/apis/app/LocalServiceActivities$Binding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 148
    iget-object v0, p0, Lio/appium/android/apis/app/LocalServiceActivities$Binding$2;->this$0:Lio/appium/android/apis/app/LocalServiceActivities$Binding;

    invoke-virtual {v0}, Lio/appium/android/apis/app/LocalServiceActivities$Binding;->doBindService()V

    .line 149
    return-void
.end method
