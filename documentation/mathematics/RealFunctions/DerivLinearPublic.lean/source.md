# Deriv Linear Public — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c739ccb0140964eece936e800e378a91f33e8a81` · SHA-256 `ab23a4d5e246d268c77ba6107f00d61da59529e5e307ff01a43792c5f942c046`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Yury Kudryashov
-/
module

public import Mathlib.Analysis.Calculus.Deriv.Basic
public import Mathlib.Analysis.Calculus.FDeriv.Linear

/-!
# Derivatives of continuous linear maps from the base field

In this file we prove that `f : 𝕜 →L[𝕜] E` (or `f : 𝕜 →ₗ[𝕜] E`) has derivative `f 1`.

For a more detailed overview of one-dimensional derivatives in mathlib, see the module docstring of
`Analysis/Calculus/Deriv/Basic`.

## Keywords

derivative, linear map
-/

public section


universe u v w

open Filter

open Filter Set

variable {𝕜 : Type u} [NontriviallyNormedField 𝕜]
variable {F : Type v} [NormedAddCommGroup F] [NormedSpace 𝕜 F]
variable {x : 𝕜}
variable {s : Set 𝕜}
variable {L : Filter (𝕜 × 𝕜)}

section ContinuousLinearMap

/-! ### Derivative of continuous linear maps -/

variable (e : 𝕜 →L[𝕜] F)

protected theorem ContinuousLinearMap.hasDerivAtFilter : HasDerivAtFilter e (e 1) L :=
  e.hasFDerivAtFilter.hasDerivAtFilter

protected theorem ContinuousLinearMap.hasStrictDerivAt : HasStrictDerivAt e (e 1) x :=
  e.hasDerivAtFilter

protected theorem ContinuousLinearMap.hasDerivAt : HasDerivAt e (e 1) x :=
  e.hasDerivAtFilter

protected theorem ContinuousLinearMap.hasDerivWithinAt : HasDerivWithinAt e (e 1) s x :=
  e.hasDerivAtFilter

@[simp]
protected theorem ContinuousLinearMap.deriv : deriv e x = e 1 :=
  e.hasDerivAt.deriv

protected theorem ContinuousLinearMap.derivWithin (hxs : UniqueDiffWithinAt 𝕜 s x) :
    derivWithin e s x = e 1 :=
  e.hasDerivWithinAt.derivWithin hxs

end ContinuousLinearMap

section LinearMap

/-! ### Derivative of bundled linear maps -/

variable (e : 𝕜 →ₗ[𝕜] F)

protected theorem LinearMap.hasDerivAtFilter : HasDerivAtFilter e (e 1) L :=
  e.toContinuousLinearMap₁.hasDerivAtFilter

protected theorem LinearMap.hasStrictDerivAt : HasStrictDerivAt e (e 1) x :=
  e.hasDerivAtFilter

protected theorem LinearMap.hasDerivAt : HasDerivAt e (e 1) x :=
  e.hasDerivAtFilter

protected theorem LinearMap.hasDerivWithinAt : HasDerivWithinAt e (e 1) s x :=
  e.hasDerivAtFilter

@[simp]
protected theorem LinearMap.deriv : deriv e x = e 1 :=
  e.hasDerivAt.deriv

protected theorem LinearMap.derivWithin (hxs : UniqueDiffWithinAt 𝕜 s x) :
    derivWithin e s x = e 1 :=
  e.hasDerivWithinAt.derivWithin hxs

end LinearMap
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=50568921538e9ad486b3eec4e0ff54388100e7850760aa13677bc6fc8262f31c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Linear/Variantab23a4d5e246d268c77ba6107f00d61da59529e5e307ff01a43792c5f942c046.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
