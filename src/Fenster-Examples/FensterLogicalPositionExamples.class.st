Class {
	#name : #FensterLogicalPositionExamples,
	#superclass : #Object,
	#category : #'Fenster-Examples'
}

{ #category : #accessing }
FensterLogicalPositionExamples >> asLogicalFromPhysical [
	<gtExample>
	| aLogicalPosition |
	
	aLogicalPosition := ((self fromPoint: 100@200) asPhysical: 2) asLogical: 2.
	self assert: aLogicalPosition asPoint equals: 100@200.

	^ aLogicalPosition
]

{ #category : #accessing }
FensterLogicalPositionExamples >> asPhysical [
	<gtExample>
	| aLogicalPosition aPhysicalPosition |
	
	aLogicalPosition := self fromPoint: 100@200.
	aPhysicalPosition := aLogicalPosition asPhysical: 2.
	self assert: aPhysicalPosition asPoint equals: 200@400.

	^ aPhysicalPosition
]

{ #category : #accessing }
FensterLogicalPositionExamples >> default [
	<gtExample>
	| aPosition |
	
	aPosition := FensterLogicalPosition new.
	self assert: aPosition isZero.
	self assert: aPosition x equals: 0.
	self assert: aPosition y equals: 0.
	
	^ aPosition
]

{ #category : #accessing }
FensterLogicalPositionExamples >> fromPoint [
	<gtExample>
	| aPosition |
	
	aPosition := self fromPoint: 100@200.
	
	^ aPosition
]

{ #category : #accessing }
FensterLogicalPositionExamples >> fromPoint: aPoint [
	<gtExample>
	| aPosition |
	
	aPosition := FensterLogicalPosition fromPoint: aPoint.
	self assert: aPosition isZero not.
	self assert: aPosition x equals: aPoint x.
	self assert: aPosition y equals: aPoint y.
	self assert: aPosition asPoint equals: aPoint.
	
	^ aPosition
]
