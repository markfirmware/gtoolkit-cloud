Class {
	#name : #CodingMethodSignal,
	#superclass : #BeaconSignal,
	#instVars : [
		'className1',
		'selector'
	],
	#category : #CodingLog
}

{ #category : #accessing }
CodingMethodSignal class >> class: aClass selector: aSelector [
^self new className1: aClass name; selector: aSelector; yourself
]

{ #category : #accessing }
CodingMethodSignal >> className1 [
	^ className1
]

{ #category : #accessing }
CodingMethodSignal >> className1: anObject [
	className1 := anObject
]

{ #category : #accessing }
CodingMethodSignal >> printOneLineContentsOn: stream [
	stream
		nextPutAll: self className1;
		nextPutAll: '>>';
		nextPutAll: self selector
]

{ #category : #accessing }
CodingMethodSignal >> selector [
	^ selector
]

{ #category : #accessing }
CodingMethodSignal >> selector: anObject [
	selector := anObject
]
