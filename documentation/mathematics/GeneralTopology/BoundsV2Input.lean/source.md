# Bounds V2 Input — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `55d8e965371d6cbb1cc3d216a72eb1e8dfd1594b` · SHA-256 `48631f1fe00d0342dd38d851d47dc372a930f42b3834bdb6c57dfaab78875b97`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtStorage
import Mathlib.Topology.Algebra.InfiniteSum.Real
set_option autoImplicit false
noncomputable section
open MeasureTheory Filter Set
open scoped InnerProductSpace
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceMangoldtStorage

example (s : ℝ) (f : ComplexL2) : translationStorage s f ≤ 2 * ‖f‖ ^ 2 := by
  have h := norm_sub_le f (translation s f)
  rw [(translation s).norm_map] at h
  have h0 : 0 ≤ ‖f - translation s f‖ := norm_nonneg _
  have h1 : 0 ≤ ‖f‖ := norm_nonneg _
  unfold translationStorage
  nlinarith

example {ι : Type} (w : ι → ℝ) (s : ι → ℝ) (hw : ∀ i, 0 ≤ w i)
    (hsum : Summable w) (f : ComplexL2) :
    Summable (fun i => w i * translationStorage (s i) f) := by
  apply Summable.of_nonneg_of_le (fun i => mul_nonneg (hw i) (translationStorage_nonneg _ _))
    (fun i => ?_) (hsum.mul_right (2 * ‖f‖ ^ 2))
  apply mul_le_mul_of_nonneg_left _ (hw i)
  have h := norm_sub_le f (translation (s i) f)
  rw [(translation (s i)).norm_map] at h
  unfold translationStorage
  nlinarith [norm_nonneg (f - translation (s i) f), norm_nonneg f]

example {ι : Type} (w : ι → ℝ) (s : ι → ℝ) (hw : ∀ i, 0 ≤ w i)
    (hsum : Summable w) (f : ComplexL2) :
    Summable (fun i => w i * (⟪f, translation (s i) f⟫_ℂ).re) := by
  have hsq : Summable (fun i => w i * translationStorage (s i) f) := by
    apply Summable.of_nonneg_of_le (fun i => mul_nonneg (hw i) (translationStorage_nonneg _ _))
      (fun i => ?_) (hsum.mul_right (2 * ‖f‖ ^ 2))
    apply mul_le_mul_of_nonneg_left _ (hw i)
    have h := norm_sub_le f (translation (s i) f)
    rw [(translation (s i)).norm_map] at h
    unfold translationStorage
    nlinarith [norm_nonneg (f - translation (s i) f), norm_nonneg f]
  convert (hsum.mul_right (‖f‖ ^ 2)).sub hsq using 1
  ext i
  rw [translationStorage_eq]
  ring
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=468272721508039ecec28c056007a3191cfb9bccf235f66687f0f9ddbcd972c9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/BoundsV2Input/Variant48631f1fe00d0342dd38d851d47dc372a930f42b3834bdb6c57dfaab78875b97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
