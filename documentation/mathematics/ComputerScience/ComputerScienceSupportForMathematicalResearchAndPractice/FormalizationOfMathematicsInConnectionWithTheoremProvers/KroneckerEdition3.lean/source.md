# Kronecker Edition3 — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f3240ba779b6fc9ca6af9e81fe42a51d9216a22` · SHA-256 `efa47a316d6df3d1fe61822bc6e21a5c7d2e7726fe0eb62e137394f6d0788b49`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Kernel.Regularization

/-!
# Kronecker baseline

The Kronecker kernel is the zero semantic kernel plus the exact identity channel
with weight one.  It is the compatibility baseline for ordinary `ℓ²` concept
coordinates; it is not a useful semantic clustering kernel by itself.
-/

noncomputable section

namespace Mathematics.Kernel

open scoped ComplexOrder

universe u

variable {Index : Type u} [DecidableEq Index]

/-- Exact Kronecker kernel. -/
def kroneckerKernel : PositiveKernel Index :=
  regularizedKernel (zeroSemanticKernel (Index := Index)) 1 (by norm_num)

@[simp]
theorem kroneckerKernel_apply (left right : Index) :
    kroneckerKernel left right =
      if left = right then (1 : ℂ) else 0 := by
  simp [kroneckerKernel]

/-- The Kronecker kernel is positive definite. -/
theorem kroneckerKernel_posDef :
    (kroneckerKernel (Index := Index)).matrix.PosDef :=
  regularizedKernel_posDef
    (zeroSemanticKernel (Index := Index)) (1 : ℝ) (by norm_num)

end Mathematics.Kernel
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fc592533ecad5b0fb67f42b4fab4114f4d13d23c0fc7e24304ff4dd77590125c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Kronecker/Variantefa47a316d6df3d1fe61822bc6e21a5c7d2e7726fe0eb62e137394f6d0788b49.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
