# Verification target: Poincare Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c515e8e039695cbb48aa58af65271ef278faf615",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PoincareNamespacedPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PoincareNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c515e8e039695cbb48aa58af65271ef278faf615`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.AddTorsor.AffineMap` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt_off_countable_real](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PoincareNamespacedPublic.lean/declarations/curveintegral-add-curveintegral-eq-of-hasfderivwithinat-off-countable-re.md) | 59 | `result-track:c607001b5cb2bc7d9278e569e2f7ed989141cf119c5f80b94e5dff5c55e0ecf8` |
| 2 | `theorem` | [curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt_off_countable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PoincareNamespacedPublic.lean/declarations/curveintegral-add-curveintegral-eq-of-hasfderivwithinat-off-countable.md) | 240 | `result-track:d7f43c265f36dae43e16e91aa4b3f8bfd3ded6b7b446c618a7e46d5541ce1d4f` |
| 3 | `theorem` | [curveIntegral_add_curveIntegral_eq_of_hasFDerivWithinAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PoincareNamespacedPublic.lean/declarations/curveintegral-add-curveintegral-eq-of-hasfderivwithinat.md) | 265 | `result-track:cb684c2f2a7e5edefadc41d6463a59b9394446e8e8ba986787b36ceaa66a031c` |
| 4 | `theorem` | [curveIntegral_add_curveIntegral_eq_of_diffContOnCl](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PoincareNamespacedPublic.lean/declarations/curveintegral-add-curveintegral-eq-of-diffcontoncl.md) | 283 | `result-track:6cd6bb72bc35fea0d5ae50476cfb51dea9115d8be059a35ac748718fdcbb1106` |
| 5 | `theorem` | [curveIntegral_segment_add_eq_of_hasFDerivWithinAt_symmetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PoincareNamespacedPublic.lean/declarations/curveintegral-segment-add-eq-of-hasfderivwithinat-symmetric.md) | 311 | `result-track:2b52202d08e94ebe23e5c1fb9063a559befcd3f32a9f4244d20f65013162e374` |
| 6 | `theorem` | [hasFDerivWithinAt_curveIntegral_segment_of_hasFDerivWithinAt_symmetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PoincareNamespacedPublic.lean/declarations/hasfderivwithinat-curveintegral-segment-of-hasfderivwithinat-symmetric.md) | 351 | `result-track:da2d01ac88fc9648514d5cb32a17b2d13788320d5e9d2eff44bcd092016d1656` |
| 7 | `theorem` | [exists_forall_hasFDerivWithinAt_of_hasFDerivWithinAt_symmetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PoincareNamespacedPublic.lean/declarations/exists-forall-hasfderivwithinat-of-hasfderivwithinat-symmetric.md) | 365 | `result-track:f08e7c9059ae2a0e1fabd959803d177e0e83038afa5bdf9b484c041059672015` |
| 8 | `theorem` | [exists_forall_hasFDerivWithinAt_of_fderivWithin_symmetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PoincareNamespacedPublic.lean/declarations/exists-forall-hasfderivwithinat-of-fderivwithin-symmetric.md) | 377 | `result-track:d4c3fdd188d3dcb3c4639c6c888b1b4c9b32478985bd9dc09eef948ddc70fe34` |
| 9 | `theorem` | [exists_forall_hasFDerivAt_of_fderiv_symmetric](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PoincareNamespacedPublic.lean/declarations/exists-forall-hasfderivat-of-fderiv-symmetric.md) | 387 | `result-track:30205df9ab935473d3c12d038c4a01459b8b1e6ec0017125b158c3a56372416a` |
| 10 | `theorem` | [exists_forall_hasDerivWithinAt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/PoincareNamespacedPublic.lean/declarations/exists-forall-hasderivwithinat.md) | 404 | `result-track:7fb3179c39368121edf7d464fcfddd08812a6407a148e971b797bf90f8e2494d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f778b51360b32952dbec7855e9288f5c58da9530434c802cfbe9727e165e2d5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/Poincare/Variant7ad6f56641ba7feebcb19c338050ab8ad1f102a8c7f48ae1a1d038dfdb231b7d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
