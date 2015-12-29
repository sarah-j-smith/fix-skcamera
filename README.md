# Fix SKCamera

What is wrong with SKCameraNode?

In cases where the SKScene aspect ratio doesn't match that of the device when
you use .AspectFill, the camera node doesn't work.

Instead of being in the middle you have to move it left by the amount of the
scene that is clipped.