Class {
	#name : #BaselineOfGToolkitFenster,
	#superclass : #BaselineOf,
	#category : #BaselineOfGToolkitFenster
}

{ #category : #baselines }
BaselineOfGToolkitFenster >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec
			baseline: 'GToolkitExamplesEngine' with: [ spec repository: 'github://feenkcom/gtoolkit-examples/src' ].
		spec
			package: 'GToolkit-Fenster' with: [ spec requires: #(GToolkitExamplesEngine) ] ]
]
