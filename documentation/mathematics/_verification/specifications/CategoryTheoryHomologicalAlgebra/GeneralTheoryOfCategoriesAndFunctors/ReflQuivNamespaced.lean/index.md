# Verification target: Refl Quiv Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c827a84dc4378601884f7f166d9231812d7035e0",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant70d36eb192423a3998016972ad328818653c20c151929a09ed762aad5ccd20f3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c827a84dc4378601884f7f166d9231812d7035e0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant70d36eb192423a3998016972ad328818653c20c151929a09ed762aad5ccd20f3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant70d36eb192423a3998016972ad328818653c20c151929a09ed762aad5ccd20f3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Quiver.ReflQuiver` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Cat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Quiv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ReflQuiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/reflquiv.md) | 30 | `declaration-track:464584eb2cd37252a774999e6bbad28acf627d2cb5ac98cf9c01a4e2bd888f8a` |
| 2 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/instance-source-edition-3.md) | 35 | `declaration-track:703e314278c829401ff37c674d62b2340186c958880c979bfdd4c6a0a10dc0a9` |
| 3 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/instance.md) | 37 | `declaration-track:6c5386bd1b8559bbeac38f30109067b43acb3446f40a784e363ef769a36bbc9b` |
| 4 | `def` | [toQuiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/toquiv.md) | 40 | `declaration-track:fbde928ec07f66b79840b10aa29034f3567262732feb2544e6a2dda2160920f7` |
| 5 | `def` | [of](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/of.md) | 43 | `declaration-track:cb86165fa067ca013b6d745866d704403c203fad33fb164547b244de617ef8f3` |
| 6 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/instance-source-edition-2.md) | 45 | `declaration-track:6f53a1d509bdec3db5bfc5157743411599f1dafe62a7d93e93f29fb0ac6bdffd` |
| 7 | `theorem` | [of_val](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/of-val.md) | 47 | `result-track:d0b6dae4687a7ee0149c3f7f493564f0c42593410e6e4ac4a03757ee843d51a7` |
| 8 | `instance` | [category](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/category.md) | 50 | `declaration-track:36ee14c3129df23b84565ab37ccdd3dc13525f4908a95df9178b7ef1a23be07a` |
| 9 | `theorem` | [id_eq_id](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/id-eq-id.md) | 55 | `result-track:1a2c3147fd3da3dab6e2110c852a2ea94b1534c9ed25fa910a7e4a804853707f` |
| 10 | `theorem` | [comp_eq_comp](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/comp-eq-comp.md) | 56 | `result-track:358a6cf065e1eca0acb6d9e66273ec254d16ab6d084efd674ed1f93a6ea40c16` |
| 11 | `def` | [forget](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/forget.md) | 60 | `declaration-track:6eb1ec658980996c937a7303d41513e09a313abe6a091177a909820512a38bb8` |
| 12 | `theorem` | [forget_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/forget-faithful-source-edition-2.md) | 64 | `result-track:d2a8d4c50a7e6f0db84bec696712e50654b92ec53fb5caf6cf2e9eb7f9ae73ac` |
| 13 | `instance` | [forget.Faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/forget-faithful.md) | 68 | `declaration-track:c324209b33453f018ff4956cd26dd6c657a6325b86ee734d100b08493c117b09` |
| 14 | `def` | [forgetToQuiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/forgettoquiv.md) | 73 | `declaration-track:bb6f8e9fed0a72d3023685d00f5999a2b31fc26a5c951032edcb34cee0b018ad` |
| 15 | `theorem` | [forgetToQuiv_faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/forgettoquiv-faithful.md) | 77 | `result-track:53716ddf1a768bd234a48024dfa6da3b4e4929beeb3b44e61045e54f5746a8ab` |
| 16 | `instance` | [forgetToQuiv.Faithful](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/forgettoquiv-faithful-source-edition-2.md) | 81 | `declaration-track:bb1bcc7ad2ea3fbe2f68821f75944ea4c5b5e6a928edff24cf02b9336c244acb` |
| 17 | `theorem` | [forget_forgetToQuiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/forget-forgettoquiv.md) | 84 | `result-track:f373ed09993a8910d2d8340171660394c586a5a526962549bc3af38e8409dbdb` |
| 18 | `def` | [isoOfQuivIso](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/isoofquiviso.md) | 88 | `declaration-track:716eb6ab15d34056447424feb4bf73dd1757a89b4cfa9b5b88a09c435ece882b` |
| 19 | `def` | [isoOfEquiv](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/isoofequiv.md) | 103 | `declaration-track:43f7503529474dd98ca9cbacd8cf4f1bcda8ec8d649e7cf454270b52c809b778` |
| 20 | `def` | [toFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/tofunctor.md) | 113 | `declaration-track:765a8b1784474d69638c9f47ee3e1f9b155eae8f404c7f4225f47812ce56f47b` |
| 21 | `inductive` | [FreeReflRel](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/freereflrel.md) | 127 | `declaration-track:56047e188d14109b0fa8a4b3416d55b9fbcc8191e2a2867f4ada468a53a3bc51` |
| 22 | `def` | [FreeRefl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/freerefl.md) | 133 | `declaration-track:495d64f510b4862e39a265258cd726e03a5564e947365cfd8d14224aa742689d` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/instance-source-edition-4.md) | 135 | `declaration-track:da5b12a9718b4becfa5190be925b7645848ba7199ba581f0edeb1b9a9f27c977` |
| 24 | `def` | [FreeRefl.quotientFunctor](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/freerefl-quotientfunctor.md) | 140 | `declaration-track:f43014bd31254d1e5f2087f41b8423b69836c5b92ef0bc7c2510bafcd52625ff` |
| 25 | `theorem` | [FreeRefl.lift_unique'](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/freerefl-lift-unique.md) | 145 | `result-track:9bed7427227a82cef9270988820284cef80b5983aacc9930748441f8991d30c6` |
| 26 | `def` | [freeReflMap](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/freereflmap.md) | 154 | `declaration-track:819b23aeafbcea06a51b0b1e6e0e24525135c8ffd943ffe17172a6d2085effd0` |
| 27 | `theorem` | [freeReflMap_naturality](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/freereflmap-naturality.md) | 162 | `result-track:e06ca4ac62f4bf0aeeacffbe5047e7802287005b49a8ec1f4639e32965ddb815` |
| 28 | `def` | [freeRefl](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/freerefl-source-edition-2.md) | 170 | `declaration-track:95345092612149380c2cf22d069bf11a54ab6dc00829958347a5ca75ff99327b` |
| 29 | `def` | [freeReflNatTrans](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/freereflnattrans.md) | 189 | `declaration-track:a54a968d8589ae8bbecb04a9753af401add6f420f6abbf6819abef82665f5b38` |
| 30 | `def` | [adj.unit.app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/adj-unit-app.md) | 201 | `declaration-track:3cacb941882a4085564333af72d13fe08d52e007f3b2dd1b798696ab80cd07ee` |
| 31 | `theorem` | [adj.unit.map_app_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/adj-unit-map-app-eq.md) | 207 | `result-track:47d99b9735f7d5f988e73358b028d828c525b60b88c2ef8fa8a672d4a4503ab2` |
| 32 | `def` | [adj.counit.app](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/adj-counit-app.md) | 214 | `declaration-track:fce9d38c624d833e6ebb7da61d7216fc0dcd33155c13c00065c7be9d88c18658` |
| 33 | `theorem` | [adj.counit.comp_app_eq](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/adj-counit-comp-app-eq.md) | 226 | `result-track:f3c1c8b413e780941d2f969997d4227d9b34aa88eab737a20ba5f5a343edf3a4` |
| 34 | `def` | [adj](../../../../../CategoryTheoryHomologicalAlgebra/GeneralTheoryOfCategoriesAndFunctors/ReflQuivNamespaced.lean/declarations/adj.md) | 234 | `declaration-track:76e810ed4dd72a27e48d479664b58c546af1463698f099f5b10b9bbf37edeb0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5ae3221d34af18e3480404922520833d6c1ebd03173d601e493b6e942ab59fe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant70d36eb192423a3998016972ad328818653c20c151929a09ed762aad5ccd20f3.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/ReflQuiv/Variant70d36eb192423a3998016972ad328818653c20c151929a09ed762aad5ccd20f3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
