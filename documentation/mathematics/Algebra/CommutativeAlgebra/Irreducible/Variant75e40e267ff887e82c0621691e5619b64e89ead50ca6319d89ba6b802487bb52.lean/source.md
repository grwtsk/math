# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Irreducible.Variant75e40e267ff887e82c0621691e5619b64e89ead50ca6319d89ba6b802487bb52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ed2a0ae734c787658cb0fb5b98751e855e18b84` · SHA-256 `ea5b14d7bef9802aba8db9aab24292b4e393696a19827bf31c9453a37176d65b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.MonicIrreducibleOfIrreducibleMap.Variant685c4b33b23aa92033d5ef50415ed9ebce1bfceaf1506a36e5a6c6461aedb399","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"685c4b33b23aa92033d5ef50415ed9ebce1bfceaf1506a36e5a6c6461aedb399","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.MonicIrreducibleOfIrreducibleMap.Variant685c4b33b23aa92033d5ef50415ed9ebce1bfceaf1506a36e5a6c6461aedb399","mathematical_subject":"Algebra.Polynomials","original_sha256":"685c4b33b23aa92033d5ef50415ed9ebce1bfceaf1506a36e5a6c6461aedb399","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Polynomial/Eval/Irreducible.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
import Mathlib.Algebra.Polynomial.Eval.Coeff
import Mathlib.Algebra.Polynomial.Eval.Degree
import Mathlib.Algebra.Prime.Defs

/-!
# Mapping irreducible polynomials

## Main results

* `Monic.irreducible_of_irreducible_map`: we can prove a monic polynomial is irreducible
  by mapping it to another integral domain and checking for irreducibility there.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.MonicIrreducibleOfIrreducibleMap.Variant685c4b33b23aa92033d5ef50415ed9ebce1bfceaf1506a36e5a6c6461aedb399

noncomputable section

open Finset AddMonoidAlgebra

open Polynomial

namespace Polynomial

universe u v w y

variable {R : Type u} {S : Type v} {T : Type w} {ι : Type y} {a b : R} {m n : ℕ}

section
variable [CommRing R] [IsDomain R] [CommRing S] [IsDomain S] (φ : R →+* S)

/-- A polynomial over an integral domain `R` is irreducible if it is monic and
irreducible after mapping into an integral domain `S`.

A special case of this lemma is that a polynomial over `ℤ` is irreducible if
it is monic and irreducible over `ℤ/pℤ` for some prime `p`.
-/
lemma Monic.irreducible_of_irreducible_map (f : R[X]) (h_mon : Monic f)
    (h_irr : Irreducible (f.map φ)) : Irreducible f := by
  refine ⟨h_irr.not_isUnit ∘ IsUnit.map (mapRingHom φ), fun a b h => ?_⟩
  dsimp [Monic] at h_mon
  have q := (leadingCoeff_mul a b).symm
  rw [← h, h_mon] at q
  refine (h_irr.isUnit_or_isUnit <|
    (congr_arg (Polynomial.map φ) h).trans (Polynomial.map_mul φ)).imp ?_ ?_ <;>
      apply isUnit_of_isUnit_leadingCoeff_of_isUnit_map <;>
    apply isUnit_of_mul_eq_one
  · exact q
  · rw [mul_comm]
    exact q

end
end Polynomial
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e68c3945bc85bb03645308162e8f07741407c80348020f3a79dc76c3a6d1b13 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Irreducible/Variant75e40e267ff887e82c0621691e5619b64e89ead50ca6319d89ba6b802487bb52.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
