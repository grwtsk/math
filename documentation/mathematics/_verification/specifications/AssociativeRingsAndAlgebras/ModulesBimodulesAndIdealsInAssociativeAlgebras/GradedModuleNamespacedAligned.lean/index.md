# Verification target: Graded Module Namespaced Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c10f4ef2ef1011fcfa7119b377819353f81b7a0",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant2a77e38d08cd76eb8e7c9c58faf424acea1f5d999f29a6fc33e658a64eb32f19.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c10f4ef2ef1011fcfa7119b377819353f81b7a0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant2a77e38d08cd76eb8e7c9c58faf424acea1f5d999f29a6fc33e658a64eb32f19.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GradedModule/Variant2a77e38d08cd76eb8e7c9c58faf424acea1f5d999f29a6fc33e658a64eb32f19.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.GradedAlgebra.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GradedMulAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectSum.Decomposition` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.BigOperators` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [GdistribMulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/gdistribmulaction.md) | 45 | `declaration-track:07ba06f634115be87c9ff4e6b3bf2da83d64dfe06b5f951f8406a710f5cfdf3a` |
| 2 | `class` | [Gmodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/gmodule.md) | 52 | `declaration-track:840db3fcf95c14074061df6f224110e3ea90b84cb4ad2cf56a7317438b38dc4b` |
| 3 | `instance` | [GSemiring.toGmodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/gsemiring-togmodule.md) | 59 | `declaration-track:aa46e4c1fe5e33847a5cc6c4985911055a1a1e59a2c4149a5799d6157be8d350` |
| 4 | `def` | [gsmulHom](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/gsmulhom.md) | 72 | `declaration-track:05b4259c13b1010e3881242d6d9325ef59d7a496b6ea1ec83fd9cde4683518fa` |
| 5 | `def` | [smulAddMonoidHom](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/smuladdmonoidhom.md) | 85 | `declaration-track:df9d42a9e7882aaf14bd106d6866e4b2e6b0b5f00a8c283fce003964f6628595` |
| 6 | `instance` | [(anonymous)](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/instance.md) | 96 | `declaration-track:7e597b3433ebeb8d7291560c456376cdd36b272d97c006df0285c9ab965b7f42` |
| 7 | `theorem` | [smul_def](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/smul-def.md) | 100 | `result-track:e4dbe82de6ed78b149771762a9456510f3025217a3e7a6e3da5122a2368ad610` |
| 8 | `theorem` | [smulAddMonoidHom_apply_of_of](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/smuladdmonoidhom-apply-of-of.md) | 105 | `result-track:609b222627d3ba7870d2a0356dcab71eaac6ebb634d1e959d157d5c6221d7013` |
| 9 | `theorem` | [of_smul_of](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/of-smul-of.md) | 112 | `result-track:feefbe99c3143b81ee340c3577dcd9d27913f30cb67cd4700d7bffcf81eadf4e` |
| 10 | `theorem` | [one_smul'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/one-smul.md) | 121 | `result-track:d80b4fcef5f81fcae84c518cd55a56baf521be40ec6bb15ca2ee399c97125364` |
| 11 | `theorem` | [mul_smul'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/mul-smul.md) | 131 | `result-track:60d28a51aba90b3beac27a608cb6ecc5abc99079307235920f21969db26ecad1` |
| 12 | `instance` | [module](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/module.md) | 151 | `declaration-track:336c94d8266e8497196ef7c004c15eb520db6eb4e213b5dc81bf39bed7a073cf` |
| 13 | `instance` | [gmulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/gmulaction.md) | 181 | `declaration-track:18a0482e9f0edd0ee4ce49ebb6ce97b52cd67e56fe414fa0220b7ccc016c6129` |
| 14 | `instance` | [gdistribMulAction](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/gdistribmulaction-source-edition-2.md) | 190 | `declaration-track:ddfb2ddd40ce3b03bc9a97da6569ddbef4da1f95843821834a0689a6ee34e28a` |
| 15 | `instance` | [gmodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/gmodule-source-edition-2.md) | 204 | `declaration-track:8fb7c40683703e94761219ce0f75517af5ffd2dcaeab059f5b7207497e02652e` |
| 16 | `def` | [isModule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/ismodule.md) | 223 | `declaration-track:d2cd70ec0e06601ccde0428c787442c22aff05a405ae6f51fc6bcbf74be0d914` |
| 17 | `def` | [linearEquiv](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/GradedModuleNamespacedAligned.lean/declarations/linearequiv.md) | 231 | `declaration-track:c8f7129ce53e195b3b85aa7bf52c81a9722a816335ff25637649ee1f0d802bef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2241a8d75beece83a27c97e5ff180722c287bbb7e69391a19270c31e4379fe1b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/GradedModule/Variant2a77e38d08cd76eb8e7c9c58faf424acea1f5d999f29a6fc33e658a64eb32f19.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/GradedModule/Variant2a77e38d08cd76eb8e7c9c58faf424acea1f5d999f29a6fc33e658a64eb32f19.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
