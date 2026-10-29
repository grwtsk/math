# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Measurability.Variantae2da0d617455c942a41f6a8cbbe84956011cbda887bc215bddad0b1be735054

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f77fdad76fefa304fcf77e0b6fe4e5d885ab5df` · SHA-256 `ae2da0d617455c942a41f6a8cbbe84956011cbda887bc215bddad0b1be735054`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/

import Mathlib.Tactic.Measurability.Init
import Mathlib.Algebra.Group.Defs

/-!
# Measurability

We define the `measurability` tactic using `aesop`. -/

open Lean.Parser.Tactic (optConfig)

attribute [aesop (rule_sets := [Measurable]) unfold norm] Function.comp
-- FIXME: `npowRec` is an internal implementation detail,
-- and `aesop` certainly should not know about it.
-- If anyone is working on the `measurability` tactic, please try to fix this!
attribute [aesop (rule_sets := [Measurable]) norm] npowRec

/--
The `measurability` attribute used to tag measurability statements for the `measurability` tactic.
-/
macro "measurability" : attr =>
  `(attr|aesop safe apply (rule_sets := [$(Lean.mkIdent `Measurable):ident]))

/--
The tactic `measurability` solves goals of the form `Measurable f`, `AEMeasurable f`,
`StronglyMeasurable f`, `AEStronglyMeasurable f μ`, or `MeasurableSet s` by applying lemmas tagged
with the `measurability` user attribute. -/
macro "measurability" : tactic =>
  `(tactic| aesop (config := { terminal := true })
    (rule_sets := [$(Lean.mkIdent `Measurable):ident]))

/--
The tactic `measurability?` solves goals of the form `Measurable f`, `AEMeasurable f`,
`StronglyMeasurable f`, `AEStronglyMeasurable f μ`, or `MeasurableSet s` by applying lemmas tagged
with the `measurability` user attribute, and suggests a faster proof script that can be substituted
for the tactic call in case of success. -/
macro "measurability?" : tactic =>
  `(tactic| aesop? (config := { terminal := true })
    (rule_sets := [$(Lean.mkIdent `Measurable):ident]))

-- Todo: implement `measurability!` and `measurability!?` and add configuration,
-- original syntax was (same for the missing `measurability` variants):
syntax (name := measurability!) "measurability!" : tactic
syntax (name := measurability!?) "measurability!?" : tactic
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=38132cba1b7d3f94674d0d7d6c0bd400b5bacb1b5fa3dc0f419cc39bc6e28684 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Measurability/Variantae2da0d617455c942a41f6a8cbbe84956011cbda887bc215bddad0b1be735054.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
