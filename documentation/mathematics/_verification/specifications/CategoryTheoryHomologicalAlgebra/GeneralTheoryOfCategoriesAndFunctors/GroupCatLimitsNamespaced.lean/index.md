# Verification target: Group Cat Limits Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b65bcedfbd90230574cb96c5fccba236c4cef2b3",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b65bcedfbd90230574cb96c5fccba236c4cef2b3`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Preadditive` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Over` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.ReflectsIso` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GroupCatMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/groupcatmax.md) | 44 | `declaration-track:ea08f77d71d8ac23baf4f2d4575304951bf0614e159704c65424eb595926207c` |
| 2 | `instance` | [groupObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/groupobj.md) | 50 | `declaration-track:bf60645853a9b9610ffe4251a054e70a022de63f1d85a090fdcf5bfa4acd48f3` |
| 3 | `def` | [sectionsSubgroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/sectionssubgroup.md) | 62 | `declaration-track:64f4bfe91fa0d6c0786bd5d0367bc9c894843d42759f25b46346e34569a281e1` |
| 4 | `instance` | [limitGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/limitgroup.md) | 75 | `declaration-track:44da8e58375e9635fa119c0f508481d092045d60035c58dcadde8a8296a9eda1` |
| 5 | `instance` | [Forget₂.createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/forget-createslimit-source-edition-2.md) | 92 | `declaration-track:c7bc69624546c94f8854306135fe50cc33a57c1a58edc37ea0415aac15baad59` |
| 6 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/limitcone.md) | 120 | `declaration-track:02c2c12e4fa2a87f5203c203b9bc3920d0e4307c0a5031725eff903c9d2e3e4d` |
| 7 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/limitconeislimit-source-edition-2.md) | 136 | `declaration-track:698a8e24cde08f85375d877e773e0ae0a78fed1850e3f446d8c44ff4fe26a9a7` |
| 8 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/haslimitsofsize-source-edition-2.md) | 145 | `declaration-track:c38247d13147b567bf472e33423496d24768c3d96dfe33343766eb9a604d3b7c` |
| 9 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/haslimits.md) | 158 | `declaration-track:628008d6c85eade15f3cbbb824ddc0b63375001b7fc80751d09c13aff5fe1c37` |
| 10 | `instance` | [forget₂MonPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/forget-monpreserveslimitsofsize.md) | 174 | `declaration-track:c256864753f4a5f23e04310bc59f170fa24b158d866aeb98d227a38af4cf3ed2` |
| 11 | `instance` | [forget₂MonPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/forget-monpreserveslimits.md) | 187 | `declaration-track:d0d799bb94c1325b256b35b71b60a1d6e64800b6cc2f9193a155974a65fd019e` |
| 12 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/forgetpreserveslimitsofsize-source-edition-2.md) | 202 | `declaration-track:b92098c6c5859efe23f9cd7ecb45854d5564f79d78ea5d8dbfb678a3dc7dc9da` |
| 13 | `instance` | [forgetPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/forgetpreserveslimits.md) | 220 | `declaration-track:66aa73b629fff992a3493392142523fe4850c7244e2d50304225fdb252ab29fd` |
| 14 | `abbrev` | [CommGroupCatMax.](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/commgroupcatmax.md) | 233 | `declaration-track:b7c96aab575921f4c25382bb408f7a47c7b63eab235ca29564c227efadaab9bc` |
| 15 | `instance` | [commGroupObj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/commgroupobj.md) | 238 | `declaration-track:2f2f2c583e1201209764b3745b3708f52af37dc46f8e5566e708a70f91c4ae6c` |
| 16 | `instance` | [limitCommGroup](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/limitcommgroup.md) | 248 | `declaration-track:80e2197503d0ce5f64df145329844ce9e6c21577e2e491a4c09f9cb637621937` |
| 17 | `instance` | [Forget₂.createsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/forget-createslimit.md) | 267 | `declaration-track:0be194d8a2e3977761c6e5cefeada0d13d5af3ad10df4bfaa754776e09a82461` |
| 18 | `def` | [limitCone](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/limitcone-source-edition-2.md) | 293 | `declaration-track:515dfaef924ad0fb23cca0d5ab988918c24c4083b9fa11d97f4213cab203a00e` |
| 19 | `def` | [limitConeIsLimit](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/limitconeislimit.md) | 306 | `declaration-track:28714c96b785e8dcdec70e5e86fdb867798a9f9d6b92da3b97ee92eeeefa2ca4` |
| 20 | `instance` | [hasLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/haslimitsofsize.md) | 316 | `declaration-track:588c7048a5621204e7c1573ed630b328f877537588df71a47181f3d803ece2ab` |
| 21 | `instance` | [hasLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/haslimits-source-edition-2.md) | 326 | `declaration-track:99d85eb61dd9b281133cf4ffbd80a259c3cc5131422646e79cab50143e353488` |
| 22 | `instance` | [forget₂GroupPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/forget-grouppreserveslimitsofsize.md) | 341 | `declaration-track:d4b0eff03b568c5f5e02da6b08af168c459d0512db76618498865ff31d56a846` |
| 23 | `instance` | [forget₂GroupPreservesLimits](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/forget-grouppreserveslimits.md) | 350 | `declaration-track:954d2e51aa353b60a17b7a25af00f5963734b071fc12fd49e380728c6e17510b` |
| 24 | `def` | [forget₂CommMonPreservesLimitsAux](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/forget-commmonpreserveslimitsaux.md) | 362 | `declaration-track:a33bd655165f08854336f62e80b5018fe7e3b9b45c37bf9f1e2f0dad1a3f0f95` |
| 25 | `instance` | [forget₂CommMonPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/forget-commmonpreserveslimitsofsize.md) | 378 | `declaration-track:857cbbf601375136052814f1b07bddbcbad3853d6aece3510a26b2cb23e339ef` |
| 26 | `instance` | [forgetPreservesLimitsOfSize](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/forgetpreserveslimitsofsize.md) | 396 | `declaration-track:8bd577a2430ffeceecc689430b53c3793bde759dcd78986a7038dca04c9e7340` |
| 27 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/example.md) | 412 | `declaration-track:c8accdb87ab984edfc33a057d1f225622f5f680c7d81a3aaff51146893a1d4f0` |
| 28 | `def` | [kernelIsoKer](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/kernelisoker.md) | 421 | `declaration-track:0c85ce8ba2a80788a05ad13abe1f815102ba31c33ec67e46e5c7b51758dd6be5` |
| 29 | `theorem` | [kernelIsoKer_hom_comp_subtype](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/kernelisoker-hom-comp-subtype.md) | 460 | `result-track:23f2590ce878da1d7c839c9752b4686cc8e00f90ea9263281b80ead5fbec8172` |
| 30 | `theorem` | [kernelIsoKer_inv_comp_ι](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/kernelisoker-inv-comp.md) | 466 | `result-track:f28c5af70010b20d83bf61df17b5297d30f0d3e4f534be19f41ff77806a840ba` |
| 31 | `def` | [kernelIsoKerOver](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/GroupCatLimitsNamespaced.lean/declarations/kernelisokerover.md) | 479 | `declaration-track:b94bbabeb45bedc3b194d04d1508e090e7330863580bc5b83ffcd83295eadc45` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=05965337fdcbc851a2541f53b9de017100cceb8a78c02c8fb019d687f350af08 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant0c52c79a398503fb47b49f8724a77e5808dcd5f43e86760a88aa68c327ab4391.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
