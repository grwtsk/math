# Verification target: Limits Namespaced Forget Add Comm Group Preserves Limits Aux

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9294ca924da1c295cc69c9cd10f8321f0b29cd63",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Limits/Variant647a31daa37d20f8cbc3720c8f7474ef0f76a081ccb2b9520abd0daca337c8d2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9294ca924da1c295cc69c9cd10f8321f0b29cd63`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Limits/Variant647a31daa37d20f8cbc3720c8f7474ef0f76a081ccb2b9520abd0daca337c8d2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Limits/Variant647a31daa37d20f8cbc3720c8f7474ef0f76a081ccb2b9520abd0daca337c8d2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Limits` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.DirectLimit` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [addCommGroupObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/addcommgroupobj.md) | 45 | `declaration-track:8d81e3b7c1751b36f89d382286da7e92a08b5501290c8eb0c32f6e2d22386e46` |
| 2 | `instance` | [moduleObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/moduleobj.md) | 52 | `declaration-track:0d4396eb591079db93add61677fa3e3f0badbba6bf53343bf01ddc729b9fc0b5` |
| 3 | `def` | [sectionsSubmodule](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/sectionssubmodule.md) | 60 | `declaration-track:bccf1564bc60fa8f5c15dc036981b5b844fb34a766c2a1bb9c50ec88716b2d5c` |
| 4 | `instance` | [limitAddCommMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/limitaddcommmonoid.md) | 73 | `declaration-track:f2a981c5079ca5c3cbd72aba90a2d51ab34b6759fb14552c4b1941da983dbc74` |
| 5 | `instance` | [limitAddCommGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/limitaddcommgroup.md) | 78 | `declaration-track:8cf0c670aef72d6f142940d75781990fda9a80fe31a2f87a599df76f20c950c6` |
| 6 | `instance` | [limitModule](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/limitmodule.md) | 83 | `declaration-track:0d120ae225c6327062f1874ba45eb8158b67ad9d303758c4f16b1c6e29c29719` |
| 7 | `def` | [limitπLinearMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/limit-linearmap.md) | 89 | `declaration-track:a33e91c23c68eab71a42a4e9cda3626dd69b3bc9e535ee821dc5a220ff45d50c` |
| 8 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/limitcone.md) | 105 | `declaration-track:d732e8ffe0d3e10e8b3d4a474dbdfb54d62ee53eaa2d9c44e43143541eb89151` |
| 9 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/limitconeislimit.md) | 116 | `declaration-track:7050f67700ee678b4c022e6c42ca44189d04ef10700cb84d6df4977d47dcacc8` |
| 10 | `lemma` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/haslimitsofsize.md) | 135 | `result-track:0e7cdf41a3ec72411c65751ace83718b654569cbdf267903b02cdd2a4a3f06cc` |
| 11 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/haslimits.md) | 142 | `declaration-track:2f6aeff5b0257ec44f4b0e545f6017c7ca37db711763e65569ff318967c8280c` |
| 12 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/instance.md) | 146 | `declaration-track:87bfe0f74c7169a9c864a4576d596087f36d43e701d16c4c85abcc13d45929dc` |
| 13 | `def` | [forget₂AddCommGroupPreservesLimitsAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/forget-addcommgrouppreserveslimitsaux.md) | 151 | `declaration-track:7e2a7dca682ad0d231f0a65924272ed8fc8b3bd836b2d8715d327562d9b16930` |
| 14 | `instance` | [forget₂AddCommGroupPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/forget-addcommgrouppreserveslimitsofsize.md) | 159 | `declaration-track:a5a533e70734e6728cabe5497fe952f910cb0208c9f7ede157976742f89848b3` |
| 15 | `instance` | [forget₂AddCommGroupPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/forget-addcommgrouppreserveslimits.md) | 167 | `declaration-track:25607b8fc7ea23ebb23b3fcc5981afd6099adee1ca500db766a580382c800ff0` |
| 16 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/forgetpreserveslimitsofsize.md) | 174 | `declaration-track:8092f2a7c9772f480f5e438eaf9e6388cfcc5e32b2deb86ab2c65d58eda89e5e` |
| 17 | `instance` | [forgetPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/forgetpreserveslimits.md) | 181 | `declaration-track:4c287f6ec59b8a8c99b7735cbfa390d4ccf16ef8561d0053e0341a58f3243fb2` |
| 18 | `def` | [directLimitDiagram](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/directlimitdiagram.md) | 202 | `declaration-track:6d8518571a2b0c25024324067cbcb8c1f427e6ef28573cf75490e2f1d5b37a24` |
| 19 | `def` | [directLimitCocone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/directlimitcocone.md) | 223 | `declaration-track:1d42239ef933ec2a1120d512fa481c63f2cd48f968067f54c8d1c1f0ba87446a` |
| 20 | `def` | [directLimitIsColimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/LimitsNamespacedForgetAddCommGroupPreservesLimitsAux.lean/declarations/directlimitiscolimit.md) | 236 | `declaration-track:ffa6d3cfc6a00794ec49b78f7bd2b1a460bc040cbf76680364cb14159b2cd3d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bfb522697843a4eda3cb69f8b6e03583b62d4e73e2c41667f69c58ebf27a28a6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Limits/Variant647a31daa37d20f8cbc3720c8f7474ef0f76a081ccb2b9520abd0daca337c8d2.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Limits/Variant647a31daa37d20f8cbc3720c8f7474ef0f76a081ccb2b9520abd0daca337c8d2.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
