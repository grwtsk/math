# Xi Prime — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `851118523d7291f292485f8d4de1fd89de92f127` · SHA-256 `28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Anthropic, PBC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
SPDX-License-Identifier: Apache-2.0
-/
import Mathlib

open scoped BigOperators
open Complex Set

noncomputable section

namespace XiPrime

/-- ξ(s) := s(s−1)/2 · Λ₀(s) + 1/2  (= ½ s(s−1) π^{-s/2} Γ(s/2) ζ(s) for s ∉ {0,1}; entire). -/
def xi (s : ℂ) : ℂ := s * (s - 1) / 2 * completedRiemannZeta₀ s + 1 / 2

/-- ξ′ := the complex derivative of ξ (an entire function; [XF′ §0] writes F := (ξ′)′/ξ′). -/
def xiDeriv : ℂ → ℂ := deriv xi

/-- ρ₁ is a zero of ξ′:  ξ′(ρ₁) = 0 — ALL zeros, NO real-part condition. -/
def IsXiDerivZero (ρ : ℂ) : Prop := xiDeriv ρ = 0

/-- m_{ρ₁} := multiplicity of ρ₁ as a zero of ξ′ = analytic order of ξ′ at ρ₁ (ℕ∞ → ℕ via toNat). -/
def xiDerivMult (ρ : ℂ) : ℕ := (analyticOrderAt xiDeriv ρ).toNat

/-- {ρ₁ : ξ′(ρ₁) = 0, T₁ < Im ρ₁ ≤ T₂}  (ALL zeros in the height window; positive ordinates, NOT |Im|).
This set is finite — every zero of ξ′ lies in the open critical strip (the first challenge statement) and the zeros of
the entire function ξ′ are isolated — so the finite sums and cardinalities below are genuine counts (Lean's `finsum`
and `Set.ncard` would return 0 on an infinite set). -/
def zerosIn (T₁ T₂ : ℝ) : Set ℂ := {ρ | IsXiDerivZero ρ ∧ T₁ < ρ.im ∧ ρ.im ≤ T₂}

/-- N_{ξ′}(T₁,T₂) := number of zeros of ξ′ with T₁ < Im ≤ T₂ (any real part), COUNTED WITH MULTIPLICITY. -/
def Ncount (T₁ T₂ : ℝ) : ℕ := ∑ᶠ ρ ∈ zerosIn T₁ T₂, xiDerivMult ρ

/-- N_{d,ξ′}(T₁,T₂) := number of DISTINCT zeros of ξ′ with T₁ < Im ≤ T₂ (any real part). -/
def Ndist (T₁ T₂ : ℝ) : ℕ := (zerosIn T₁ T₂).ncard

/-- N^{s}_{0,ξ′}(T₁,T₂) := #{ρ₁ : T₁ < Im ρ₁ ≤ T₂, Re ρ₁ = 1/2, m_{ρ₁} = 1}: SIMPLE zeros of ξ′ ON the
critical line (each such point counted once — it is simple). -/
def N0simple (T₁ T₂ : ℝ) : ℕ :=
  (zerosIn T₁ T₂ ∩ {ρ | ρ.re = 1 / 2} ∩ {ρ | xiDerivMult ρ = 1}).ncard

end XiPrime
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95cbcef8b66b95d9f348af3ca1319f15fb0a80fc191465ef28d2548dc5c268f7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/XiPrime/Variant28ff423aecf77b32e81dbca6a4ea57edd0d3d07aff599e4874c9f3a8f4d0ef7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
