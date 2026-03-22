.class Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;
.super Ljava/lang/Object;
.source "GameControllerInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/appium/android/apis/view/GameControllerInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputDeviceState"
.end annotation


# instance fields
.field private final mAxes:[I

.field private final mAxisValues:[F

.field private final mDevice:Landroid/view/InputDevice;

.field private final mKeys:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/view/InputDevice;)V
    .locals 8
    .param p1, "device"    # Landroid/view/InputDevice;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mDevice:Landroid/view/InputDevice;

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "numAxes":I
    invoke-virtual {p1}, Landroid/view/InputDevice;->getMotionRanges()Ljava/util/List;

    move-result-object v1

    .line 217
    .local v1, "ranges":Ljava/util/List;, "Ljava/util/List<Landroid/view/InputDevice$MotionRange;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputDevice$MotionRange;

    .line 218
    .local v3, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v3}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v4

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_0

    .line 219
    add-int/lit8 v0, v0, 0x1

    .line 221
    .end local v3    # "range":Landroid/view/InputDevice$MotionRange;
    :cond_0
    goto :goto_0

    .line 223
    :cond_1
    new-array v2, v0, [I

    iput-object v2, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxes:[I

    .line 224
    new-array v2, v0, [F

    iput-object v2, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxisValues:[F

    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputDevice$MotionRange;

    .line 227
    .local v4, "range":Landroid/view/InputDevice$MotionRange;
    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_2

    .line 228
    iget-object v5, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxes:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    invoke-virtual {v4}, Landroid/view/InputDevice$MotionRange;->getAxis()I

    move-result v7

    aput v7, v5, v2

    move v2, v6

    .line 230
    .end local v4    # "range":Landroid/view/InputDevice$MotionRange;
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_2
    goto :goto_1

    .line 232
    :cond_3
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v3, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    .line 233
    return-void
.end method

.method static synthetic access$100(Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;)Landroid/view/InputDevice;
    .locals 1
    .param p0, "x0"    # Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;

    .line 206
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mDevice:Landroid/view/InputDevice;

    return-object v0
.end method

.method private static isGameKey(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 319
    const/16 v0, 0x3e

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 328
    invoke-static {p0}, Landroid/view/KeyEvent;->isGamepadButton(I)Z

    move-result v0

    return v0

    .line 326
    :cond_0
    :pswitch_0
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getAxis(I)I
    .locals 1
    .param p1, "axisIndex"    # I

    .line 244
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getAxisCount()I
    .locals 1

    .line 240
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxes:[I

    array-length v0, v0

    return v0
.end method

.method public getAxisValue(I)F
    .locals 1
    .param p1, "axisIndex"    # I

    .line 248
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxisValues:[F

    aget v0, v0, p1

    return v0
.end method

.method public getDevice()Landroid/view/InputDevice;
    .locals 1

    .line 236
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mDevice:Landroid/view/InputDevice;

    return-object v0
.end method

.method public getKeyCode(I)I
    .locals 1
    .param p1, "keyIndex"    # I

    .line 256
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    return v0
.end method

.method public getKeyCount()I
    .locals 1

    .line 252
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public isKeyPressed(I)Z
    .locals 1
    .param p1, "keyIndex"    # I

    .line 260
    iget-object v0, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onJoystickMotion(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .local v0, "message":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mDevice:Landroid/view/InputDevice;

    invoke-virtual {v1}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - Joystick Motion:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v1

    .line 295
    .local v1, "historySize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxes:[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 296
    aget v3, v3, v2

    .line 297
    .local v3, "axis":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    .line 298
    .local v4, "value":F
    iget-object v5, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mAxisValues:[F

    aput v4, v5, v2

    .line 299
    const-string v5, "  "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/view/MotionEvent;->axisToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const/4 v5, 0x0

    .local v5, "historyPos":I
    :goto_1
    if-ge v5, v1, :cond_0

    .line 303
    invoke-virtual {p1, v3, v5}, Landroid/view/MotionEvent;->getHistoricalAxisValue(II)F

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 304
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 308
    .end local v5    # "historyPos":I
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 309
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .end local v3    # "axis":I
    .end local v4    # "value":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    .end local v2    # "i":I
    :cond_1
    const-string v2, "GameControllerInput"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v2, 0x1

    return v2
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 264
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 265
    .local v0, "keyCode":I
    invoke-static {v0}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->isGameKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 267
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "symbolicName":Ljava/lang/String;
    iget-object v3, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    const-string v3, "GameControllerInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mDevice:Landroid/view/InputDevice;

    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - Key Down: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    .end local v1    # "symbolicName":Ljava/lang/String;
    :cond_0
    return v2

    .line 273
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 277
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 278
    .local v0, "keyCode":I
    invoke-static {v0}, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->isGameKey(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 280
    .local v1, "index":I
    if-ltz v1, :cond_0

    .line 281
    invoke-static {v0}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    .line 282
    .local v3, "symbolicName":Ljava/lang/String;
    iget-object v4, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mKeys:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 283
    const-string v2, "GameControllerInput"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lio/appium/android/apis/view/GameControllerInput$InputDeviceState;->mDevice:Landroid/view/InputDevice;

    invoke-virtual {v5}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - Key Up: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v3    # "symbolicName":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 287
    .end local v1    # "index":I
    :cond_1
    return v2
.end method
