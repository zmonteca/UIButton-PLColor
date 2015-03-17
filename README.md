# UIButton-PLColor
iOS UIButton Category

== Description ==

Set the background color of any button by specifying a UIColor instead of a UIImage. Simple creates a small square bitmap image and assigns the color to it.

== How To ==

1. Import header into your Prefix.pch
1. Usage
```
    [button setBackgroundColor:uiTextColor forState:UIControlStateDisabled];
```
1. Optional forStates to use:
```
UIControlStateNormal
UIControlStateHighlighted
UIControlStateDisabled
UIControlStateSelected
```
