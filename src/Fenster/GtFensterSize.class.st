Class {
	#name : #GtFensterSize,
	#superclass : #Object,
	#instVars : [
		'width',
		'height'
	],
	#category : #'Fenster-Geometry'
}

{ #category : #'instance creation' }
GtFensterSize class >> fromPoint: aPoint [
	^ self width: aPoint x height: aPoint y
]

{ #category : #'instance creation' }
GtFensterSize class >> width: aWidth height: aHeight [
	^ self new initializeWidth: aWidth height: aHeight
]

{ #category : #comparing }
GtFensterSize >> = anObject [
	"Answer whether the receiver and anObject represent the same object."

	self == anObject
		ifTrue: [ ^ true ].
	self class = anObject class
		ifFalse: [ ^ false ].
	^ height = anObject height and: [ width = anObject width ]
]

{ #category : #'api - converting' }
GtFensterSize >> asLogical: aScaleFactor [
	<return: #GtFensterLogicalSize>
	
	^ self subclassResponsibility
]

{ #category : #'api - converting' }
GtFensterSize >> asPhysical: aScaleFactor [
	<return: #GtFensterPhysicalSize>
	
	^ self subclassResponsibility
]

{ #category : #'api - converting' }
GtFensterSize >> asPoint [
	<return: #Point>

	^ self width @ self height
]

{ #category : #comparing }
GtFensterSize >> hash [
	"Answer an integer value that is related to the identity of the receiver."

	^ height hash bitXor: width hash
]

{ #category : #accessing }
GtFensterSize >> height [
	<return: #Number>

	^ height
]

{ #category : #initialization }
GtFensterSize >> initialize [
	super initialize.
	
	width := 0.
	height := 0
]

{ #category : #initialization }
GtFensterSize >> initializeWidth: aWidth height: aHeight [
	width := aWidth.
	height := aHeight
]

{ #category : #testing }
GtFensterSize >> isZero [
	<return: #Boolean>
	
	^ self width isZero or: [ self height isZero ]
]

{ #category : #printing }
GtFensterSize >> printOn: aStream [
	aStream
		nextPutAll: self class name;
		nextPutAll: ' { width: ';
		print: self width;
		nextPutAll: ' height: ';
		print: self height;
		nextPutAll: ' }'
]

{ #category : #accessing }
GtFensterSize >> width [
	<return: #Number>

	^ width
]
