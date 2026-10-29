# Complete source: GRWTSK.Algebra.Over.Variant0a958ed1c39b96fa2f057b9c1eb09ed910a9d4b939409af01daed1cba30f567a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b99bdfbaacf35e0df91c8fc512d4659a9bd52e2` · SHA-256 `0a958ed1c39b96fa2f057b9c1eb09ed910a9d4b939409af01daed1cba30f567a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
module

public import Mathlib.Data.Set.Card
public import Mathlib.RingTheory.Ideal.Over

/-! # Lemmas about `primesOver` in quotient rings. -/

public section

variable {R S T : Type*} [CommRing R] [CommRing S] [CommRing T] [Algebra R S] [Algebra R T]

/-- Given a prime `P` of `R` and an ideal `I` in an `R`-algebra `S`.
Suppose we can find a prime `P'` over `P`, not containing `I`,
then the number of primes of `S / I` over `P`
is strictly less than primes of `S` over `P` (provided they are finite).

The lemma is stated in terms of surjections for syntactic generality. -/
lemma Ideal.ncard_primesOver_lt_of_not_le
    (f : S →ₐ[R] T) (Hf : Function.Surjective f)
    (P : Ideal R) (P' : Ideal S) [P'.IsPrime] [P'.LiesOver P]
    (hkP' : ¬ RingHom.ker f.toRingHom ≤ P') (H : (P.primesOver S).Finite) :
    (P.primesOver T).ncard < (P.primesOver S).ncard := by
  rw [← Set.ncard_image_of_injective _ (Ideal.comap_injective_of_surjective _ Hf)]
  refine Set.ncard_lt_ncard (Set.ssubset_iff_exists.mpr ⟨?_, P', ⟨‹_›, ‹_›⟩, ?_⟩) H
  · rintro _ ⟨q, ⟨_, _⟩, rfl⟩
    exact ⟨inferInstance, inferInstanceAs ((q.comap f).LiesOver _)⟩
  · rintro ⟨q, ⟨_, _⟩, rfl⟩; exact hkP' (Ideal.ker_le_comap _)

lemma Ideal.ncard_primesOver_quotient_singleton_lt_of_notMem
    (P : Ideal R) (e : S) (P' : Ideal S) [P'.IsPrime] [P'.LiesOver P]
    (heP' : e ∉ P') (H : (P.primesOver S).Finite) :
    (P.primesOver (S ⧸ Ideal.span {e})).ncard < (P.primesOver S).ncard :=
  Ideal.ncard_primesOver_lt_of_not_le _ (Ideal.Quotient.mkₐ_surjective R _) _ P' (by simpa) H
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1d4a0d569dadd114006813ac696b17018f929667e2c3db53d67a2fa3401d8eb7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Over/Variant0a958ed1c39b96fa2f057b9c1eb09ed910a9d4b939409af01daed1cba30f567a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
