# Complete source: GRWTSK.Algebra.Algebra.Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6de69cf046d690f871eb593798d59ee98827a67f` · SHA-256 `3981cc94bb09685e8301d227647cc02076f2e8a3b2482c81ac6c2c6b9686e445`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsUnitOfIsIntegralOfNonZeroDivisor.Variant188c646816248aec820e3a25e1be6b66e2f234868f653c18ac0eeedaf02af13b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"188c646816248aec820e3a25e1be6b66e2f234868f653c18ac0eeedaf02af13b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsUnitOfIsIntegralOfNonZeroDivisor.Variant188c646816248aec820e3a25e1be6b66e2f234868f653c18ac0eeedaf02af13b","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"188c646816248aec820e3a25e1be6b66e2f234868f653c18ac0eeedaf02af13b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Artinian/Algebra.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Michal Staromiejski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michal Staromiejski
-/
import Mathlib.RingTheory.Artinian.Ring
import Mathlib.RingTheory.IntegralClosure.Algebra.Defs
import Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic

/-!
# Algebras over artinian rings

In this file we collect results about algebras over artinian rings.
-/


namespace GRWTSK.Algebra.IsUnitOfIsIntegralOfNonZeroDivisor.Variant188c646816248aec820e3a25e1be6b66e2f234868f653c18ac0eeedaf02af13b

namespace IsArtinianRing

variable {R A : Type*}
variable [CommRing R] [IsArtinianRing R] [CommRing A] [Algebra R A]

open nonZeroDivisors

/-- In an `R`-algebra over an artinian ring `R`, if an element is integral and
is not a zero divisor, then it is a unit. -/
theorem isUnit_of_isIntegral_of_nonZeroDivisor {a : A}
    (hi : IsIntegral R a) (ha : a ∈ A⁰) : IsUnit a :=
  let B := Algebra.adjoin R {a}
  let b : B := ⟨a, Algebra.self_mem_adjoin_singleton R a⟩
  haveI : Module.Finite R B := Algebra.finite_adjoin_simple_of_isIntegral hi
  haveI : IsArtinianRing B := isArtinian_of_tower R inferInstance
  have hinj : Function.Injective (B.subtype) := Subtype.val_injective
  have hb : b ∈ B⁰ := comap_nonZeroDivisors_le_of_injective hinj ha
  (isUnit_of_mem_nonZeroDivisors hb).map B.subtype

/-- Integral element of an algebra over artinian ring `R` is either a zero divisor or a unit. -/
theorem isUnit_iff_nonZeroDivisor_of_isIntegral {a : A}
    (hi : IsIntegral R a) : IsUnit a ↔ a ∈ A⁰ :=
  ⟨IsUnit.mem_nonZeroDivisors, isUnit_of_isIntegral_of_nonZeroDivisor hi⟩

/-- In an `R`-algebra over an artinian ring `R`, if an element is integral and
is not a zero divisor, then it is a unit. -/
theorem isUnit_of_nonZeroDivisor_of_isIntegral' [Algebra.IsIntegral R A] {a : A}
    (ha : a ∈ A⁰) : IsUnit a :=
  isUnit_of_isIntegral_of_nonZeroDivisor (R := R) (Algebra.IsIntegral.isIntegral a) ha

/-- Integral element of an algebra over artinian ring `R` is either a zero divisor or a unit. -/
theorem isUnit_iff_nonZeroDivisor_of_isIntegral' [Algebra.IsIntegral R A] {a : A} :
    IsUnit a ↔ a ∈ A⁰ :=
  isUnit_iff_nonZeroDivisor_of_isIntegral (R := R) (Algebra.IsIntegral.isIntegral a)

theorem isUnit_submonoid_eq_of_isIntegral [Algebra.IsIntegral R A] : IsUnit.submonoid A = A⁰ := by
  ext; simpa [IsUnit.mem_submonoid_iff] using isUnit_iff_nonZeroDivisor_of_isIntegral' (R := R)

end IsArtinianRing
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bcc239847b1e26da9aa3c063bdbce43cd7a91bc1b4d2ae39395891780285f4b6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Algebra/Variantb1bfd3996d2410f1f74494d05047c5e507d23d97c4d89fc71346bb6a32d3b5d9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
