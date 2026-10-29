# Compactification — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `26b09e88f7b9a83fe3fdeb5393f0f577ab293722` · SHA-256 `6ae7c83ac2fd4605c42f069f7a72ad10aace55f9a93b26278abe4db058c5bb05`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.Symmetry
import Mathlib.Analysis.Normed.Module.Basic
import Mathlib.Analysis.Normed.Operator.LinearIsometry

/-!
# Equivariant spheroidal compactification

The compactification is a separate geometric realization.  Its symmetry law
is carried explicitly; proximity to the compactified fixed locus is never
promoted to algebraic fixedness.
-/

namespace Mathematics.AbelReynolds

noncomputable def stereographicCompactify
    {W : Type*}
    [NormedAddCommGroup W]
    [NormedSpace ℝ W]
    (point : W) : W × ℝ :=
  let denominator := 1 + ‖point‖ ^ 2
  ((2 / denominator) • point,
    (‖point‖ ^ 2 - 1) / denominator)

def liftCompactifiedSymmetry
    {W : Type*}
    [NormedAddCommGroup W]
    [NormedSpace ℝ W]
    (symmetry : W ≃ₗᵢ[ℝ] W) :
    W × ℝ → W × ℝ :=
  fun point => (symmetry point.1, point.2)

theorem stereographicCompactify_equivariant
    {W : Type*}
    [NormedAddCommGroup W]
    [NormedSpace ℝ W]
    (symmetry : W ≃ₗᵢ[ℝ] W)
    (point : W) :
    liftCompactifiedSymmetry symmetry
        (stereographicCompactify point) =
      stereographicCompactify (symmetry point) := by
  ext <;>
    simp [liftCompactifiedSymmetry,
      stereographicCompactify]

structure CompactificationCertificate
    (Affine Compact : Type*) where
  compactify : Affine → Compact
  affineSymmetry : Involution Affine
  compactSymmetry : Involution Compact
  equivariant :
    ∀ value,
      compactSymmetry.act (compactify value) =
        compactify (affineSymmetry.act value)
  reflectsEquality : Function.Injective compactify

theorem CompactificationCertificate.reflectsFixedness
    {Affine Compact : Type*}
    (certificate :
      CompactificationCertificate Affine Compact)
    {value : Affine}
    (fixed :
      certificate.compactSymmetry.Fixed
        (certificate.compactify value)) :
    certificate.affineSymmetry.Fixed value := by
  apply certificate.reflectsEquality
  simpa [Involution.Fixed] using
    certificate.equivariant value |>.symm.trans fixed

end Mathematics.AbelReynolds
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fa8c1debabb782be0d5b3a03bfdbd44ba6cce6a5b31e3c57c6f75703cc24e967 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Compactification/Variant6ae7c83ac2fd4605c42f069f7a72ad10aace55f9a93b26278abe4db058c5bb05.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
