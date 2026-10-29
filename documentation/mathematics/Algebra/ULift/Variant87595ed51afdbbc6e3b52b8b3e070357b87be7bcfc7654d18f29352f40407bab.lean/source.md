# Complete source: GRWTSK.Algebra.ULift.Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `81abb5a313c42ba18844cadca5effaa01d8de72b` · SHA-256 `87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.GroupWithZero.ULift
import Mathlib.Algebra.Ring.ULift

/-!
# Field instances for `ULift`

This file defines instances for field, semifield and related structures on `ULift` types.

(Recall `ULift α` is just a "copy" of a type `α` in a higher universe.)
-/

universe u
variable {α : Type u}

namespace ULift

instance instNNRatCast [NNRatCast α] : NNRatCast (ULift α) where nnratCast q := up q
instance instRatCast [RatCast α] : RatCast (ULift α) where ratCast q := up q

@[simp, norm_cast] lemma up_nnratCast [NNRatCast α] (q : ℚ≥0) : up (q : α) = q := rfl
@[simp, norm_cast] lemma down_nnratCast [NNRatCast α] (q : ℚ≥0) : down (q : ULift α) = q := rfl
@[simp, norm_cast] lemma up_ratCast [RatCast α] (q : ℚ) : up (q : α) = q := rfl
@[simp, norm_cast] lemma down_ratCast [RatCast α] (q : ℚ) : down (q : ULift α) = q := rfl

instance divisionSemiring [DivisionSemiring α] : DivisionSemiring (ULift α) where
  nnqsmul q x := up (DivisionSemiring.nnqsmul q x.down)
  nnqsmul_def _ _ := congrArg up <| DivisionSemiring.nnqsmul_def _ _
  nnratCast_def _ := congrArg up <| DivisionSemiring.nnratCast_def _

instance semifield [Semifield α] : Semifield (ULift α) :=
  { ULift.divisionSemiring, ULift.commGroupWithZero with }

instance divisionRing [DivisionRing α] : DivisionRing (ULift α) where
  toRing := ring
  __ := groupWithZero
  nnqsmul q x := up (DivisionSemiring.nnqsmul q x.down)
  nnqsmul_def _ _ := congrArg up <| DivisionSemiring.nnqsmul_def _ _
  nnratCast_def _ := congrArg up <| DivisionSemiring.nnratCast_def _
  qsmul q x := up (DivisionRing.qsmul q x.down)
  qsmul_def _ _ := congrArg up <| DivisionRing.qsmul_def _ _
  ratCast_def _ := congrArg up <| DivisionRing.ratCast_def _

instance field [Field α] : Field (ULift α) := {}

end ULift
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5fdf30a62222f19a58b71a6c2a26977ec5137d68fabc5da76ce1e465f9b2a40a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ULift/Variant87595ed51afdbbc6e3b52b8b3e070357b87be7bcfc7654d18f29352f40407bab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
