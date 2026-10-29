# Transfer Instance Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2a82b75368db68218646ca6fa0bd5f53f2c223b` · SHA-256 `2ec00e45bfb083c6e55a3ec1a67f867adf45340752bfaf9e56614cc84e916844`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
module

public import Mathlib.Topology.Homeomorph.Defs

/-!
# Transfer topological structure across `Equiv`s

We show how to transport a topological space structure across an `Equiv` and prove that this
make the equivalence a homeomorphism between the original space and the transported topology.

-/

@[expose] public section

variable {α β : Type*}

namespace Equiv

-- See note [instance transfer via equivalence]
/-- Transfer a `TopologicalSpace` across an `Equiv` -/
protected abbrev topologicalSpace [TopologicalSpace β] (e : α ≃ β) :
    TopologicalSpace α :=
  .induced e.toFun ‹_›

/-- An equivalence `e : α ≃ β` gives a homeomorphism `α ≃ₜ β` where the topological space structure
on `α` is the one obtained by transporting the topological space structure on `β` back along `e`. -/
def homeomorph [TopologicalSpace β] (e : α ≃ β) :
    letI := e.topologicalSpace
    α ≃ₜ β :=
  letI := e.topologicalSpace
  { e with
    continuous_toFun := continuous_induced_dom
    continuous_invFun := by
      simp only [Equiv.invFun_as_coe]
      convert! continuous_coinduced_rng
      rw [e.coinduced_symm]
      rfl }

end Equiv
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9f4cd68a3b7d0640a96867cdb6f1d3a14b7e2cba03e1891609ddcd5f460cf5b8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/TransferInstance/Variant2ec00e45bfb083c6e55a3ec1a67f867adf45340752bfaf9e56614cc84e916844.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
