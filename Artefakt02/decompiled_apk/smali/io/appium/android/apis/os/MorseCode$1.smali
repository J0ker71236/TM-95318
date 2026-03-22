.class Lio/appium/android/apis/os/MorseCode$1;
.super Ljava/lang/Object;
.source "MorseCode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/os/MorseCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/appium/android/apis/os/MorseCode;


# direct methods
.method constructor <init>(Lio/appium/android/apis/os/MorseCode;)V
    .locals 0
    .param p1, "this$0"    # Lio/appium/android/apis/os/MorseCode;

    .line 79
    iput-object p1, p0, Lio/appium/android/apis/os/MorseCode$1;->this$0:Lio/appium/android/apis/os/MorseCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 82
    iget-object v0, p0, Lio/appium/android/apis/os/MorseCode$1;->this$0:Lio/appium/android/apis/os/MorseCode;

    invoke-static {v0}, Lio/appium/android/apis/os/MorseCode;->access$000(Lio/appium/android/apis/os/MorseCode;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Lio/appium/android/apis/os/MorseCodeConverter;->pattern(Ljava/lang/String;)[J

    move-result-object v1

    .line 89
    .local v1, "pattern":[J
    iget-object v2, p0, Lio/appium/android/apis/os/MorseCode$1;->this$0:Lio/appium/android/apis/os/MorseCode;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Lio/appium/android/apis/os/MorseCode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Vibrator;

    .line 90
    .local v2, "vibrator":Landroid/os/Vibrator;
    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 91
    return-void
.end method
