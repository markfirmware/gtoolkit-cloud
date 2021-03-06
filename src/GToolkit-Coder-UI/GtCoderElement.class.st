"
I am an abstract class.
I am an ${class:BlElement}$.
I provide basic ${class:TBrLayoutResizable}$ methods.
See my ${class:GtCoderElement|expanded|show=#gtSubclassesFor:}$ for concrete implementations:
"
Class {
	#name : #GtCoderElement,
	#superclass : #BlElement,
	#traits : 'TBrLayoutResizable',
	#classTraits : 'TBrLayoutResizable classTrait',
	#category : #'GToolkit-Coder-UI-Basic'
}

{ #category : #initialization }
GtCoderElement >> initialize [
	super initialize.
	
	self matchParent
]
