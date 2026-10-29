# Bijective Namespaced Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8eba53ddd5c23edb77bd0273ae7ef0feabf03c28` · SHA-256 `59e4a40387d2fcf967e30cdcee6d409b2f58a8323b0199d01c1d386d54c4a47c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.ContainsIdentities.Variant68386efe8e6c57b6ccfa06d60b7ddc68a345b39cd1863e678274ab410f514d35","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68386efe8e6c57b6ccfa06d60b7ddc68a345b39cd1863e678274ab410f514d35","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.ContainsIdentities.Variant68386efe8e6c57b6ccfa06d60b7ddc68a345b39cd1863e678274ab410f514d35","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"68386efe8e6c57b6ccfa06d60b7ddc68a345b39cd1863e678274ab410f514d35","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/RingHom/Bijective.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Christian Merten. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Christian Merten
-/
module

public import Mathlib.RingTheory.LocalProperties.Basic
public import Mathlib.RingTheory.LocalProperties.Exactness

/-!
# Meta properties of bijective ring homomorphisms

We show some meta properties of bijective ring homomorphisms.

## Implementation details

We don't define a `RingHom.Bijective` predicate, but use `fun f ↦ Function.Bijective f` as
the ring hom property.
-/


namespace GRWTSK.Algebra.ContainsIdentities.Variant68386efe8e6c57b6ccfa06d60b7ddc68a345b39cd1863e678274ab410f514d35

public section

variable {R S : Type*} [CommRing R] [CommRing S]

namespace RingHom.Bijective

lemma containsIdentities : ContainsIdentities (fun f ↦ Function.Bijective f) :=
  fun _ _ ↦ Function.bijective_id

lemma stableUnderComposition : StableUnderComposition (fun f ↦ Function.Bijective f) :=
  fun _ _ _ _ _ _ _ _ hf hg ↦ hg.comp hf

lemma respectsIso : RespectsIso (fun f ↦ Function.Bijective f) :=
  RingHom.Bijective.stableUnderComposition.respectsIso fun e ↦ e.bijective

lemma isStableUnderBaseChange : IsStableUnderBaseChange (fun f ↦ Function.Bijective f) :=
  .mk respectsIso fun R _ _ _ _ _ _ _ hf ↦
    Algebra.TensorProduct.includeLeft_bijective (S := R) hf

lemma ofLocalizationSpan : OfLocalizationSpan (fun f ↦ Function.Bijective f) :=
  fun _ _ _ _ f s hs hf ↦ bijective_of_isLocalization_of_span_eq_top (s := s) hs
    (fun r ↦ Localization.Away r.val) (fun r ↦ Localization.Away (f r.val)) f hf

end RingHom.Bijective
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9460cf1c78072ec5bc03178938accd98094c8b5c97fbfa173316496d091c4f03 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Bijective/Variant7c843320179a843be43bb0a5d07be10caecb7756ac2caec371a0c9851e5834a3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
