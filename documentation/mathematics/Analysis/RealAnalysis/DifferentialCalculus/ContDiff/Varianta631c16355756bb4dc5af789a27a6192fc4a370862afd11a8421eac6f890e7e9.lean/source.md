# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ContDiff.Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `62ca036ff5c2fd1b16909635969d9fdad44efb49` · SHA-256 `a631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Heather Macbeth
-/
import Mathlib.Analysis.Calculus.ContDiff.Operations
import Mathlib.Analysis.Calculus.ContDiff.RCLike
import Mathlib.Analysis.Calculus.InverseFunctionTheorem.FDeriv

/-!
# Inverse function theorem, `C^r` case

In this file we specialize the inverse function theorem to `C^r`-smooth functions.
-/

noncomputable section

namespace ContDiffAt

variable {𝕂 : Type*} [RCLike 𝕂]
variable {E : Type*} [NormedAddCommGroup E] [NormedSpace 𝕂 E]
variable {F : Type*} [NormedAddCommGroup F] [NormedSpace 𝕂 F]
variable [CompleteSpace E] (f : E → F) {f' : E ≃L[𝕂] F} {a : E} {n : WithTop ℕ∞}

/-- Given a `ContDiff` function over `𝕂` (which is `ℝ` or `ℂ`) with an invertible
derivative at `a`, returns a `PartialHomeomorph` with `to_fun = f` and `a ∈ source`. -/
def toPartialHomeomorph (hf : ContDiffAt 𝕂 n f a) (hf' : HasFDerivAt f (f' : E →L[𝕂] F) a)
    (hn : 1 ≤ n) : PartialHomeomorph E F :=
  (hf.hasStrictFDerivAt' hf' hn).toPartialHomeomorph f

variable {f}

@[simp]
theorem toPartialHomeomorph_coe (hf : ContDiffAt 𝕂 n f a)
    (hf' : HasFDerivAt f (f' : E →L[𝕂] F) a) (hn : 1 ≤ n) :
    (hf.toPartialHomeomorph f hf' hn : E → F) = f :=
  rfl

theorem mem_toPartialHomeomorph_source (hf : ContDiffAt 𝕂 n f a)
    (hf' : HasFDerivAt f (f' : E →L[𝕂] F) a) (hn : 1 ≤ n) :
    a ∈ (hf.toPartialHomeomorph f hf' hn).source :=
  (hf.hasStrictFDerivAt' hf' hn).mem_toPartialHomeomorph_source

theorem image_mem_toPartialHomeomorph_target (hf : ContDiffAt 𝕂 n f a)
    (hf' : HasFDerivAt f (f' : E →L[𝕂] F) a) (hn : 1 ≤ n) :
    f a ∈ (hf.toPartialHomeomorph f hf' hn).target :=
  (hf.hasStrictFDerivAt' hf' hn).image_mem_toPartialHomeomorph_target

/-- Given a `ContDiff` function over `𝕂` (which is `ℝ` or `ℂ`) with an invertible derivative
at `a`, returns a function that is locally inverse to `f`. -/
def localInverse (hf : ContDiffAt 𝕂 n f a) (hf' : HasFDerivAt f (f' : E →L[𝕂] F) a)
    (hn : 1 ≤ n) : F → E :=
  (hf.hasStrictFDerivAt' hf' hn).localInverse f f' a

theorem localInverse_apply_image (hf : ContDiffAt 𝕂 n f a)
    (hf' : HasFDerivAt f (f' : E →L[𝕂] F) a) (hn : 1 ≤ n) : hf.localInverse hf' hn (f a) = a :=
  (hf.hasStrictFDerivAt' hf' hn).localInverse_apply_image

/-- Given a `ContDiff` function over `𝕂` (which is `ℝ` or `ℂ`) with an invertible derivative
at `a`, the inverse function (produced by `ContDiff.toPartialHomeomorph`) is
also `ContDiff`. -/
theorem to_localInverse (hf : ContDiffAt 𝕂 n f a)
    (hf' : HasFDerivAt f (f' : E →L[𝕂] F) a) (hn : 1 ≤ n) :
    ContDiffAt 𝕂 n (hf.localInverse hf' hn) (f a) := by
  have := hf.localInverse_apply_image hf' hn
  apply (hf.toPartialHomeomorph f hf' hn).contDiffAt_symm
    (image_mem_toPartialHomeomorph_target hf hf' hn)
  · convert hf'
  · convert hf

end ContDiffAt
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=60bdaf5ad9be3eab5cf149da7af2647d3df49b3e9e99d325df82c38e8d056973 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Varianta631c16355756bb4dc5af789a27a6192fc4a370862afd11a8421eac6f890e7e9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
