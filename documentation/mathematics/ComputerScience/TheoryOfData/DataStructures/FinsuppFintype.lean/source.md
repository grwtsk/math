# Finsupp Fintype — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1af258ead54dd8288f9ab57bda53ec9b8aa42918` · SHA-256 `4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Anne Baanen. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen, Alex J. Best
-/
import Mathlib.Data.Finsupp.Single
import Mathlib.Data.Fintype.BigOperators

/-!

# Finiteness and infiniteness of `Finsupp`

Some lemmas on the combination of `Finsupp`, `Fintype` and `Infinite`.

-/

variable {ι α : Type*} [DecidableEq ι] [Fintype ι] [Zero α] [Fintype α]

noncomputable instance Finsupp.fintype : Fintype (ι →₀ α) :=
  Fintype.ofEquiv _ Finsupp.equivFunOnFinite.symm

instance Finsupp.infinite_of_left [Nontrivial α] [Infinite ι] : Infinite (ι →₀ α) :=
  let ⟨_, hm⟩ := exists_ne (0 : α)
  Infinite.of_injective _ <| Finsupp.single_left_injective hm

instance Finsupp.infinite_of_right [Infinite α] [Nonempty ι] : Infinite (ι →₀ α) :=
  Infinite.of_injective (fun i => Finsupp.single (Classical.arbitrary ι) i)
    (Finsupp.single_injective (Classical.arbitrary ι))

variable (ι α) in
@[simp] lemma Fintype.card_finsupp : card (ι →₀ α) = card α ^ card ι := by
  simp [card_congr Finsupp.equivFunOnFinite]
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=44278bfa0e944ca9a6f33192e676c107b1d54b07f17698998d06c657b138ad3c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Fintype/Variant4cb960a066984ba9a14a706363e3a533882523bc133b5e47ffc997a748672362.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
