# Fix SKCamera

What the fsck is wrong with SKCamera node?

In cases where the SKScene doesn't fit exactly into the SKView, due to cropping
as happens every time you use .AspectFill, the camera node doesn't work.

Instead of being in the middle you have to move it left by the amount of the
scene that is clipped.  This is very annoying, counter-intuitive and basically
fscked up beyond the telling of it.

Unless I'm missing something.  Which is possible.
