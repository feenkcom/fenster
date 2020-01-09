Class {
	#name : #GtFensterPhysicalSize,
	#superclass : #GtFensterSize,
	#category : #'GToolkit-Fenster-Geometry'
}

{ #category : #'api - converting' }
GtFensterPhysicalSize >> asLogical: aScaleFactor [
	<return: #GtFensterLogicalSize>
	| aWidth aHeight |
	
	(aScaleFactor <= 0 or: [ aScaleFactor isInfinite ])
		ifTrue: [ (GtFensterWrongScaleFactor scaleFactor: aScaleFactor) signal ].

	aWidth := self width / aScaleFactor asFloat.
	aHeight := self height / aScaleFactor asFloat.

	^ GtFensterLogicalSize width: aWidth height: aHeight
]

{ #category : #'api - converting' }
GtFensterPhysicalSize >> asPhysical: aScaleFactor [
	<return: #GtFensterPhysicalSize>
	
	^ self
]
