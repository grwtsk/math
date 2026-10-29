# Complete source: GRWTSK.Topology.AlgebraicTopology.Notations.Variant2209eb59a429ed5db9b355fa5d2a093153344538ec2993d188d19b17913a4fbe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6fd035027232c36d79b5924e101ef93e17473342` · SHA-256 `2209eb59a429ed5db9b355fa5d2a093153344538ec2993d188d19b17913a4fbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.AlgebraicTopology.AlternatingFaceMapComplex

/-!

# Notations for the Dold-Kan equivalence

This file defines the notation `K[X] : ChainComplex C ℕ` for the alternating face
map complex of `(X : SimplicialObject C)` where `C` is a preadditive category, as well
as `N[X]` for the normalized subcomplex in the case `C` is an abelian category.

(See `Equivalence.lean` for the general strategy of proof of the Dold-Kan equivalence.)

-/


@[inherit_doc]
scoped[DoldKan] notation "K[" X "]" => AlgebraicTopology.AlternatingFaceMapComplex.obj X

@[inherit_doc]
scoped[DoldKan] notation "N[" X "]" => AlgebraicTopology.NormalizedMooreComplex.obj X
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b9bd97aef376c3ae38862da697f8cd25fd87fd4bcad4c83df8274c72e6b206fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/Notations/Variant2209eb59a429ed5db9b355fa5d2a093153344538ec2993d188d19b17913a4fbe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
