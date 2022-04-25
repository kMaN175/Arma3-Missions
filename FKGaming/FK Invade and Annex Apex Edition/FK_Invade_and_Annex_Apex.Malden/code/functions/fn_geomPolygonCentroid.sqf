/*/
File: fn_geomPolygonCentroid.sqf
Author: 

	Quiksilver

Last Modified:

	19/11/2017 A3 1.76 by Quiksilver

Description:

	Get Polygon Centroid
____________________________________________________________________________/*/

_count = count _this;
private _vectors = _this select 0;
for '_i' from 1 to (_count - 1) step 1 do {
	_vectors = _vectors vectorAdd (_this select _i);
};
(_vectors vectorMultiply (1 / _count))
