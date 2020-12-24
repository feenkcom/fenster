Class {
	#name : #GtFensterLogicalSize,
	#superclass : #GtFensterSize,
	#category : #'Fenster-Geometry'
}

{ #category : #'api - converting' }
GtFensterLogicalSize >> asLogical: aScaleFactor [
	^ self
]

{ #category : #'api - converting' }
GtFensterLogicalSize >> asPhysical: aScaleFactor [
	<return: #GtFensterPhysicalSize>
	| aWidth aHeight |
	
	(aScaleFactor <= 0 or: [ aScaleFactor isInfinite ])
		ifTrue: [ (GtFensterWrongScaleFactor scaleFactor: aScaleFactor) signal ].

	aWidth := self width * aScaleFactor.
	aHeight := self height * aScaleFactor.

	^ GtFensterPhysicalSize width: aWidth height: aHeight
]
