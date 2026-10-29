# Verification target: Borel Space Continuous Linear Map Continuous Linear Map Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dc31e47bae93f65f831077b4f32b81869d8bd08",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/ContinuousLinearMap/Variant02e461007dbb966f495a3c767cfd02514298fdb59e1bc85233d33704fd2b0a43.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dc31e47bae93f65f831077b4f32b81869d8bd08`.

Source path: `GRWTSK/Analysis/MeasureTheory/ContinuousLinearMap/Variant02e461007dbb966f495a3c767cfd02514298fdb59e1bc85233d33704fd2b0a43.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/ContinuousLinearMap/Variant02e461007dbb966f495a3c767cfd02514298fdb59e1bc85233d33704fd2b0a43.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/declarations/measurable.md) | 31 | `result-track:aacac20f34c01f7f624eab8aaf9a9f094026e8995b86a8233170622dbbf17e81` |
| 2 | `theorem` | [measurable_comp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/declarations/measurable-comp.md) | 35 | `result-track:77254288b580c1e39f285d3e285b62858c624882faaa7b5edcbb8d1e175fcbe1` |
| 3 | `instance` | [instMeasurableSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/declarations/instmeasurablespace.md) | 47 | `declaration-track:49a882d4559cba9d1a1db364ea6105cf5e95c211d880cf5675642a56349e4975` |
| 4 | `instance` | [instBorelSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/declarations/instborelspace.md) | 50 | `declaration-track:2a3de0fa8672fd8d7106fdbe202fed99645aeb8e35618a8b81c4fb89fb386a63` |
| 5 | `theorem` | [measurable_apply](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/declarations/measurable-apply-source-edition-2.md) | 54 | `result-track:e0be0d71c492d6f0a913cb643a17ad59f97a68626b9f2133b2c98950fc3f9363` |
| 6 | `theorem` | [measurable_apply'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/declarations/measurable-apply.md) | 58 | `result-track:8e4a1e5ad941476b14815fc248929e8dd4f7bacac92fa8a5da4ccd6fc12d1c82` |
| 7 | `theorem` | [measurable_coe](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/declarations/measurable-coe.md) | 62 | `result-track:fce99ce8d6eeb451d4d05e92e99f2816c85173c86b8f0bfce5e62e9415c348d6` |
| 8 | `theorem` | [Measurable.apply_continuousLinearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/declarations/measurable-apply-continuouslinearmap.md) | 75 | `result-track:0e2189de0b9a3629812bc61faa2fce8358288d55d0061b4db45824bd0873bb54` |
| 9 | `theorem` | [AEMeasurable.apply_continuousLinearMap](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/declarations/aemeasurable-apply-continuouslinearmap.md) | 80 | `result-track:dc66b0551bc77d358e87faf6cf501536c8416c078ef9f261b05ba772173c534b` |
| 10 | `theorem` | [measurable_smul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/declarations/measurable-smul-const.md) | 92 | `result-track:8f53cc63285f48b6dad05317e6573f032adfe5ae22c983c6117c5c97cfa904e4` |
| 11 | `theorem` | [aemeasurable_smul_const](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/BorelSpaceContinuousLinearMapContinuousLinearMapPublic.lean/declarations/aemeasurable-smul-const.md) | 96 | `result-track:0aedbc7a31ec0802ed2db181dcc009855057308d40970271a2d35c16862d71a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=14320f840cb4777fa421a668ae11f6a34eac1692a1997c32abbe155c75aaaa5a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/ContinuousLinearMap/Variant02e461007dbb966f495a3c767cfd02514298fdb59e1bc85233d33704fd2b0a43.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/ContinuousLinearMap/Variant02e461007dbb966f495a3c767cfd02514298fdb59e1bc85233d33704fd2b0a43.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
