# Verification target: Locally Constant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51420376d1230a79d5025f38dab1afeab3a68b98",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant71a12a483c95b19e2a0efb937988ba9cb05a8958c00af7669639ee5f2a8afd0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/index.md) · [Full source](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51420376d1230a79d5025f38dab1afeab3a68b98`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant71a12a483c95b19e2a0efb937988ba9cb05a8958c00af7669639ee5f2a8afd0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant71a12a483c95b19e2a0efb937988ba9cb05a8958c00af7669639ee5f2a8afd0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Condensed.Discrete.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.TopComparison` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.CompHausLike.SigmaComparison` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.FiberPartition` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorToPresheaves](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/functortopresheaves.md) | 81 | `declaration-track:fd2cec3a85fd74660fd3b27e1e6e21148b41f045312a1176fc839b3bc0288f56` |
| 2 | `def` | [locallyConstantIsoContinuousMap](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/locallyconstantisocontinuousmap.md) | 92 | `declaration-track:47bbdd28efa9811e26c12009dde2de9a1a64fd7e2400b1e9b3cadac9969f0a56` |
| 3 | `def` | [fiber](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/fiber.md) | 108 | `declaration-track:c6a66dcdfe7db888afd5fc2248fb7385d6ba700e5ff50a9adbb502b39d1f9e2e` |
| 4 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/instance-source-edition-10.md) | 110 | `declaration-track:c6f2aa64933cb62f70fadd842afeb2366ab75b413984a13ff3915d5a67f4da6b` |
| 5 | `def` | [sigmaIncl](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/sigmaincl.md) | 113 | `declaration-track:ca325456601993ec6fce8f2d876aad41d28a38cc94bce4c2bd692569625084f8` |
| 6 | `def` | [sigmaIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/sigmaiso.md) | 117 | `declaration-track:e5e5fe33c85bcfbac0d546f7108992a4b5b12910ca146d0357286aee80b95b4f` |
| 7 | `lemma` | [sigmaComparison_comp_sigmaIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/sigmacomparison-comp-sigmaiso.md) | 120 | `result-track:d0f2834bd0a63deab98587cf717a91929dcc007ac22a967fea01c0f436eb0914` |
| 8 | `def` | [counitAppAppImage](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/counitappappimage.md) | 135 | `declaration-track:ab388dc276e21cb4f7ceda958fef89a31f445cc04c33890c8636faf5b696d748` |
| 9 | `def` | [counitAppApp](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/counitappapp.md) | 145 | `declaration-track:94e18d951e4de3d298395825607ec1be443bdc378e3425b3a27a6c10fde580ec` |
| 10 | `lemma` | [presheaf_ext](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/presheaf-ext.md) | 156 | `result-track:cb7ba25279c40a858c96294deb3e5379374fed798424ee9470900ec13eb47dee` |
| 11 | `lemma` | [incl_of_counitAppApp](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/incl-of-counitappapp.md) | 167 | `result-track:07c15eebf00d8fe58379453e23b1d84637fb0b3d1f16b8d9f00f7c96555892d7` |
| 12 | `def` | [componentHom](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/componenthom.md) | 181 | `declaration-track:fae822273660b75f7a81155554a240269bd2229db5bc9342ad609987c031b672` |
| 13 | `lemma` | [incl_comap](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/incl-comap.md) | 192 | `result-track:a139668459db30f7d2f20c719fddbd12087b5bd06bbfd516edbb3275a8f9af9e` |
| 14 | `def` | [counitApp](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/counitapp.md) | 201 | `declaration-track:26a0ce978ec83ed6ee615cca5621bc64f2220e48fdc53dea4ced76ee75093bb7` |
| 15 | `def` | [functorToPresheavesIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/functortopresheavesiso.md) | 223 | `declaration-track:43f46a2136ae2b1254cca3002725845479b302d7bb702a7acbd9621939ad18a4` |
| 16 | `def` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/functor-source-edition-2.md) | 229 | `declaration-track:5090c497d3f85d633d6c001a73c9e1d2de8e182db4a33902786d4b3558a9918c` |
| 17 | `def` | [functorIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/functoriso.md) | 243 | `declaration-track:7975f14cc54ae8c9b4abf89e100a52fd6738b83c19298ad4e898c9b3af0aa9da` |
| 18 | `def` | [counit](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/counit.md) | 251 | `declaration-track:1205f10b9b7f330a9302aedfaec2060b731ab98796632c41dd934b53ee5af7b7` |
| 19 | `def` | [unit](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/unit.md) | 294 | `declaration-track:02a527665e656266d683302d5bf86c01d0192c8362bf719b1fb69c37f7dfb987` |
| 20 | `def` | [unitIso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/unitiso.md) | 298 | `declaration-track:be5a13bc986dcebac25a98dfbdc3d6a904bd51de34f0407ddb8722e67586111e` |
| 21 | `lemma` | [adjunction_left_triangle](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/adjunction-left-triangle.md) | 303 | `result-track:b455b732b91250133f3782122570d50f22dee36969190b648a6741150bdab12e` |
| 22 | `def` | [adjunction](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/adjunction.md) | 326 | `declaration-track:1e1e20f60ee9548d518af46502d444422fe1c3e86db322fbad5d4c9dea2204c8` |
| 23 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/instance-source-edition-6.md) | 355 | `declaration-track:748e24d821e08334f8a68797d2ed6a2dbf1f6f55c5587ef0c4f58c31e6ecee96` |
| 24 | `abbrev` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/functor-source-edition-3.md) | 369 | `declaration-track:aa19bbf64ff7bfde15b432e8a408266393de50cb0b162002dfd7f6ed9bb94f87` |
| 25 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/iso-source-edition-2.md) | 378 | `declaration-track:e6378b29491dd13223207719e86ce525905a9de5b0c6e4f3354d62686a1923c9` |
| 26 | `def` | [functorFullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/functorfullyfaithful-source-edition-2.md) | 382 | `declaration-track:6cee049bfea9992cb5e9a3da6adf7b8fcebee6939c201c6998587d08cc9e4783` |
| 27 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/instance-source-edition-2.md) | 385 | `declaration-track:4a338cf461051e8b125fd21aa59b892451cdbf845d4ead42249e8f6f92c92ece` |
| 28 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/instance-source-edition-9.md) | 387 | `declaration-track:c1911dbe35a6906b9bf8d35757c0595188af946d02aafcd83e4fbc7e198a54a8` |
| 29 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/instance.md) | 390 | `declaration-track:3b712057056db8453a6bbedd2d09265020bc3abec7a1fd7c698c4e33726bf699` |
| 30 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/instance-source-edition-4.md) | 393 | `declaration-track:58d48b21442e119a551e533d30fb9fd6a025a6687e490bdeec1735cbbce94bef` |
| 31 | `abbrev` | [functor](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/functor.md) | 400 | `declaration-track:128da925b9d3cef9ae7dd1495d6a3d5bf759bb0b205cb8a8b922de2caa20f3f2` |
| 32 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/instance-source-edition-3.md) | 405 | `declaration-track:4be7ad677c96d6ba17bb68e6f2d20be0171eb8ca11ffc99dd6765cb0b197c5bd` |
| 33 | `def` | [iso](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/iso.md) | 415 | `declaration-track:08fa5bd4d610ed6450d3db2335d19b0c45dbe25e4c2437729a38bfb679740723` |
| 34 | `def` | [functorFullyFaithful](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/functorfullyfaithful.md) | 419 | `declaration-track:2aa1c00eb974d747119b5ecd86b5dfebdb337d72ab7f92918fb1064f0bbc5e5f` |
| 35 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/instance-source-edition-11.md) | 422 | `declaration-track:c829f104767dac97bae113343ef9c6e8a2f78dced203d2cca1be80c523585f3c` |
| 36 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/instance-source-edition-7.md) | 424 | `declaration-track:7a2fffd2f759550cff309eb232d06394070d4f456cf9da555ec8d8647323f669` |
| 37 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/instance-source-edition-5.md) | 427 | `declaration-track:5ec1cba8fa6f69ec884e744fc8eea81b1aa7fd613d5c3dcfd952270553f2c54b` |
| 38 | `instance` | [(anonymous)](../../../../../CategoryTheoryHomologicalAlgebra/CategoriesInGeometryAndTopology/LocallyConstant.lean/declarations/instance-source-edition-8.md) | 430 | `declaration-track:ad4dbbe33d6f9df4fbb115806e4a8f1778d7658c1b9b7d7dcf5ea02bdbff0d15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3c084fd4b0255eb67cf9c8d766cf6ae1282439f9a8193d62304cb9a846f37ceb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant71a12a483c95b19e2a0efb937988ba9cb05a8958c00af7669639ee5f2a8afd0a.lean","GRWTSK/_verification/specifications/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant71a12a483c95b19e2a0efb937988ba9cb05a8958c00af7669639ee5f2a8afd0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
