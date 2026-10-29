# Verification target: Types Comm Grp

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff31a53f05a0c0803e4b7dd532219c6b1b773d75",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesCommGrp.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesCommGrp.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff31a53f05a0c0803e4b7dd532219c6b1b773d75`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Internal.Types.Grp_` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.CommGrp_` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [commGrpCommGroup](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesCommGrp.lean/declarations/commgrpcommgroup.md) | 24 | `declaration-track:ec06d863b43035ff889427bd286204f985d827ab73376659f9befb5d6d09ac27` |
| 2 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesCommGrp.lean/declarations/functor.md) | 29 | `declaration-track:45254cbb0ec4f980ac31dcdb9a2324db6318e3e19ba329f77009289cb1d504fb` |
| 3 | `def` | [inverse](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesCommGrp.lean/declarations/inverse.md) | 34 | `declaration-track:150facb8d41670d88d1cfc9b9fb006359412c581c480fa62c8b5104be59f0f72` |
| 4 | `theorem` | [inverse_obj_X](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesCommGrp.lean/declarations/inverse-obj-x.md) | 43 | `result-track:135d20177f166b8944eb922e84e20ca8a7449ade66beb7e790561b696a74018a` |
| 5 | `theorem` | [inverse_obj_one](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesCommGrp.lean/declarations/inverse-obj-one.md) | 45 | `result-track:42bd6bb0df1df70dbf5d582141bed7b30fafb40d011a2b905156064be55b893b` |
| 6 | `theorem` | [inverse_obj_mul](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesCommGrp.lean/declarations/inverse-obj-mul.md) | 47 | `result-track:0e2875da4852fa7befeb478c3be8ec8ff2e6aef7ef6aaabca37d1dfb6a206743` |
| 7 | `theorem` | [inverse_obj_inv](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesCommGrp.lean/declarations/inverse-obj-inv.md) | 49 | `result-track:1f11e08917834749a97c0a82672ee286dd83443088ada1ec7815fe450e92d3a7` |
| 8 | `def` | [commGrpTypeEquivalenceCommGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesCommGrp.lean/declarations/commgrptypeequivalencecommgrp.md) | 55 | `declaration-track:4a45d8f4c57428e1e24bad8dc12dbd5282c65cea952367163ea84e970e2da802` |
| 9 | `def` | [commGrpTypeEquivalenceCommGrpForgetGrp](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesCommGrp.lean/declarations/commgrptypeequivalencecommgrpforgetgrp.md) | 66 | `declaration-track:b624a75d1c68b1287b0064d47834fdfb12969ac2a69861d432eefe2b7f31b182` |
| 10 | `def` | [commGrpTypeEquivalenceCommGrpForgetCommMon](../../../../../CategoryTheoryHomologicalAlgebra/MonoidalCategoriesAndOperads/TypesCommGrp.lean/declarations/commgrptypeequivalencecommgrpforgetcommmon.md) | 74 | `declaration-track:810ef6f25a90bd860497734e3b139ec16d2b8edbe65d2e2ea1dc8181d1dba789` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=91dc2b22e8efc1b880f5e7faa8041e313df8e22fbac6cb8b594e0bdb48a35076 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/CommGrp/Variant54dccdff7aef544d35065d1aec8bbef8efa274976ed0068ec46de3ff4c3bc4ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
