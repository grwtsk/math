# Verification target: Univ LEPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c9d3f34d1b09bb7b8d5746792dbe97e0277de67a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant01de2497585c7be9dfdcba4ed57ee3b02d3be3c2868a091bc6dd5ca4f0f12a9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/UnivLEPublic.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/UnivLEPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c9d3f34d1b09bb7b8d5746792dbe97e0277de67a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant01de2497585c7be9dfdcba4ed57ee3b02d3be3c2868a091bc6dd5ca4f0f12a9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant01de2497585c7be9dfdcba4ed57ee3b02d3be3c2868a091bc6dd5ca4f0f12a9b.lean.json)

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
| 1 | `theorem` | [UnivLE.ofEssSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/UnivLEPublic.lean/declarations/univle-ofesssurj.md) | 26 | `result-track:06413ed17b1973e5f5dfe8560fe5024a544c2713cc514b810c60456cd2a96f4d` |
| 2 | `instance` | [EssSurj.ofUnivLE](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/UnivLEPublic.lean/declarations/esssurj-ofunivle.md) | 33 | `declaration-track:e816c70cfa09042eb92abf056d8679d55c2b34053823dbf5811211f6191ea212` |
| 3 | `theorem` | [UnivLE_iff_essSurj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/UnivLEPublic.lean/declarations/univle-iff-esssurj.md) | 38 | `result-track:25d19b7ad54167745436e6df6804058f1e7a47e26c8bad3aec3254161a249824` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/UnivLEPublic.lean/declarations/instance-source-edition-3.md) | 42 | `declaration-track:fbd1152c46c4329f15748cb20db7dae1aca5c9d643d9a7531d2af18a5e808000` |
| 5 | `def` | [UnivLE.witness](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/UnivLEPublic.lean/declarations/univle-witness.md) | 44 | `declaration-track:26157de49fe3f83cabb8f780ae9c857a38560cf3e702fafab4f22ebeb6b5d3c0` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/UnivLEPublic.lean/declarations/instance.md) | 47 | `declaration-track:39685ae554504501a9189e63b371b60fa33c2341ec5cc38df88f92aca2a7ba1c` |
| 7 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/UnivLEPublic.lean/declarations/instance-source-edition-2.md) | 50 | `declaration-track:58e4d6327f76eb0c799908d9c9142db4615389e14e1a185a7242426bcd4f2203` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a57293c7c31b7e9ee098840054fc7ce058eac2efd918131492e9e36b9c1e23d2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant01de2497585c7be9dfdcba4ed57ee3b02d3be3c2868a091bc6dd5ca4f0f12a9b.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/UnivLE/Variant01de2497585c7be9dfdcba4ed57ee3b02d3be3c2868a091bc6dd5ca4f0f12a9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
