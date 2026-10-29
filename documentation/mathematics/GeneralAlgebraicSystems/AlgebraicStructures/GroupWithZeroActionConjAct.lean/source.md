# Group With Zero Action Conj Act — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ab00f148f92f705ae4cd3facc4bbf50cf10dcf9` · SHA-256 `e03b626a3789a92f3892b299d5f17db4a333958a29a38021dd7ff2fa1fb8b7b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.GroupWithZero.Basic
import Mathlib.GroupTheory.GroupAction.ConjAct

/-!
# Conjugation action of a group with zero on itself
-/

assert_not_exists Ring

variable {α G₀ : Type*}

namespace ConjAct
variable [GroupWithZero G₀]

instance : GroupWithZero (ConjAct G₀) := ‹GroupWithZero G₀›

@[simp] lemma ofConjAct_zero : ofConjAct 0 = (0 : G₀) := rfl
@[simp] lemma toConjAct_zero : toConjAct (0 : G₀) = 0 := rfl

instance mulAction₀ : MulAction (ConjAct G₀) G₀ where
  one_smul := by simp [smul_def]
  mul_smul := by simp [smul_def, mul_assoc]

instance smulCommClass₀ [SMul α G₀] [SMulCommClass α G₀ G₀] [IsScalarTower α G₀ G₀] :
    SMulCommClass α (ConjAct G₀) G₀ where
  smul_comm a ug g := by rw [smul_def, smul_def, mul_smul_comm, smul_mul_assoc]

instance smulCommClass₀' [SMul α G₀] [SMulCommClass G₀ α G₀] [IsScalarTower α G₀ G₀] :
    SMulCommClass (ConjAct G₀) α G₀ :=
  haveI := SMulCommClass.symm G₀ α G₀
  .symm ..

end ConjAct
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00c33887dad614cac388e951f22f39ea38a6c418a54ded001ba3fd146bf11b0c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/ConjAct/Variante03b626a3789a92f3892b299d5f17db4a333958a29a38021dd7ff2fa1fb8b7b7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
