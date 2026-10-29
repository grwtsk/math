# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Kronecker.Variant36065dd142cd5fc80fc67bb8944386a1fcb3a9e25195adc12184e4b8d4d2f046

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e85671b283d97dcd7b67aa8907e5932e03627eef` · SHA-256 `36065dd142cd5fc80fc67bb8944386a1fcb3a9e25195adc12184e4b8d4d2f046`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import MathDiscovery.Kernel.Regularization

/-!
# Kronecker baseline

The Kronecker kernel is the zero semantic kernel plus the exact identity channel
with weight one.  It is the compatibility baseline for ordinary `ℓ²` concept
coordinates; it is not a useful semantic clustering kernel by itself.
-/

noncomputable section

namespace MathDiscovery.Kernel

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

end MathDiscovery.Kernel
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7ff98e5c9ebc75a2be68d5a2ed1a976aef51846e044de709b4c218df0e18b3ea -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Kronecker/Variant36065dd142cd5fc80fc67bb8944386a1fcb3a9e25195adc12184e4b8d4d2f046.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
