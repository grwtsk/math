# Bezout Namespaced — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `84a440e857a7cddf25d3b0f58a15107c0cfcf82f` · SHA-256 `163b2f8fbb9a7dad450c552a691858679041e878a252cd39063f18dd3eeab609`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IffSpanPairIsPrincipal.Variantcbf20c59f9686cc9e6b049c17a03283d8d3d1106418acfcfcd21ecfd913caf70","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cbf20c59f9686cc9e6b049c17a03283d8d3d1106418acfcfcd21ecfd913caf70","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IffSpanPairIsPrincipal.Variantcbf20c59f9686cc9e6b049c17a03283d8d3d1106418acfcfcd21ecfd913caf70","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"cbf20c59f9686cc9e6b049c17a03283d8d3d1106418acfcfcd21ecfd913caf70","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Bezout.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.PrincipalIdealDomain

/-!

# Bézout rings

A Bézout ring (Bezout ring) is a ring whose finitely generated ideals are principal.
Notable examples include principal ideal rings, valuation rings, and the ring of algebraic integers.

## Main results
- `IsBezout.iff_span_pair_isPrincipal`: It suffices to verify every `span {x, y}` is principal.
- `IsBezout.TFAE`: For a Bézout domain, noetherian ↔ PID ↔ UFD ↔ ACCP

-/



namespace GRWTSK.Algebra.IffSpanPairIsPrincipal.Variantcbf20c59f9686cc9e6b049c17a03283d8d3d1106418acfcfcd21ecfd913caf70

universe u v

variable {R : Type u} [CommRing R]

namespace IsBezout

theorem iff_span_pair_isPrincipal :
    IsBezout R ↔ ∀ x y : R, (Ideal.span {x, y} : Ideal R).IsPrincipal := by
  classical
    constructor
    · intro H x y; infer_instance
    · intro H
      constructor
      apply Submodule.fg_induction
      · exact fun _ => ⟨⟨_, rfl⟩⟩
      · rintro _ _ ⟨⟨x, rfl⟩⟩ ⟨⟨y, rfl⟩⟩; rw [← Submodule.span_insert]; exact H _ _

theorem _root_.GRWTSK.Algebra.IffSpanPairIsPrincipal.Variantcbf20c59f9686cc9e6b049c17a03283d8d3d1106418acfcfcd21ecfd913caf70.Function.Surjective.isBezout {S : Type v} [CommRing S] (f : R →+* S)
    (hf : Function.Surjective f) [IsBezout R] : IsBezout S := by
  rw [iff_span_pair_isPrincipal]
  intro x y
  obtain ⟨⟨x, rfl⟩, ⟨y, rfl⟩⟩ := hf x, hf y
  use f (gcd x y)
  trans Ideal.map f (Ideal.span {gcd x y})
  · rw [span_gcd, Ideal.map_span, Set.image_insert_eq, Set.image_singleton]
  · rw [Ideal.map_span, Set.image_singleton]; rfl

theorem TFAE [IsBezout R] [IsDomain R] :
    List.TFAE
    [IsNoetherianRing R, IsPrincipalIdealRing R, UniqueFactorizationMonoid R, WfDvdMonoid R] := by
  classical
    tfae_have 1 → 2
    | _ => inferInstance
    tfae_have 2 → 3
    | _ => inferInstance
    tfae_have 3 → 4
    | _ => inferInstance
    tfae_have 4 → 1
    | ⟨h⟩ => by
      rw [isNoetherianRing_iff, isNoetherian_iff_fg_wellFounded]
      refine ⟨RelEmbedding.wellFounded ?_ h⟩
      have : ∀ I : { J : Ideal R // J.FG }, ∃ x : R, (I : Ideal R) = Ideal.span {x} :=
        fun ⟨I, hI⟩ => (IsBezout.isPrincipal_of_FG I hI).1
      choose f hf using this
      exact
        { toFun := f
          inj' := fun x y e => by ext1; rw [hf, hf, e]
          map_rel_iff' := by
            dsimp
            intro a b
            rw [← Ideal.span_singleton_lt_span_singleton, ← hf, ← hf]
            rfl }
    tfae_finish

end IsBezout
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f048af95db9a760fd0b876fb828a98455d1b1f552084a4969cc8d4e0ffa7ad63 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
