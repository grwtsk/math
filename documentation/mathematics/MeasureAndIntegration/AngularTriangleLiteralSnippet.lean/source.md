# Angular Triangle Literal Snippet — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `01bdac255707e3d4476a4121952d79cb5e3b0793` · SHA-256 `439074f42bb7301e52c2352970b11e9926fddd63cc9ce1a1a8df1b6ec3676d29`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
open MeasureTheory
open AngularL2TriangleScratch

example (f : ℝ → ℂ) (hf : MemLp f 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) =
      Real.sqrt (1 / (2 * Real.pi)) * ‖hf.toLp f‖ :=
  sqrt_normalized_integral_eq_norm f hf

example (f g : ℝ → ℂ) (hf : MemLp f 2 volume) (hg : MemLp g 2 volume) :
    Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t + g t‖ ^ 2) ≤
      Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖f t‖ ^ 2) +
        Real.sqrt ((1 / (2 * Real.pi)) * ∫ t : ℝ, ‖g t‖ ^ 2) :=
  sqrt_normalized_integral_add_le f g hf hg
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=036d76378182b3124ddd930aae2a5962ec6077e3f2fd58c44ce5b051adccb3fc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/AngularTriangleLiteralSnippet/Variant439074f42bb7301e52c2352970b11e9926fddd63cc9ce1a1a8df1b6ec3676d29.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
