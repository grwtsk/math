# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonEighthBlockSeeds

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `459c19df7fbafefe6a322db0bde05f0e6e3f27da` · SHA-256 `89ace1e931cd7c71afa014f32f834c6c7c93da43a97d3c199f6edb38b81a6f73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonEighthBlockData

set_option autoImplicit false

/-!
# Source scripts for all 64 original eighth-block seeds

The same canonical normalization is expanded against every fixed row. Base 512
crosses the dyadic logarithm boundary from exponent eight to nine. Every
mantissa contribution and its width remain source-specific. These scripts are
unexecuted and may require grouping or decomposition for Lean resource reasons.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.RiemannHypothesis.ConcreteNewtonEighthBlockSeeds

open GRWTSK.Analysis.Complex
open RationalRoundedArithmetic IntegerDyadicTrace IntegerTaylorPolynomial
open RationalTaylorSeedNormalization
open GRWTSK.Analysis.Real.RationalLogEnclosure
open ConcreteNewtonPacket RationalZetaCenterEvaluation ConcreteNewtonEighthBlockData

theorem all_inputs (i : Fin 64) : InputValid i := by
  fin_cases i <;>
    norm_num [InputValid, sourceRadius, sourceDisplacement, base,
    RationalPowerEvaluation.Admissible, RationalPowerEvaluation.argument,
    RationalPowerEvaluation.radius, RationalPowerEvaluation.displacement,
    RationalPowerEvaluation.logCenter, RationalPowerEvaluation.logError,
    RationalPowerEvaluation.logLower, RationalPowerEvaluation.logWidth,
    RationalPowerEvaluation.mantissa, sourceExponent, center, schedule, logExponent,
    scaleQ, QComplex.smul, QComplex.rect, lower, width, ratio, Finset.sum_range_succ]

theorem all_windows (i : Fin 64) : SeedWindows i := by
  fin_cases i <;>
    norm_num [SeedWindows, Windows, sourceArgument, sourceRadius, sourceDisplacement,
    initial, base, seedNum, seedDen, argDen, argNum, errorNum, errorDen,
    tailNum, tailDen, numeratorZ, powerZ, addZ, mulZ, scalePair, denominatorZ,
    FloorWindow, CeilingWindow, scaleZ,
    RationalPowerEvaluation.argument, RationalPowerEvaluation.radius,
    RationalPowerEvaluation.displacement, RationalPowerEvaluation.logCenter,
    RationalPowerEvaluation.logError, RationalPowerEvaluation.logLower,
    RationalPowerEvaluation.logWidth, RationalPowerEvaluation.mantissa,
    sourceExponent, center, schedule, logExponent, scaleQ, QComplex.smul,
    QComplex.rect, lower, width, ratio, Finset.sum_range_succ, Nat.factorial]

theorem all_seeds_valid (i : Fin 64) : SeedValid 64
    (RationalPowerEvaluation.seed (base i : ℚ) (sourceExponent center) (schedule (base i)))
    (RationalPowerEvaluation.seedError (base i : ℚ) (sourceExponent center) (schedule (base i)))
    (initial i) :=
  RationalTaylorSeedNormalization.original_seed_valid (base i : ℚ) (sourceExponent center)
    (schedule (base i)) 21 rfl (initial i) (all_inputs i).2.1
    (all_inputs i).2.2 (all_windows i)

end GRWTSK.RiemannHypothesis.ConcreteNewtonEighthBlockSeeds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95c90bd5fe14f209dc8924835198d63a953b7069ef9add1b646c8320ddcf0cac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonEighthBlockSeeds.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
