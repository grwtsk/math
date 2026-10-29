# Verification target: Results Alternative29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "968daf6c8f26099021b7ba24d87c9705d2e5d211",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantde1704faa91f155ddfa40f1f59e3e7a1b7361c03cb0cc372a40302f08cb60f63.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `968daf6c8f26099021b7ba24d87c9705d2e5d211`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantde1704faa91f155ddfa40f1f59e3e7a1b7361c03cb0cc372a40302f08cb60f63.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantde1704faa91f155ddfa40f1f59e3e7a1b7361c03cb0cc372a40302f08cb60f63.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSingleModeCharlierObstruction` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Block` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaPhiAffinePascalSeven](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/declarations/thetaphiaffinepascalseven.md) | 42 | `declaration-track:c99b55becccb0db9ff1f22628107d02b225d0d7272fb2c6b1f3dc097469163ca` |
| 2 | `theorem` | [thetaPhiAffinePascalSeven_lower](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/declarations/thetaphiaffinepascalseven-lower.md) | 50 | `result-track:1e70d6847198182bbfbeef394996a5da8c210ccc94b26605a52eb55587ee81a2` |
| 3 | `theorem` | [thetaPhiAffinePascalSeven_det](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/declarations/thetaphiaffinepascalseven-det.md) | 59 | `result-track:ef5beaf483f8838e6aa3bddce7504b962ac4fc2aa9aacdaa51ac06306e45216c` |
| 4 | `def` | [thetaPhiSignedTouchardChristoffelMoment](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/declarations/thetaphisignedtouchardchristoffelmoment.md) | 70 | `declaration-track:7a7087397f7f0cfe01e9392b0231bcdb53cad6163be930b8f3043d771f760d4a` |
| 5 | `def` | [thetaPhiSignedTouchardChristoffelHankelSeven](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/declarations/thetaphisignedtouchardchristoffelhankelseven.md) | 76 | `declaration-track:33c267cc65f5d76f1ce9817e0b4e21d7c2904edc6153f206c80f911e9f55ca37` |
| 6 | `theorem` | [thetaPhiGeneralizedTouchardChristoffelSeven_eq_affine](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/declarations/thetaphigeneralizedtouchardchristoffelseven-eq-affine.md) | 86 | `result-track:7b59f399a621db35c4237d2d2031c74056188bf09673dc52af42f1df89d2d0a0` |
| 7 | `theorem` | [thetaPhiDerivativePolynomialHankelSeven_eq_christoffel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/declarations/thetaphiderivativepolynomialhankelseven-eq-christoffel.md) | 108 | `result-track:2215ac3b9c8b7e328bd38041b4724709e7167daa5920031bc425cbff6aa5c859` |
| 8 | `theorem` | [thetaPhiRankSevenSignedJet_eq_touchardChristoffel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/declarations/thetaphiranksevensignedjet-eq-touchardchristoffel.md) | 126 | `result-track:16d57a10bf86350efc82117ec6a108497c8901723dc8610f14a3bfab237e9e95` |
| 9 | `theorem` | [thetaPhiRankSeven_factorial_product](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/declarations/thetaphirankseven-factorial-product.md) | 145 | `result-track:775c778cbbdfcd3cc38e2e331993bb806360cddc9774c9f53dca2ce958cf4aa0` |
| 10 | `def` | [ThetaPhiOneModeRankSevenTouchardChristoffelBridge](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/declarations/thetaphionemoderankseventouchardchristoffelbridge.md) | 151 | `declaration-track:e60fe5bcd442ddb2ae20ec8e33b628238a33910b8424cb9272adba7cbb7d88cf` |
| 11 | `theorem` | [thetaPhiOneModeRankSevenCharlierBridge_of_touchardChristoffel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/declarations/thetaphionemoderanksevencharlierbridge-of-touchardchristoffel.md) | 160 | `result-track:ed8a701f464ea6de4502b1a151b46251ac4e24e9a3a0a4cbeb024454297f3a34` |
| 12 | `theorem` | [not_thetaPhiSignedMomentParityCriterion_of_touchardChristoffel](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/ResultsAlternative29.lean/declarations/not-thetaphisignedmomentparitycriterion-of-touchardchristoffel.md) | 173 | `result-track:dd5c28423147d5cf5389d057d280bc51e73b63f9c780be5596c235aa427e3756` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=be93f26589e6eeb4c97035d9c7415921ceaeba6bacdebb9cbb54e81001d3ff68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantde1704faa91f155ddfa40f1f59e3e7a1b7361c03cb0cc372a40302f08cb60f63.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ThetaPositiveLift/Variantde1704faa91f155ddfa40f1f59e3e7a1b7361c03cb0cc372a40302f08cb60f63.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
