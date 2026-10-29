# Complete source: GRWTSK.Algebra.GroupTheory.ToAdditiveIrredDef.Variant00a4c4517ccee525e8e43dcf943caad88539423d1f5b6521c3d1c8b622c050be

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ce52c86294ede05a87dd5be03eec6ebbebd18a0` · SHA-256 `00a4c4517ccee525e8e43dcf943caad88539423d1f5b6521c3d1c8b622c050be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Tactic.IrreducibleDef
import Mathlib.Algebra.Group.Defs

set_option autoImplicit true
@[to_additive]
irreducible_def mul_conj [Group G] (a b : G) := a⁻¹ * b * a

example [AddGroup A] (a b : A) : add_conj a b = (-a) + b + a :=
  add_conj_def a b
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7c371f12b9d5d8d9e3d68e1b2c3d69751523ed4aa40b99b3330982bb039b19de -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/ToAdditiveIrredDef/Variant00a4c4517ccee525e8e43dcf943caad88539423d1f5b6521c3d1c8b622c050be.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
