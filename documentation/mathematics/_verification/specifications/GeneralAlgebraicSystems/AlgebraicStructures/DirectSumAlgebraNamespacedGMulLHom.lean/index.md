# Verification target: Direct Sum Algebra Namespaced GMul LHom

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "707a183aad0ae39fbad7d2edd99411b6b0e091b6",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `707a183aad0ae39fbad7d2edd99411b6b0e091b6`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Module` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Ring` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/declarations/galgebra.md) | 52 | `declaration-track:a663defb72055c56b788a3fd32b952e5856c41a540064c66b63060ae79f79ee2` |
| 2 | `instance` | [Direct Sum Algebra Namespaced GMul LHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/declarations/smulcommclass-right.md) | 64 | `declaration-track:b8ed84debe2d692b0fe463ded1f304eaa0c56148b5adbd29c0b7620a672c0257` |
| 3 | `instance` | [Direct Sum Algebra Namespaced GMul LHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/declarations/isscalartower-right.md) | 70 | `declaration-track:b7bd525607688a79765757d3d38ad1d609adc7ce5f475a50e2fb22d271432f03` |
| 4 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/declarations/instance.md) | 78 | `declaration-track:91f0d475e54f76015847a922adb72ed7c26fa9dfc7b7cce879e2e9b9f977fdfd` |
| 5 | `theorem` | [algebraMap_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/declarations/algebramap-apply.md) | 104 | `result-track:e05ffd2e98f627f7b31e0927b3ff32f250cf36d5bdacc3e37110a63d4aa6c152` |
| 6 | `theorem` | [algebraMap_toAddMonoid_hom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/declarations/algebramap-toaddmonoid-hom.md) | 108 | `result-track:870c3c4f2703c89ad8f73995ed200fdd2f3a8683281da43ce10e91b38f328b8d` |
| 7 | `def` | [toAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/declarations/toalgebra.md) | 120 | `declaration-track:44d0d77b9120252c250ccb8b7ad33e00ea4051fd843e6f3e0081d9b0b68894fa` |
| 8 | `theorem` | [algHom_ext'](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/declarations/alghom-ext.md) | 134 | `result-track:304c9fd66951a1158ecd02603387addf0e30f7259e0dce56c30ff43ab24f8cf7` |
| 9 | `theorem` | [algHom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/declarations/alghom-ext-source-edition-2.md) | 138 | `result-track:5355dd77ed240ddbbc95f4f1cb987e56af78677fad4dcc833054be65e9119254` |
| 10 | `def` | [gMulLHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/declarations/gmullhom.md) | 145 | `declaration-track:d1d940e979aa58a099ba814c2bf49129674a525f2a3d86784e6c824f24e717a0` |
| 11 | `instance` | [Algebra.directSumGAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/DirectSumAlgebraNamespacedGMulLHom.lean/declarations/algebra-directsumgalgebra.md) | 162 | `declaration-track:a0b01de3f3705e1d3d5eca5597f3bae500763d3a1f7cfc5fba9c20735d257270` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f4a336908a495420a37c4713ca48518e4b21919f4c41f1416674eba8f4dfd8a2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Algebra/Variante0c3918a41a6002120e7b92244a07e0b6b40febfdaf3ad227a83819fb6ef28f4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
