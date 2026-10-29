# Arithmetic Function Edition1 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea5ac1a438f5ff0b33dd222f5d0fb03d5e1624e3` · SHA-256 `93fd80f63fa980bbcb184ebd783f69e1b3f71d13c76d9025740144219616862a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Number.Payload

/-!
# Discrete arithmetic functions

Arithmetic functions belong to `Number`, not to `AnalyticNumber`.

This file contains discrete number-theoretic shells. Convergence of associated
Dirichlet series is not stated here. That belongs to `AnalyticNumber`.
-/

namespace Number

/-- Arithmetic function shell indexed by natural numbers, ignoring zero. -/
structure ArithmeticFunction where
  value : Nat → Int
  ignoresZero : value 0 = 0

/--
Certificate-gated Dirichlet convolution statement.

This is still discrete arithmetic. A future Mathlib-backed implementation may
replace this shell with actual finite divisor-sum proofs.
-/
structure DirichletConvolutionCertificate
    (_f _g _h : ArithmeticFunction) where
  convolutionSound : Prop
  convolutionProof : convolutionSound

/-- The constant-one arithmetic function. -/
def oneFunction : ArithmeticFunction where
  value := fun n => if n = 0 then 0 else 1
  ignoresZero := by simp

/-- Dirichlet identity function ε. -/
def epsilonFunction : ArithmeticFunction where
  value := fun n => if n = 1 then 1 else 0
  ignoresZero := by simp

/-- Möbius function shell, as a discrete arithmetic object. -/
structure MobiusFunction where
  function : ArithmeticFunction
  inverseOfOne :
    DirichletConvolutionCertificate oneFunction function epsilonFunction

theorem dirichlet_convolution_sound
    {f g h : ArithmeticFunction}
    (C : DirichletConvolutionCertificate f g h) :
    C.convolutionSound :=
  C.convolutionProof

theorem mobius_inverse_of_one
    (μ : MobiusFunction) :
    μ.inverseOfOne.convolutionSound :=
  μ.inverseOfOne.convolutionProof

/--
A discrete arithmetic function does not define an analytic Dirichlet series by
itself. The analytic series object is introduced later in `AnalyticNumber`.
-/
def ArithmeticFunctionOwnsAnalyticSeries
    (_f : ArithmeticFunction) : Prop :=
  False

theorem arithmetic_function_not_analytic_series
    (f : ArithmeticFunction) :
    ¬ ArithmeticFunctionOwnsAnalyticSeries f := by
  intro h
  exact h

end Number
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=538c26fcb137409e215fd3b6573e3552f1dfae3060497cb4eaab757789c4c28a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ArithmeticFunction/Variant93fd80f63fa980bbcb184ebd783f69e1b3f71d13c76d9025740144219616862a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
