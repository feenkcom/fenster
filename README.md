# fenster
```
das Fenster (Ger.) – a window
```

Contains reusable components to deal with various aspects of the native windows

## Geometry

When working with native windows we should handle two types of geometrical measurements: logical and physical.
For example, when creating a rendering surface, the size of that surface should be given in physical pixels, however when creating a window itself, the size is given in logical pixels.

The relation between logical and physical pixels is defined by the display scale factor which depends on the user OS settings and display's pixel density.

`fenster` models logical and physical metrics as first class objects and allows users to convert between them:

```smalltalk
logicalSize := FensterLogicalSize
  width: 400
  height: 300.
scaleFactor := 2.
  
physicalSize := logicalSize asPhysical: scaleFactor.
self assert: physicalSize asPoint equals: 800@600.
logicalSize := physicalSize asLogical: scaleFactor.
self assert: logicalSize asPoint equals: 400@300.
```
