# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CoeSort.Varianta6321ae732b4e66276846dbe00faf4bec0ef17eed151ca268d8d29845d47c3fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e771858f6f587e75a10ba6fd34c8506283dff554` · SHA-256 `a6321ae732b4e66276846dbe00faf4bec0ef17eed151ca268d8d29845d47c3fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Johannes Hölzl, Reid Barton, Kim Morrison, Patrick Massot, Kyle Miller,
Minchao Wu, Yury Kudryashov, Floris van Doorn
-/
module

public import Mathlib.Data.Set.Defs

/-!
# Coercing sets to types.

This file defines `Set.Elem s` as the type of all elements of the set `s`.
More advanced theorems about these definitions are located in other files in `Mathlib/Data/Set`.

## Main definitions

- `Set.Elem`: coercion of a set to a type; it is reducibly equal to `{x // x ∈ s}`;
-/

@[expose] public section

namespace Set

universe u v w

variable {α : Type u}

/-- Given the set `s`, `Elem s` is the `Type` of element of `s`.

It is currently an abbreviation so that instance coming from `Subtype` are available.
If you're interested in making it a `def`, as it probably should be,
you'll then need to create additional instances (and possibly prove lemmas about them).
See e.g. `Mathlib/Data/Set/Order.lean`.
-/
@[coe, reducible] def Elem (s : Set α) : Type u := {x // x ∈ s}

/-- Coercion from a set to the corresponding subtype. -/
instance : CoeSort (Set α) (Type u) := ⟨Elem⟩

@[simp] theorem elem_mem {σ α} [Membership σ α] {S : α} :
    ↑{x : σ | x ∈ S} = {x // x ∈ S} :=
  rfl

end Set
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b44c527e4ae3feb5fbb8f93a3241cd4520d9790004b1d7d8014717d36291172f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/CoeSort/Varianta6321ae732b4e66276846dbe00faf4bec0ef17eed151ca268d8d29845d47c3fc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
