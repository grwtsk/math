# Euler Product Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `035457f1bb692448ed2ff7a8b8995148a8bac335` · SHA-256 `7b4e2bfc434913fafbfb9ee2d5233395f406fbcca1de5b36d5ae808262c62f3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Number.ArithmeticFunction

/-!
# Finite Euler products

Finite Euler windows belong to `Number`.

An infinite Euler product identity is not a finite arithmetic object. It enters
later through `AnalyticNumber.EulerProduct` with convergence and product
identity authority.
-/

namespace Number

/-- Finite list of primes with a certificate-gated primality/soundness claim. -/
structure PrimeWindow where
  primes : List Nat
  primeSound : Prop
  primeSoundProof : primeSound

/-- One finite local Euler factor. -/
structure LocalEulerFactor where
  prime : Nat
  coeffs : List Int
  factorSound : Prop
  factorSoundProof : factorSound

/-- A finite Euler product window. -/
structure FiniteEulerProduct where
  window : PrimeWindow
  factors : List LocalEulerFactor
  expandedCoeffs : List Int
  expansionSound : Prop
  expansionProof : expansionSound

theorem prime_window_sound
    (W : PrimeWindow) :
    W.primeSound :=
  W.primeSoundProof

theorem local_euler_factor_sound
    (F : LocalEulerFactor) :
    F.factorSound :=
  F.factorSoundProof

theorem finite_euler_product_expansion_sound
    (P : FiniteEulerProduct) :
    P.expansionSound :=
  P.expansionProof

/-- A finite Euler product does not prove an infinite Euler product identity. -/
def FiniteEulerProductProvesInfiniteEulerProduct
    (_P : FiniteEulerProduct) : Prop :=
  False

theorem finite_euler_product_not_infinite_identity
    (P : FiniteEulerProduct) :
    ¬ FiniteEulerProductProvesInfiniteEulerProduct P := by
  intro h
  exact h

end Number
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b7d00a88cd26103271a8ce3eb44e5542a00d7294bffe83ace74c092af52e088f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/EulerProduct/Variant7b4e2bfc434913fafbfb9ee2d5233395f406fbcca1de5b36d5ae808262c62f3f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
