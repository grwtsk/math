# Verification target: Ord Continuous Right Ord Continuous Dual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef3626b36cb0643564a7c649ff300ca523541b43",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7c1a775fab973dcc5e01618d89bdd132a5137a6ab0af0aa2d9688ff32ded01d3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef3626b36cb0643564a7c649ff300ca523541b43`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7c1a775fab973dcc5e01618d89bdd132a5137a6ab0af0aa2d9688ff32ded01d3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7c1a775fab973dcc5e01618d89bdd132a5137a6ab0af0aa2d9688ff32ded01d3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LeftOrdContinuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/leftordcontinuous.md) | 36 | `declaration-track:a8c82af5dca551daac07cce7aeff94e4dd66e44a72d092202fa749401ab193b6` |
| 2 | `def` | [RightOrdContinuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/rightordcontinuous-source-edition-2.md) | 42 | `declaration-track:a647cc2d0de2be63047dfc1b08225dc1d52c848a651a55124454165a20ee9181` |
| 3 | `theorem` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/id.md) | 51 | `result-track:313840721a7731618654ea05480c37f4b81f2d945aabeb3526785cb93f9252d9` |
| 4 | `theorem` | [rightOrdContinuous_dual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/rightordcontinuous-dual.md) | 56 | `result-track:5f1c411ce397327f8cc3ef02d759358db1523333a4cf881f8c75a9ebc255fcf0` |
| 5 | `theorem` | [map_isGreatest](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-isgreatest.md) | 63 | `result-track:895268a5c32f59e3ecba2b82a3e57ae2c77f8373abb63f055a56f829dd8f81cc` |
| 6 | `theorem` | [mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/mono.md) | 67 | `result-track:15d99f05d7dd9664e13c9a088940d86bdd3c0fa040042b87a4b0224cb16c7018` |
| 7 | `theorem` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/comp-source-edition-2.md) | 71 | `result-track:b185b3eab1d8807873e9486b70c99c191ff375e87b9619e69384d680a1baab94` |
| 8 | `theorem` | [iterate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/iterate.md) | 74 | `result-track:24e0579d0f33f13bd6121f32d079057968848422b15765e076b94bbe7db1eb6a` |
| 9 | `theorem` | [map_sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-sup.md) | 86 | `result-track:dfdacf94cd944ff5328cf1b2e642424da7c70d77b6319a1e822a6aa980af8622` |
| 10 | `theorem` | [le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/le-iff.md) | 89 | `result-track:4486ff3de5d4dbb9c1e7884da9ff8fb81e10824ac460a1d5510083f1446ddc38` |
| 11 | `theorem` | [lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/lt-iff.md) | 92 | `result-track:7442d432830a07670b9ab72048cc4fef564ad1907c888c3e66f09ed6092338ea` |
| 12 | `def` | [toOrderEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/toorderembedding.md) | 98 | `declaration-track:a257487f9fe7c50d5878b3dbd55585338a1c6e266f03766efb2008f873ca1d8f` |
| 13 | `theorem` | [coe_toOrderEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/coe-toorderembedding-source-edition-2.md) | 104 | `result-track:6abda3545be0b82c8e15d4ad69516cf9b85a9d6711299eb37f03eca84233ac00` |
| 14 | `theorem` | [map_sSup'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-ssup-source-edition-2.md) | 114 | `result-track:80361a2f064e4e39f3b392396b0f14036edf8fdcad18f19dc69ccd08030899ce` |
| 15 | `theorem` | [map_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-ssup.md) | 117 | `result-track:6600780a64a018aaf9831778243e275fe1d31bfe56ae4070ef2b73d4d85d55ab` |
| 16 | `theorem` | [map_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-isup.md) | 120 | `result-track:72c50c77b172cce96b1a6ed4c83b3a8c8d51b0f2b7a37f31ee01e43e9eb6eb80` |
| 17 | `theorem` | [map_csSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-cssup.md) | 130 | `result-track:9fd382df1bb3aff89766ffbd6fcd89461dc4573ce6e2b53a356e11a7a7fa952a` |
| 18 | `theorem` | [map_ciSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-cisup.md) | 134 | `result-track:1c54358b4ce5b6e8108faec4c6149ad6e267f1c7b52af562abd66133bee85f7a` |
| 19 | `theorem` | [id](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/id-source-edition-2.md) | 149 | `result-track:7a41387f9641609a8fbc658013456a61a80d035b3d6b29bf70ed17f45452d403` |
| 20 | `theorem` | [orderDual](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/orderdual.md) | 154 | `result-track:3c0130dd374dccf67f93ef8791e645d28fea100ae10e0dd036f9e64639c5c64b` |
| 21 | `theorem` | [map_isLeast](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-isleast.md) | 157 | `result-track:02a01fde3beaf97264035a1a056897f0fe99c53d88d57b7c43a23ac8163f54a7` |
| 22 | `theorem` | [mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/mono-source-edition-2.md) | 161 | `result-track:d626cd5d68d1c558e7ac3709886dd4bf1a7d1c22734b1e8ff5640625f302d879` |
| 23 | `theorem` | [comp](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/comp.md) | 164 | `result-track:9d45ff7549493f7fabdc6f18e5468e2f68f86eb3d060ad15353dae4860a9323f` |
| 24 | `theorem` | [iterate](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/iterate-source-edition-2.md) | 167 | `result-track:de65b617ec162cc8f0d05da36c3835e8a657077983b9548fce5e8941b5086466` |
| 25 | `theorem` | [map_inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-inf.md) | 177 | `result-track:55397a604370da49fa2c4a0f9e547d2ba1eae7d03f97203369db8867af17513e` |
| 26 | `theorem` | [le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/le-iff-source-edition-2.md) | 180 | `result-track:fcbe2fab30271c05b6aee7e83bb4e9706332cd12813598b67b993221467fd7a5` |
| 27 | `theorem` | [lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/lt-iff-source-edition-2.md) | 183 | `result-track:f6b23548187d5a05cd4cfefb710a35caa14f678a878a69ee5db3d4102608bd0e` |
| 28 | `def` | [toOrderEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/toorderembedding-source-edition-2.md) | 189 | `declaration-track:b554528e08b4ac433a6b1d98180e1f420079d4cfd9979186db3ceb52c2cb3f30` |
| 29 | `theorem` | [coe_toOrderEmbedding](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/coe-toorderembedding.md) | 195 | `result-track:4aa9cb6a6ce46087ec3e2d02103d527cc40290fbe5cf5f1237933b3f71f3fa48` |
| 30 | `theorem` | [map_sInf'](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-sinf.md) | 205 | `result-track:15be7e07c2102a59fa3a6dd9ebc145435eb36b0097021b82842f827c9ba823a7` |
| 31 | `theorem` | [map_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-sinf-source-edition-2.md) | 208 | `result-track:6c4b694b137453a59edff37120cdb01e920e8f9b12fbadecf6c37e269f5d2d7e` |
| 32 | `theorem` | [map_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-iinf.md) | 211 | `result-track:382da4b01179e146e4c49a898a66f98865314464c781629bdb4162de33b0754c` |
| 33 | `theorem` | [map_csInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-csinf.md) | 220 | `result-track:f312cde25585150dc8493de2d5e360f8ef105a703d7f48c0d55a740ea168e85e` |
| 34 | `theorem` | [map_ciInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/map-ciinf.md) | 224 | `result-track:8fb974d1ddf6d07afd649edb9d7e0252311ee6c816038ece9745caeaa9f8d3de` |
| 35 | `lemma` | [leftOrdContinuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/leftordcontinuous-source-edition-2.md) | 236 | `result-track:bc7b185bc932b9d10aeb0724315a1aa49899c2d125d6e40b1c61b4650846f952` |
| 36 | `lemma` | [rightOrdContinuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/rightordcontinuous-source-edition-3.md) | 240 | `result-track:f57a5ef22bb3cf41c03ef583a4a4f05a2596f8ab72238a2aabff2156d42553ea` |
| 37 | `lemma` | [leftOrdContinuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/leftordcontinuous-source-edition-3.md) | 248 | `result-track:c27da02b9cdc2eed33a55b42fda31a3abcd63725a0d9b4506c777756955b4779` |
| 38 | `lemma` | [rightOrdContinuous](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/OrdContinuousRightOrdContinuousDual.lean/declarations/rightordcontinuous.md) | 250 | `result-track:5036862dbabc8dbb9374df1920649147afd29c399d24aeec7f631ff1af49f387` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=70802d29c6efd6d780f79fb0e5d3061076aea25a2e8cb802b4a024eac3d078eb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7c1a775fab973dcc5e01618d89bdd132a5137a6ab0af0aa2d9688ff32ded01d3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant7c1a775fab973dcc5e01618d89bdd132a5137a6ab0af0aa2d9688ff32ded01d3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
