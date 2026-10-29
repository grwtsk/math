# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Feaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6ModeAlgebra.Variantfeaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8f9660bd8825a2250589a6afd1675405d22d740e` · SHA-256 `feaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaKernel
example (y : ℝ) (h : 2*y-3≠0) :
  -15+30*y-8*y^2 = (2*y-3)*(9+12/(2*y-3)-4*y) := by
  linear_combination -12 * (mul_inv_cancel₀ h)
example (y : ℝ) (h : 2*y-3≠0) :
  -75+330*y-224*y^2+32*y^3 = (2*y-3)*((9+12/(2*y-3)-4*y)^2 +(-16*y-96*y/(2*y-3)^2)) := by
  simp only [div_eq_mul_inv, ← inv_pow]
  linear_combination (48*((2*y-3)*(2*y-3)⁻¹)+96*y-168) * (mul_inv_cancel₀ h)
```

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1f14ad82407a5d107ceffbb71c82e89d965c8758fbdee7a44bd146502be1f961 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Feaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6ModeAlgebra/Variantfeaffc2746143efc57e68638d2ab14893357a8a3fd08d3f86d3cb73bb29c2dc6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
