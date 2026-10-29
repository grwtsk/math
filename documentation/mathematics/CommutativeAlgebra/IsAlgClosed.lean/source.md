# Is Alg Closed — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a7bcbba08f5007ff0c0bd9a5af61c15d39e619bf` · SHA-256 `5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.FieldTheory.IsAlgClosed.Basic
import Mathlib.RingTheory.SimpleModule.WedderburnArtin

/-!
# Wedderburn-Artin Theorem over an algebraically closed field
-/

theorem IsSimpleRing.exists_algEquiv_matrix_of_isAlgClosed (F R) [Field F] [IsAlgClosed F]
    [Ring R] [IsSimpleRing R] [Algebra F R] [FiniteDimensional F R] :
    ∃ (n : ℕ) (_ : NeZero n), Nonempty (R ≃ₐ[F] Matrix (Fin n) (Fin n) F) :=
  have := IsArtinianRing.of_finite F R
  have ⟨n, hn, D, _, _, _, ⟨e⟩⟩ := exists_algEquiv_matrix_divisionRing_finite F R
  ⟨n, hn, ⟨e.trans <| .mapMatrix <| .symm <| .ofBijective (Algebra.ofId F D)
    IsAlgClosed.algebraMap_bijective_of_isIntegral⟩⟩
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc02f35999fd60dd8c96319a347402cd19858ed879eb80ff9e2fc107e530a507 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/IsAlgClosed/Variant5286043ef554f614099943df75ee6c53ac2cad1f182dab4a35b8f505fe2d61d1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
