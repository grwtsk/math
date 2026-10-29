# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HostileGuards.Variant6c3e0acef79fe659900852cb2ed508adfe85ccbdc5b106ba44d6e3199da53f44

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `27e02c29a57d6c35609e1a5e9abdf7f8a89e1a43` · SHA-256 `6c3e0acef79fe659900852cb2ed508adfe85ccbdc5b106ba44d6e3199da53f44`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceMangoldtStorage

set_option autoImplicit false
set_option relaxedAutoImplicit false
noncomputable section
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceMangoldtInteraction
open FormalResearch.RiemannHypothesis.SourceMangoldtStorage
open FormalResearch.RiemannHypothesis.SourceScaleL2Continuity

/-- The first inventory-birth fixture cannot be used as an A >= 1 tail instance. -/
example : Real.log 2 / 2 < (1 : ℝ) := by
  have h := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 2)
  linarith

/-- Individual source squares are bounded, but their weighted sum retains its baseline. -/
example {A : ℝ} (hA : 0 < A) (s : ℝ) : sourceSquareStorage A s ≤ 2 := by
  have h := norm_sub_le (originalSourceState A) (translation s (originalSourceState A))
  rw [(translation s).norm_map, originalSourceState_norm hA] at h
  have hn := norm_nonneg (originalSourceState A - translation s (originalSourceState A))
  unfold sourceSquareStorage translationStorage
  nlinarith
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=994506efe5fd025b38007e32db0a6d5c28880b23a4d48ff7eab133421d8ba77f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/HostileGuards/Variant6c3e0acef79fe659900852cb2ed508adfe85ccbdc5b106ba44d6e3199da53f44.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
