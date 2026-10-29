# Complete source: GRWTSK.Algebra.Basic.Variant999e42087f7314438a4957a29fbdedeb444e721d2fdd6d1f76c41ee8ef37aad8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c0f7c2fbc30506e67d2de06b16974edbfe7f29e` · SHA-256 `999e42087f7314438a4957a29fbdedeb444e721d2fdd6d1f76c41ee8ef37aad8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 David Kurniadi Angdinata. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Kurniadi Angdinata
-/
module

public import Mathlib.RingTheory.Ideal.Operations
public import Mathlib.RingTheory.Spectrum.Maximal.Defs
public import Mathlib.RingTheory.Spectrum.Prime.Defs

/-!
# Maximal spectrum of a commutative (semi)ring

Basic properties the maximal spectrum of a ring.
-/

@[expose] public section

noncomputable section

variable (R : Type*) [CommSemiring R]

namespace MaximalSpectrum

/-- The prime spectrum is in bijection with the set of prime ideals. -/
@[simps]
def equivSubtype : MaximalSpectrum R ≃ {I : Ideal R // I.IsMaximal} where
  toFun I := ⟨I.asIdeal, I.2⟩
  invFun I := ⟨I, I.2⟩

theorem range_asIdeal : Set.range MaximalSpectrum.asIdeal = {J : Ideal R | J.IsMaximal} :=
  Set.ext fun J ↦
    ⟨fun hJ ↦ let ⟨j, hj⟩ := Set.mem_range.mp hJ; Set.mem_ofPred.mpr <| hj ▸ j.isMaximal,
      fun hJ ↦ Set.mem_range.mpr ⟨⟨J, Set.mem_ofPred.mp hJ⟩, rfl⟩⟩

variable {R}

instance [Nontrivial R] : Nonempty <| MaximalSpectrum R :=
  let ⟨I, hI⟩ := Ideal.exists_maximal R
  ⟨⟨I, hI⟩⟩

/-- The natural inclusion from the maximal spectrum to the prime spectrum. -/
def toPrimeSpectrum (x : MaximalSpectrum R) : PrimeSpectrum R :=
  ⟨x.asIdeal, x.isMaximal.isPrime⟩

theorem toPrimeSpectrum_injective : (@toPrimeSpectrum R _).Injective := fun ⟨_, _⟩ ⟨_, _⟩ h => by
  simpa only [MaximalSpectrum.mk.injEq] using! PrimeSpectrum.ext_iff.mp h

theorem isCoprime_of_ne {I J : MaximalSpectrum R} (h : I ≠ J) : IsCoprime I.1 J.1 :=
  Ideal.isCoprime_iff_sup_eq.mpr <| I.2.coprime_of_ne J.2 <| mt MaximalSpectrum.ext h

end MaximalSpectrum
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ff051ff8db9896728d61e476fa4a367bdb28e38bffc2c953355021587aca5d87 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN (source snapshot `a63dee15727d`). Mathematical admission is not claimed. [Coverage](https://github.com/grwtsk/math/issues/1429).

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","snapshot":"a63dee15727d965b263e7b32a3a79b735297ca73b6d88c7d82b91be5ac3da782","source_paths":["GRWTSK/Algebra/Basic/Variant999e42087f7314438a4957a29fbdedeb444e721d2fdd6d1f76c41ee8ef37aad8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
