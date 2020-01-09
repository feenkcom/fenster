Class {
	#name : #BlHostLogicalSize,
	#superclass : #BlHostSize,
	#category : #'GToolkit-Fenster-Geometry'
}

{ #category : #converting }
BlHostLogicalSize >> asPhysical: aScaleFactor [
	| aWidth aHeight |
	
	self
		assert: [ aScaleFactor > 0 and: [ aScaleFactor isInfinite not ] ]
		description: [ 'Scale factor must be a positive non-infinite number' ].

	aWidth := self width * aScaleFactor.
	aHeight := self height * aScaleFactor.

	^ BlHostPhysicalSize width: aWidth height: aHeight
]
