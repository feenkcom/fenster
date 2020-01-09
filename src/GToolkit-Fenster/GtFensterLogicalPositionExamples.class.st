Class {
	#name : #GtFensterLogicalPositionExamples,
	#superclass : #GtFensterPositionExamples,
	#category : #'GToolkit-Fenster-Examples'
}

{ #category : #accessing }
GtFensterLogicalPositionExamples >> default [
	<gtExample>
	| aPosition |
	
	aPosition := GtFensterLogicalPosition new.
	self assert: aPosition isZero.
	self assert: aPosition x equals: 0.
	self assert: aPosition y equals: 0.
	
	^ aPosition
]
