# Verification target: Limits

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ef51a45cd0b54e762e9159e66d825dd59f9b482",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Limits/Variant5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ef51a45cd0b54e762e9159e66d825dd59f9b482`.

Source path: `GRWTSK/Algebra/GroupTheory/Limits/Variant5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Limits/Variant5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Creates` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Submonoid.Operations` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MonCatMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/moncatmax.md) | 36 | `declaration-track:2d844d612f7ab5e907568be51bdc74eac0e98c64eebd3ecb812a65b01117a910` |
| 2 | `instance` | [monoidObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/monoidobj.md) | 43 | `declaration-track:6bddb8fc34ad25445f58f7832f380b092fd10ae0c6f500e99d9e2d3a746c86a7` |
| 3 | `def` | [sectionsSubmonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/sectionssubmonoid.md) | 53 | `declaration-track:ca978f620b1dc584b41b145e22bca3097c1f75fbdd1ec6e8bfe9f88d1589a7bb` |
| 4 | `instance` | [limitMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/limitmonoid.md) | 64 | `declaration-track:8ba5a14b740dada40924270d44e145c405850030742b1188468dc6ba93f11fef` |
| 5 | `def` | [limitπMonoidHom](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/limit-monoidhom.md) | 72 | `declaration-track:422458b9d8535c36643237936e6bf80eafd1057dfbb375de05acad5cbe6c0a19` |
| 6 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/limitcone.md) | 90 | `declaration-track:0808654bce630d04635b649e8830b69850abcccba4223358f838bf458226a270` |
| 7 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/limitconeislimit.md) | 104 | `declaration-track:6ef1b12d25898d108398c37f21843c227a8c2b54716bd4ca85e36cfc0bbdb86d` |
| 8 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/haslimitsofsize-source-edition-2.md) | 117 | `declaration-track:a2f5d34175d3a675999ef6c080a8350aededde8cf41e41c994f4ea3fca6748ba` |
| 9 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/haslimits.md) | 127 | `declaration-track:29da246bb5cc8e06bc3b91baefa7dba7a2e2276e56c7e2a218cc8780f6aad94a` |
| 10 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/forgetpreserveslimitsofsize-source-edition-2.md) | 137 | `declaration-track:66a870b578ea85f40b683cf9bd13d9f5c8e978d15d384219517df9febe4b6719` |
| 11 | `instance` | [forgetPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/forgetpreserveslimits-source-edition-2.md) | 147 | `declaration-track:a81686eaf887d2bf4e346f65c954ceaa59c0ac21b35cb5e85e61355819194312` |
| 12 | `abbrev` | [CommMonCatMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/commmoncatmax.md) | 161 | `declaration-track:0098fadfa761001f6f4e3ae85a91d3256fd29ace469b904833fd6482d342a0e7` |
| 13 | `instance` | [commMonoidObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/commmonoidobj.md) | 168 | `declaration-track:4f3676f2c2cbe9d83ce6da36b28bf510981d9d6174b1f5903235e187a4501e86` |
| 14 | `instance` | [limitCommMonoid](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/limitcommmonoid.md) | 176 | `declaration-track:99cc656b9d27cda03c016946f87bce55ab57b8120354aec3dcb1ae0549af295b` |
| 15 | `instance` | [forget₂CreatesLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/forget-createslimit.md) | 190 | `declaration-track:b5c1dd6b6cef624115b632961fe5724311069eca2a437430ee4704695cc72cbf` |
| 16 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/limitcone-source-edition-2.md) | 210 | `declaration-track:09fe0048611912121a7fb429cd3d7cf06a9e7dc75cd084f724e3db7b81110f6e` |
| 17 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/limitconeislimit-source-edition-2.md) | 220 | `declaration-track:91a6d7b3d0b01e921607ed0eae3dbff7628d87f9d689df16206b27ee090b7a9f` |
| 18 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/haslimitsofsize.md) | 227 | `declaration-track:9f0274ff42d2cffff6d8bd0993621465566e900db12c055765dbd2d06b87f4cb` |
| 19 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/haslimits-source-edition-2.md) | 234 | `declaration-track:3821aba4b7b52e43788430a503f12628bf61d2a518adf5b29d91099cc5d4642a` |
| 20 | `instance` | [forget₂MonPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/forget-monpreserveslimitsofsize.md) | 246 | `declaration-track:fb847285498065b258718c10e94ae70368452077607da461b30f00f56f41328c` |
| 21 | `instance` | [forget₂MonPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/forget-monpreserveslimits.md) | 253 | `declaration-track:5c494233b192581a4bb91773320ecbdeab7611a1d6bfac103927c3ed191fe91e` |
| 22 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/forgetpreserveslimitsofsize.md) | 265 | `declaration-track:59a856aa5a2e324799443af4e98329249717e9e89a7efd30e9cf2a758ef1a846` |
| 23 | `instance` | [forgetPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Limits.lean/declarations/forgetpreserveslimits.md) | 276 | `declaration-track:7ecdbdb74aa1f6f2dae27390831a7e3f1af39128abc1428c4d6507b8ec74a8eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=33148b40a142080e4e7e62430530ff8893a8163458d48720383b8063b798e32b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Limits/Variant5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Limits/Variant5adec58ac9a6f5e17c410659225321080a581ac9ea4ebfb5d6a990362d1d0db3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
