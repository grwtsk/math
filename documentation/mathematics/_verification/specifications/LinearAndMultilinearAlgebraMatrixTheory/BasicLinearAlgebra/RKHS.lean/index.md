# Verification target: RKHS

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a8e716f6a89b790e18376f125a00bdbe3575e44",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant1b4ade0aaa87374cd6c0327bb60c638da84c96baf3e0c1df3f6e1ea721e8f2cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a8e716f6a89b790e18376f125a00bdbe3575e44`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant1b4ade0aaa87374cd6c0327bb60c638da84c96baf3e0c1df3f6e1ea721e8f2cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant1b4ade0aaa87374cd6c0327bb60c638da84c96baf3e0c1df3f6e1ea721e8f2cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Rhetorical.FeatureMap` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Continuous` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rhetoricalEvaluation](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/declarations/rhetoricalevaluation.md) | 23 | `declaration-track:29d6d6a9fa9fe0a8e39dda0667d5594ad7521f70810cfbf26c1c4114ac2af5c9` |
| 2 | `abbrev` | [RhetoricalFunction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/declarations/rhetoricalfunction.md) | 29 | `declaration-track:3a0e64f9c0f034bb51c0e26205df288494eeff04f817d11d08d1a14a7e0a9059` |
| 3 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/declarations/instance.md) | 31 | `declaration-track:6f59dfec5d4071073b6eba10263bcef749a26bd8ffe925684f0f22c5eb069dea` |
| 4 | `def` | [toRhetoricalFunction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/declarations/torhetoricalfunction.md) | 36 | `declaration-track:a51d40c6b23003c9099bc018b3c1901a6fd3a1c02ce79258954ec46dd61456fd` |
| 5 | `theorem` | [toRhetoricalFunction_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/declarations/torhetoricalfunction-apply.md) | 41 | `result-track:02f2b431469682baba366b043e17809a658266759fbf98cce101ac7c5aa498a2` |
| 6 | `def` | [kernelSection](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/declarations/kernelsection.md) | 48 | `declaration-track:8a5b8e4d3c610583cf9f417e259d2b19741713cb36ce5e1d860763db16cf3ef4` |
| 7 | `theorem` | [kernelSection_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/declarations/kernelsection-apply.md) | 52 | `result-track:90aa0e4e62989dcf0f8e37e422ecda17ad4c09ee5d4ebfca48c4754c543a5658` |
| 8 | `theorem` | [reproducing_property](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/declarations/reproducing-property.md) | 59 | `result-track:40347b603109b64f80991b2378eeaceda48fb47711e06db40a250aec9a6aecc9` |
| 9 | `theorem` | [rhetoricalFunction_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/declarations/rhetoricalfunction-ext.md) | 65 | `result-track:8c935af9cea69e49f08e211cccc369d21487e7a26d3abe705cfe27a755b99dd6` |
| 10 | `theorem` | [toRhetoricalFunction_injective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/declarations/torhetoricalfunction-injective.md) | 88 | `result-track:1395af6b3dae0288ff477862e1f67d361e83891ffe2332eb13befc90580f7c41` |
| 11 | `def` | [featureSpace_equiv_RKHS](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/declarations/featurespace-equiv-rkhs.md) | 97 | `declaration-track:c0a9a9901cdbd3976ba3ef37dd9cb55e62bf12ca377a51c61c231897c2c8c37f` |
| 12 | `theorem` | [featureSpace_equiv_RKHS_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RKHS.lean/declarations/featurespace-equiv-rkhs-apply.md) | 102 | `result-track:d9147c70e1a60265d8a93345c67d5836108b00698902182bb08ccece5196c3ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fbc886ea9344e0f1c8799674e3857c9fb498dce345034b10eabfb7ca21469c58 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant1b4ade0aaa87374cd6c0327bb60c638da84c96baf3e0c1df3f6e1ea721e8f2cd.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/RKHS/Variant1b4ade0aaa87374cd6c0327bb60c638da84c96baf3e0c1df3f6e1ea721e8f2cd.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
