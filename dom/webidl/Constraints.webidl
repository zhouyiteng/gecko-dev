/* -*- Mode: IDL; tab-width: 2; indent-tabs-mode: nil; c-basic-offset: 2 -*- */
/* This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this file,
 * You can obtain one at http://mozilla.org/MPL/2.0/.
 */

// These dictionaries need to be in a separate file from their use in unions
// in MediaTrackConstraintSet.webidl due to a webidl compiler limitation.

// These enums are in the spec even though they're not used directly in the API
// due to https://www.w3.org/Bugs/Public/show_bug.cgi?id=19936
// Their binding code is quite useful though, and is used in the implementation.

enum VideoFacingModeEnum {
    "user",
    "environment",
    "left",
    "right"
};

enum MediaSourceEnum {
    "camera",
    "screen",
    "application",
    "window",
    "browser",
    "microphone",
    "other"
};

dictionary ConstrainLongRange {
    long min;
    long max;
    long exact;
    long ideal;
};

dictionary ConstrainDoubleRange {
    double min;
    double max;
    double exact;
    double ideal;
};

dictionary ConstrainBooleanParameters {
    boolean exact;
    boolean ideal;
};

dictionary ConstrainDOMStringParameters {
    (DOMString or sequence<DOMString>) exact;
    (DOMString or sequence<DOMString>) ideal;
};
