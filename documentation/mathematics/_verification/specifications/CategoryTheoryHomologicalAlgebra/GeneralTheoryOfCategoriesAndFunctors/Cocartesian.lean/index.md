# Verification target: Cocartesian

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fee884398a53ac223e64702c19f6ce77225d041",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fee884398a53ac223e64702c19f6ce77225d041`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.FiberedCategory.HomLift` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsCocartesian](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/iscocartesian.md) | 51 | `declaration-track:775c85f70752f8ec96bba2a9a8ba07023b6f2fd5ad93dbebddb48dc6aa527248` |
| 2 | `class` | [IsStronglyCocartesian](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/isstronglycocartesian.md) | 65 | `declaration-track:d12574f6e449704dcf27d33afc3437d948dc6c48d1e59f073af151ed5506dd07` |
| 3 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/map.md) | 82 | `declaration-track:197981e420f63f607bf4fb80a423893901c79cd937533e7f2fd8b48299d1cd72` |
| 4 | `instance` | [map_isHomLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/map-ishomlift.md) | 85 | `declaration-track:4a058f558a46dc652ade41b5f765935adb27c6fcdb7470a29010ce5267a7c7d2` |
| 5 | `lemma` | [fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/fac-source-edition-2.md) | 89 | `result-track:86f86e21b25ab5d74ce2280b73c9f650086dd067d103d3c421927015b9933cf1` |
| 6 | `lemma` | [map_uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/map-uniq-source-edition-2.md) | 95 | `result-track:bab109795816f1ecb202caeb75b74dc02fac2ed7eda6e3e39da6cdfea9fd6f68` |
| 7 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/ext.md) | 104 | `result-track:2536b70c265959de69e1f0102b61457cf6af948f76437cc4294399a7e4d3adde` |
| 8 | `lemma` | [map_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/map-self-source-edition-2.md) | 109 | `result-track:e983f62688f64bdeadd22690358fcf3ed348b2d98280de3be7c0ae10b769bc34` |
| 9 | `def` | [codomainUniqueUpToIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/codomainuniqueuptoiso.md) | 116 | `declaration-track:8bb95200742df54d9a5bff42a7e11d9261d547cf913f504a562d80ef4d0aff1e` |
| 10 | `instance` | [of_comp_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/of-comp-iso.md) | 130 | `declaration-track:54ec151dca9a60d2e5293755d073c0c2697239efe9142af5dffc459b135ee3d6` |
| 11 | `instance` | [of_iso_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/of-iso-comp.md) | 142 | `declaration-track:511e65753d4159728d0552d90726b501c2011f0db4e0353ea4afdc6fbfdba805` |
| 12 | `lemma` | [universal_property](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/universal-property.md) | 164 | `result-track:6695ddbce181fc04cbcdb4c9dee46b80fa3c4a2f760f447a9488e5110df8917f` |
| 13 | `instance` | [isCocartesian_of_isStronglyCocartesian](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/iscocartesian-of-isstronglycocartesian.md) | 170 | `declaration-track:fce7a6b5461c65d2acd56a1e3d70e3b1ab1452dc8c41e5d83705cde18155d913` |
| 14 | `def` | [map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/map-source-edition-2.md) | 188 | `declaration-track:4b427d7ea0713450c969177070bd4640ca9e7c12ce441212db6a5117b942ccc9` |
| 15 | `instance` | [map_isHomLift](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/map-ishomlift-source-edition-2.md) | 191 | `declaration-track:61325f65a4fac47070a1d3d028bb7f4db68f9c4b6193e76acf7c4e00265af5ca` |
| 16 | `lemma` | [fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/fac.md) | 195 | `result-track:1e414103d61cf9f351cf3f6516b2e0cdb0fb890b0320e90bbfc308ab4ef8f132` |
| 17 | `lemma` | [map_uniq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/map-uniq.md) | 208 | `result-track:37f3f8196944d2cf47f74748c950a63a8f2deb022f28ef9a153b5137dbe6f47a` |
| 18 | `lemma` | [ext](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/ext-source-edition-2.md) | 222 | `result-track:859fd64bbdf8d86efaf18c538d0f974e2531605877499f7f3cbe9b8a5c6030d3` |
| 19 | `lemma` | [map_self](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/map-self.md) | 227 | `result-track:54e42ff67a681b7b1e636801d8c2262f428307b694fc516be7d1b09481115b43` |
| 20 | `lemma` | [map_comp_map](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/map-comp-map.md) | 259 | `result-track:a0ac2acd30e664f89b80eb945a8215613409ab81ecff754bed232199f5580260` |
| 21 | `instance` | [comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/comp.md) | 281 | `declaration-track:cb4dbf39470a5b53d6383b744e63629c198fd62abb73f147a569a0ecd0256606` |
| 22 | `lemma` | [of_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/of-comp.md) | 301 | `result-track:1c384c3cbd2bd8aa15a9b2f417b182adf5a7ad25559ff3d3d467e14a41433834` |
| 23 | `instance` | [of_iso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/of-iso.md) | 324 | `declaration-track:15d5de8b8dd4d5c84b8c816561030b954670ff8a42226858167ed838dca21035` |
| 24 | `instance` | [of_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/of-isiso.md) | 331 | `declaration-track:2b4742225401ee94cdf2084c0d2bf35caac601ec2cdf53e71275bce75130c383` |
| 25 | `lemma` | [isIso_of_base_isIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/isiso-of-base-isiso.md) | 335 | `result-track:bafc911718b347ec4d558dfccc47d5a82700073fc4bce32e371cd391b476e528` |
| 26 | `def` | [codomainIsoOfBaseIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/Cocartesian.lean/declarations/codomainisoofbaseiso.md) | 354 | `declaration-track:e1b2258684f9f8ad8377f36099f935c9e5cd2690f7a58851a5dcaf4bbb83f5c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8c78c434a53a77a3c02a4f39fe142adb796eebcb6a33c774d9e4b2a9f83cdaa -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Cocartesian/Variant4c60d9b3f69e0231ccbddb1cbc724eecccbad4eba71cc503848055960b3bae25.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
