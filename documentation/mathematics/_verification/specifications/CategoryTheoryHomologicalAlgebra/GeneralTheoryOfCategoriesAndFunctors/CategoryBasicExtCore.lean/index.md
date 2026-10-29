# Verification target: Category Basic Ext Core

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c36256ab5d73a0a8983791a1b514f5d562d57cb",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7a22116f2abc29a83b5e92749ea434831f32494e8a251cca969a257a3e377e4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c36256ab5d73a0a8983791a1b514f5d562d57cb`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7a22116f2abc29a83b5e92749ea434831f32494e8a251cca969a257a3e377e4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7a22116f2abc29a83b5e92749ea434831f32494e8a251cca969a257a3e377e4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Init` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Quiver.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.RestateAxiom` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.PPWithUniv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extCore'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/extcore.md) | 84 | `declaration-track:4dbed06305512434440a9e530d0a077962a266b466b55afba12fc18144aeef18` |
| 2 | `class` | [CategoryStruct](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/categorystruct.md) | 96 | `declaration-track:916753a716df6cd5f1b6138145cd40cd9e0d36fd334ddbab1041be7b69c99b71` |
| 3 | `macro` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/macro-source-edition-3.md) | 117 | `declaration-track:facc88690f5187dce94a174ee6e1fe5fb848d22101c5e64eca3ee2c1db14e988` |
| 4 | `macro` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/macro-source-edition-2.md) | 125 | `declaration-track:f045496304eb8da70031c11465d863c436924d5381836276ac1ca1cb6425170f` |
| 5 | `macro` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/macro.md) | 134 | `declaration-track:293f42f42828624384da68b718a9230c5afac4b73786b0196a72368cd1c047ff` |
| 6 | `class` | [Category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/category.md) | 155 | `declaration-track:6b3ea20d76d824eeccb72434a7cecd56843d8e859dfe4b15d1b3356484ba2034` |
| 7 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/example-source-edition-3.md) | 175 | `declaration-track:cb49144f98502a468cce1b887293e04cf6fc60aa2c3a35e470ff21db1c4d2076` |
| 8 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/example.md) | 176 | `declaration-track:49ce44af17a6032d74c47e406cb2dc200892f22ac58fcb71f3b9f0fde03aa7ec` |
| 9 | `abbrev` | [LargeCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/largecategory.md) | 182 | `declaration-track:0c5ce449669355c66feb77642d8bd9acacb0a1f32d7aadbd4adb977c7a8470e8` |
| 10 | `abbrev` | [SmallCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/smallcategory.md) | 187 | `declaration-track:2007e6dd3841253265bde52e00a93ddf2b7c3e0049bf4bb235d917eaffd9d699` |
| 11 | `theorem` | [eq_whisker](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/eq-whisker.md) | 197 | `result-track:bb5e916e79fd6d51783e763b88a498f59886c7e761c5fe5e8f71771d791e6d05` |
| 12 | `theorem` | [whisker_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/whisker-eq.md) | 201 | `result-track:a79a257e986b06cfdc0cc8602348388a61e1d715ac940ee22b230f829b477fb9` |
| 13 | `theorem` | [eq_of_comp_left_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/eq-of-comp-left-eq.md) | 216 | `result-track:82b70bcec2a14d8d45752e574f2173f5c046dff5dc20227c5019f097504cd0f5` |
| 14 | `theorem` | [eq_of_comp_right_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/eq-of-comp-right-eq-source-edition-2.md) | 222 | `result-track:e540c63c4213a789fd52c0040f2478ed5eb4accd4cb2bc5b59234b6165643a0e` |
| 15 | `theorem` | [eq_of_comp_left_eq'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/eq-of-comp-left-eq-source-edition-2.md) | 228 | `result-track:d9f42ea8b6fbb9ac3726201a9a84677b64b0999009a353319154914d3146e2c5` |
| 16 | `theorem` | [eq_of_comp_right_eq'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/eq-of-comp-right-eq.md) | 233 | `result-track:742e3abfa40f1528da2a4121020849157d55be36ea8f9418aae48e430cdfa85b` |
| 17 | `theorem` | [id_of_comp_left_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/id-of-comp-left-id.md) | 238 | `result-track:2f9fd83048aa4e9dad823e5e14098ea0c9502f082e262100705da009eb8329b7` |
| 18 | `theorem` | [id_of_comp_right_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/id-of-comp-right-id.md) | 243 | `result-track:5ffe90a2ea3ab67006e4359125e48ac9971567f650b55510f0d032ea7cdcac78` |
| 19 | `theorem` | [comp_ite](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/comp-ite.md) | 248 | `result-track:30eecfb540a4bd72196edb1ee9cff2e078af7a70b7f472e85bff1d971b453abf` |
| 20 | `theorem` | [ite_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/ite-comp.md) | 252 | `result-track:4759646b05327a71d131c208d1b25f69e296245ae50793ce46fc9c85fa5e37f4` |
| 21 | `theorem` | [comp_dite](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/comp-dite.md) | 256 | `result-track:d3f8f156d649a65df9df5c79d6fac084cd32ce2dcb94c67656e8f1733c2fddb1` |
| 22 | `theorem` | [dite_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/dite-comp.md) | 261 | `result-track:8261b96258988c4e7f6f65ef72f07260e2184e1fffc5499166a2bc7dd420bf29` |
| 23 | `class` | [Epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/epi.md) | 271 | `declaration-track:0bdb60c43f5702b6e5a4ac093b68191608df1991e1ca9652a5437a2ca1a382a3` |
| 24 | `class` | [Mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/mono.md) | 281 | `declaration-track:fcc384ab236bbb260aa4ec7e7ae2d7b704bbc60853fb25351bda4f6ad46bcd45` |
| 25 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/instance-source-edition-2.md) | 286 | `declaration-track:cb8cbd8190ef9df207a8622c14413b797a2b9075e217fb05b117b6522b917da5` |
| 26 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/instance.md) | 289 | `declaration-track:73b5aa272820f356e7b92369a6c662836a13e66edcf1fd3307ecf62accf2415d` |
| 27 | `theorem` | [cancel_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/cancel-epi.md) | 292 | `result-track:3e3e8d9bfa1c823fc03875df16f8d813d00e22dedbd41d30a970e40f961c5d2b` |
| 28 | `theorem` | [cancel_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/cancel-mono.md) | 296 | `result-track:5a4bd37a199e2f59f2bbed77f5d27f5fe43b9173f51204debe280dfcc8fe263c` |
| 29 | `theorem` | [cancel_epi_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/cancel-epi-id.md) | 301 | `result-track:b5815f7689e663de8965d8647e7b1bad9754da27991781d439d1393503405fdd` |
| 30 | `theorem` | [cancel_mono_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/cancel-mono-id.md) | 306 | `result-track:80fca680f7c07183dae2c70dc53d8df3208df85751d48cf5a9acdfcfbb9e62d0` |
| 31 | `theorem` | [epi_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/epi-comp.md) | 311 | `result-track:ba93e50f0580b5f38459778dd37eedbb83be1c7c1b190e90898c5ebada1861e6` |
| 32 | `theorem` | [mono_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/mono-comp.md) | 319 | `result-track:b22cf818b7874f671d3a6e47dab6f2cec0e76edfa5291bf7f14cace691a7cccd` |
| 33 | `theorem` | [mono_of_mono](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/mono-of-mono.md) | 327 | `result-track:6e1a90ebe1fc151f13536ffe8c268c9b17c740504cb79af9cd1d5d4b6bd8c2f1` |
| 34 | `theorem` | [mono_of_mono_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/mono-of-mono-fac.md) | 336 | `result-track:d4f31cc0f855080c09c57ab4e43ac765586ce8a8f477e829733fe4df08e51f60` |
| 35 | `theorem` | [epi_of_epi](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/epi-of-epi.md) | 342 | `result-track:c364f31d839168bf53d8c12c5c87834dff04a57d35ac0a170523d53e958258be` |
| 36 | `theorem` | [epi_of_epi_fac](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/epi-of-epi-fac.md) | 351 | `result-track:697b0f5b6489759ed555bc9e9e482203981503729b86c9bf65b65766655cbaad` |
| 37 | `instance` | [uliftCategory](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/uliftcategory.md) | 366 | `declaration-track:98c7c92fd42ac935bbf2a25b8e57227290bea9123e2fa99db9ade1bdaf97072b` |
| 38 | `example` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/CategoryBasicExtCore.lean/declarations/example-source-edition-2.md) | 373 | `declaration-track:7958a01e8ed0dd446fd37fee1c060934166984a53f842fd7544403ec67a2b747` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=41e75c80f85f56711490147e1f7f6bf30bf0c4e6000c34e52d8e31a8c12d2f73 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7a22116f2abc29a83b5e92749ea434831f32494e8a251cca969a257a3e377e4c.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant7a22116f2abc29a83b5e92749ea434831f32494e8a251cca969a257a3e377e4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
