# Half Plane — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d2cf605ce5148d57b3b05ffcc424d80e1a9cc261` · SHA-256 `51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Michael Stoll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Stoll
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Topology.Instances.EReal.Lemmas

/-!
# Half-planes in ℂ are open

We state that open left, right, upper and lower half-planes in the complex numbers are open sets,
where the bounding value of the real or imaginary part is given by an `EReal` `x`.
So this includes the full plane and the empty set for `x = ⊤`/`x = ⊥`.
-/

namespace Complex

/-- An open left half-plane (with boundary real part given by an `EReal`) is an open set
in the complex plane. -/
lemma isOpen_re_lt_EReal (x : EReal) : IsOpen {z : ℂ | z.re < x} :=
  isOpen_lt (EReal.continuous_coe_iff.mpr continuous_re) continuous_const

/-- An open right half-plane (with boundary real part given by an `EReal`) is an open set
in the complex plane. -/
lemma isOpen_re_gt_EReal (x : EReal) : IsOpen {z : ℂ | x < z.re} :=
  isOpen_lt continuous_const <| EReal.continuous_coe_iff.mpr continuous_re

/-- An open lower half-plane (with boundary imaginary part given by an `EReal`) is an open set
in the complex plane. -/
lemma isOpen_im_lt_EReal (x : EReal) : IsOpen {z : ℂ | z.im < x} :=
  isOpen_lt (EReal.continuous_coe_iff.mpr continuous_im) continuous_const

/-- An open upper half-plane (with boundary imaginary part given by an `EReal`) is an open set
in the complex plane. -/
lemma isOpen_im_gt_EReal (x : EReal) : IsOpen {z : ℂ | x < z.im} :=
  isOpen_lt continuous_const <| EReal.continuous_coe_iff.mpr continuous_im

end Complex
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=04e94a6316902b07d618caf8bf73b49dce4041fa4aefa74df87a32b076a14c40 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/HalfPlane/Variant51a5d8af571e1262b94eb8df2d582f9ae967f3d3bf9f058d93f5d264733bd3e4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
