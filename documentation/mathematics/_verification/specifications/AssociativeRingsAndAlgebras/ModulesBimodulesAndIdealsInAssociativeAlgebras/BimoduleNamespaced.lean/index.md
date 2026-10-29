# Verification target: Bimodule Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e2e16bfc315d33903ef77d5f90d5c675ce18444",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Bimodule/Varianta04751c72edb32e8c2e605bb05e20269bb3f52a3b78518a826d9cc6a866b7979.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/BimoduleNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/BimoduleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e2e16bfc315d33903ef77d5f90d5c675ce18444`.

Source path: `GRWTSK/Algebra/Bimodule/Varianta04751c72edb32e8c2e605bb05e20269bb3f52a3b78518a826d9cc6a866b7979.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Bimodule/Varianta04751c72edb32e8c2e605bb05e20269bb3f52a3b78518a826d9cc6a866b7979.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.TensorProduct.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mk](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/BimoduleNamespaced.lean/declarations/mk.md) | 86 | `declaration-track:ec7560d83ec7d5479e875144920e51b0e63d21d9bdf032caa54e15a4ac70b284` |
| 2 | `theorem` | [smul_mem](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/BimoduleNamespaced.lean/declarations/smul-mem.md) | 95 | `result-track:cee8090fec3bc4d0df5743fe85b5316708a3b2d214e67f2765352f6c3aa82336` |
| 3 | `theorem` | [smul_mem'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/BimoduleNamespaced.lean/declarations/smul-mem-source-edition-2.md) | 99 | `result-track:d69120012f0de2f808610c2680d7083df136a4c91392cf3f986e508343679582` |
| 4 | `def` | [baseChange](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/BimoduleNamespaced.lean/declarations/basechange.md) | 106 | `declaration-track:eb4cbe29a2d6056c4b6a86a5ac4ab23598cc6ca69eccc4ccd0dc030bea582670` |
| 5 | `def` | [toSubmodule](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/BimoduleNamespaced.lean/declarations/tosubmodule-source-edition-2.md) | 113 | `declaration-track:e3b0c9e632fce3ff0dc724b58dee0d81795b32bd7b22629837c0651d0e46365e` |
| 6 | `def` | [toSubmodule'](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/BimoduleNamespaced.lean/declarations/tosubmodule.md) | 120 | `declaration-track:78e5ed21d2ebd8f7eb32ff5740882dc040515ffa03ae368d0ec6ea4f9a64cd6f` |
| 7 | `def` | [toSubbimoduleInt](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/BimoduleNamespaced.lean/declarations/tosubbimoduleint.md) | 135 | `declaration-track:ea01310fab4a15f23b4f487c2e11e2bc7e467e2a600b04f6cc84e4fd32799084` |
| 8 | `def` | [toSubbimoduleNat](../../../../../AssociativeRingsAndAlgebras/ModulesBimodulesAndIdealsInAssociativeAlgebras/BimoduleNamespaced.lean/declarations/tosubbimodulenat.md) | 141 | `declaration-track:dc2f8c2baa0dc8b4fefd09108475cae5eb3aea8753e56ebffe9ee22c30b51484` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=35075b13c89b540d06a7cb0604fab479b77439dc0157a35b3b6b162fef0f889b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Bimodule/Varianta04751c72edb32e8c2e605bb05e20269bb3f52a3b78518a826d9cc6a866b7979.lean","GRWTSK/_verification/specifications/Algebra/Bimodule/Varianta04751c72edb32e8c2e605bb05e20269bb3f52a3b78518a826d9cc6a866b7979.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
