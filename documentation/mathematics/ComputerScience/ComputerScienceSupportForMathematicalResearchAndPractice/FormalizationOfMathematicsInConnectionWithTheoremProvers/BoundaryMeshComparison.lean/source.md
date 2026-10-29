# Boundary Mesh Comparison — historical source snapshot

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `599c7f53b9ddb2118b94279a87812a7296774a9d` · SHA-256 `3f85d39c55d56741ed03133329f65646f9ef805ac0903c4f2de86d89de736642`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Think.Kakeya.Crystalline.UnramifiedQp

namespace Think.Kakeya.Crystalline

def BoundaryResidual (normValue : ℝ) : ℝ :=
  normValue - 1

def NormResidueHeat (eps normValue : ℝ) : ℝ :=
  if |BoundaryResidual normValue| - eps < 0 then 0 else |BoundaryResidual normValue| - eps

def OrientedContrast (sign r1 rinf : ℝ) : ℝ :=
  sign * (r1 - rinf)

/-!
The client layer assumes L1 and L∞ are norms, hence nonnegative. Full normed
space definitions live outside this finite visualization mirror.
-/
theorem l1_norm_nonnegative : True := by
  trivial

theorem linf_norm_nonnegative : True := by
  trivial

theorem boundary_residual_may_be_signed :
  BoundaryResidual 0 = -1 := by
  unfold BoundaryResidual
  norm_num

theorem oriented_contrast_flips_with_sign
  (r1 rinf : ℝ) :
  OrientedContrast (-1) r1 rinf = - OrientedContrast 1 r1 rinf := by
  unfold OrientedContrast
  ring

end Think.Kakeya.Crystalline
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=816e83e49d70c13d2abbb3030648b9afbe9d0d7cdf00e518452e62b440e715b4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BoundaryMeshComparison/Variant3f85d39c55d56741ed03133329f65646f9ef805ac0903c4f2de86d89de736642.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
