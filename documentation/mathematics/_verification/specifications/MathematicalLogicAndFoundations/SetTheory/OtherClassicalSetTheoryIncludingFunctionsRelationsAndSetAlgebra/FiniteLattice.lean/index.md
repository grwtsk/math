# Verification target: Finite Lattice

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2abed7a0c0c4167f47ba852ca9a8dea647531148",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variante09c1e49262e285fa21e3992434730d48a792abc4d31d4e0e448ff526e931144.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2abed7a0c0c4167f47ba852ca9a8dea647531148`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variante09c1e49262e285fa21e3992434730d48a792abc4d31d4e0e448ff526e931144.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lattice/Variante09c1e49262e285fa21e3992434730d48a792abc4d31d4e0e448ff526e931144.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finite.Sigma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Powerset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Range` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [fintypeiUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/fintypeiunion.md) | 40 | `declaration-track:018a1572bb52187fa60ef6e49e83387f46ce804f1126683387d1008944df7972` |
| 2 | `instance` | [fintypesUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/fintypesunion.md) | 44 | `declaration-track:b990b11c2693bd126b20662d24221f8bf18ba55e12f66bb9ba3658ee70c17b41` |
| 3 | `lemma` | [toFinset_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/tofinset-iunion.md) | 49 | `result-track:037eb92dc2caa7e4abb83c71189a918fa1f61ff35a1f1282bdb4d90a558e0335` |
| 4 | `def` | [fintypeBiUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/fintypebiunion-source-edition-2.md) | 58 | `declaration-track:f5a2d44e67ae462e4d03046ff9f307100a9679510ff657ed3f66b94c17ef9e37` |
| 5 | `instance` | [fintypeBiUnion'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/fintypebiunion.md) | 63 | `declaration-track:eed52650b64708a3c46f3267faaea682f352983451e1e7563bbc8ff0f7819f09` |
| 6 | `instance` | [finite_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-iunion.md) | 85 | `declaration-track:4624182e2e0b7a8518704b10bcfa773144ff10867c1c0219c8e78fa34999955e` |
| 7 | `instance` | [finite_sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-sunion-source-edition-2.md) | 89 | `declaration-track:d7ecd6c265d89db08210a3eec2e633104736b8d2cd494c959c814a72a0c47ab8` |
| 8 | `theorem` | [finite_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-biunion.md) | 94 | `result-track:421486aa5f9f2abc3787df2a68873562bbe6c6187b3cc2ff336dfa1253918a42` |
| 9 | `instance` | [finite_biUnion'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-biunion-source-edition-5.md) | 100 | `declaration-track:eddfc3bc14d2810b30a5685b78b9cca3d5723f037f8cd0b6c4360500d690615e` |
| 10 | `instance` | [finite_biUnion''](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-biunion-source-edition-4.md) | 107 | `declaration-track:c4fdeffd7f6f34ce30b0df62ae7508e4df192a1020ce3ab8085b1486857df8be` |
| 11 | `instance` | [finite_iInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-iinter.md) | 111 | `declaration-track:3bfb33758ccbd6b12158098415484777d2c9c9e92a2430944f9c4b43166bbf28` |
| 12 | `theorem` | [finite_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-iunion-source-edition-2.md) | 131 | `result-track:52f780165ca25fc066f0338f517a27a4728266043ce9c29553dec8984cad898a` |
| 13 | `theorem` | [Finite.biUnion'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-biunion-source-edition-3.md) | 136 | `result-track:b1861b58720a216315d4defd5131bbc0d6a89367c777e9d4012746613a15ec70` |
| 14 | `theorem` | [Finite.biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-biunion-source-edition-2.md) | 142 | `result-track:49fe87c2570f5be76b0207a132684255c78bc0a7f35f267c04b01f58ee67e033` |
| 15 | `theorem` | [Finite.sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-sunion.md) | 146 | `result-track:5f278fe56b60be3babd971e3c7ae427d9aac27756b2e12bb8d8d291573fa1930` |
| 16 | `theorem` | [Finite.sInter](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-sinter.md) | 150 | `result-track:089e240d8a930f0b8e8a157330c5f0ed28e8b7bc7259ef2be691df3e093eebe2` |
| 17 | `theorem` | [Finite.iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-iunion-source-edition-3.md) | 156 | `result-track:75b778f9cf63b664356310d64ace0ad7ac10e83abcf24070e6bdd730a8750be5` |
| 18 | `lemma` | [finite_iUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-iunion-iff.md) | 167 | `result-track:82e7646d67465f1a5a57577f8b105986bbcb51e7d36cda6fa6c759e1eeb1dfe5` |
| 19 | `lemma` | [finite_iUnion_of_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-iunion-of-subsingleton.md) | 182 | `result-track:b95410dee6ced4c2c6c3c0c446879ee65491f4f02869f0d4698759a899ce27b8` |
| 20 | `lemma` | [PairwiseDisjoint.finite_biUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/pairwisedisjoint-finite-biunion-iff.md) | 189 | `result-track:10f1ec2f337facd2016ff21366848e91bd33e2be7382c2dba59f8bb673d7e75d` |
| 21 | `theorem` | [Finite.preimage'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-preimage.md) | 197 | `result-track:dca69105308055e72a44c3659cbfd18db553e572892be5fd583ac72d9fff60a0` |
| 22 | `theorem` | [union_finset_finite_of_range_finite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/union-finset-finite-of-range-finite.md) | 205 | `result-track:976cd6254c87662b0442ca6744467d83e877d00f238294d77d5d1337c28d7625` |
| 23 | `lemma` | [Finite.of_finite_fibers](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-of-finite-fibers.md) | 218 | `result-track:7ce656d0aeaab2753934a6b904564a5d1ec4d9c141f20a33da0cd06d91bc94e5` |
| 24 | `theorem` | [finite_subset_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-subset-iunion.md) | 224 | `result-track:c4d3499f3b050b16867e151034999dcb74b1110bf48b4726501ff830ade831dd` |
| 25 | `theorem` | [eq_finite_iUnion_of_finite_subset_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/eq-finite-iunion-of-finite-subset-iunion.md) | 232 | `result-track:5ea054845b08924232a969fe7076abef2ed4a8c279b1e2145bf86c0aa5f1bacc` |
| 26 | `theorem` | [infinite_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/infinite-iunion.md) | 253 | `result-track:fcc7783fb1e5aa658fcc1865a8c65e071b1355da1f0a9c8b08ae9218a86dc665` |
| 27 | `theorem` | [Infinite.biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/infinite-biunion.md) | 258 | `result-track:407b3b73e6523005d91ef8ba3b81c467e733b17b96ab0908e7a7ed4787873be8` |
| 28 | `theorem` | [Infinite.sUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/infinite-sunion.md) | 264 | `result-track:710d64239fd9952c4dc35824b87cf38d5dd5c2b01eb2ed64e097071cfcfbbf5a` |
| 29 | `lemma` | [map_finite_biSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/map-finite-bisup.md) | 271 | `result-track:bf938b434d3c7132d91dbf9cd5b6400439ba6a7cfe6187f6923e0f370ab9bb6e` |
| 30 | `lemma` | [map_finite_biInf](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/map-finite-biinf.md) | 278 | `result-track:7d2dab8b0940f78b3d4e59ffab0682e317a3061fd72f896f8f517f14827607f3` |
| 31 | `lemma` | [map_finite_iSup](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/map-finite-isup.md) | 285 | `result-track:ccdfe276a272c09de89de954ae47c02e355fc2c99e3ec73109a0cb36b7fce7da` |
| 32 | `lemma` | [map_finite_iInf](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/map-finite-iinf.md) | 291 | `result-track:f821d8187af97f8ba5efbee49d66173d9fd9d7141484a632620f9f415fc65252` |
| 33 | `theorem` | [Finite.iSup_biInf_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-isup-biinf-of-monotone.md) | 297 | `result-track:74617837f6c8c826cd9df43649b31027931c4a57a6b2ab3d5f49bcdfae521530` |
| 34 | `theorem` | [Finite.iSup_biInf_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-isup-biinf-of-antitone.md) | 307 | `result-track:1f79c9ea0c9552a98d4f5e608d9afdf2c9c85b14385cc495d456c092d81b1ed0` |
| 35 | `theorem` | [Finite.iInf_biSup_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-iinf-bisup-of-monotone.md) | 312 | `result-track:6fd8e0525236e7a724a8b89434828bb4d780c9256ec5f221eed258b13a11aefd` |
| 36 | `theorem` | [Finite.iInf_biSup_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-iinf-bisup-of-antitone.md) | 317 | `result-track:fd418bbd03bb1dc1b4538a8673e88410c568d1fbdc433bb6d79bd3183d16f7e8` |
| 37 | `theorem` | [iSup_iInf_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/isup-iinf-of-monotone.md) | 322 | `result-track:57bc86120e14b4ba7d78091bd8ddecf38bdce32c3a4f16bfdda22ce9f10c60aa` |
| 38 | `theorem` | [iSup_iInf_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/isup-iinf-of-antitone.md) | 327 | `result-track:4a5051e378fd152e94f9360dca2fac19deef468ec47cdbe5a409fd6b4abc1306` |
| 39 | `theorem` | [iInf_iSup_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/iinf-isup-of-monotone.md) | 332 | `result-track:3a65f1af18dfc3395632e962e06ac905f40b36c13a2aa6f8fe19915471dc5b98` |
| 40 | `theorem` | [iInf_iSup_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/iinf-isup-of-antitone.md) | 337 | `result-track:0cddbea3c64f32dd637b0d7ff6f8fb2461828fbfe664272bbca9f31a91a84fcf` |
| 41 | `theorem` | [iUnion_iInter_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/iunion-iinter-of-monotone.md) | 343 | `result-track:270b5a40db30c2d3a2ad7e496f447dfede30641f4cba74ab01ec4dc5685b49f6` |
| 42 | `theorem` | [iUnion_iInter_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/iunion-iinter-of-antitone.md) | 349 | `result-track:d854b1d8fc78fef7fcc48a1d297f98a7c10302fbba72317037c55e61454bf913` |
| 43 | `theorem` | [iInter_iUnion_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/iinter-iunion-of-monotone.md) | 355 | `result-track:e982eca28e12ae2c4a11d8b405c1548a92955624f0d1621979e38fab99c0dd04` |
| 44 | `theorem` | [iInter_iUnion_of_antitone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/iinter-iunion-of-antitone.md) | 361 | `result-track:311a0e6f1f16107fc7c784a62db69906de05aa907c232912cdd77d26cc5869e8` |
| 45 | `theorem` | [iUnion_pi_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/iunion-pi-of-monotone.md) | 366 | `result-track:c6035265a51c14da98fef1da34e39a3375cf573424655c658dee7b91a9a10b11` |
| 46 | `theorem` | [iUnion_univ_pi_of_monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/iunion-univ-pi-of-monotone.md) | 374 | `result-track:8b72217b795475a8e7e8fbc27e246c10be2072d45a561ca4c546542c4b20710e` |
| 47 | `theorem` | [Finite.bddAbove](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-bddabove.md) | 384 | `result-track:4c61187368ff66dd231b32928b4e85edf4fc54e9ddbd64981d8461a53206bc89` |
| 48 | `theorem` | [Finite.bddAbove_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-bddabove-biunion.md) | 388 | `result-track:2886cff57eea0b0f38a37261345100407c6a284f514e8f31e450809f5857c47a` |
| 49 | `theorem` | [infinite_of_not_bddAbove](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/infinite-of-not-bddabove.md) | 394 | `result-track:6d936e2620bcb39511f014b53f6e7ab972983dede23d26ccaf0b2c9a188114c8` |
| 50 | `theorem` | [Finite.bddBelow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-bddbelow.md) | 404 | `result-track:e11ce7876500dd0a613dd54399d7b698d756d5af70b67f244e039eaf5768b651` |
| 51 | `theorem` | [Finite.bddBelow_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/finite-bddbelow-biunion.md) | 408 | `result-track:6ef1d5b7873f3171feae1210b398e5ee035c7d55156ecce6b91148911cee12dd` |
| 52 | `theorem` | [infinite_of_not_bddBelow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/infinite-of-not-bddbelow.md) | 412 | `result-track:83399c3bb27145743f823f8f8c8314b80a9e786822df8f77edde0fe9f273627a` |
| 53 | `theorem` | [bddAbove](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/bddabove.md) | 421 | `result-track:eb8d20717763201312dc88bd1a5e3d6d4a6e450aade84791b5d86f8a0dc0b5fe` |
| 54 | `theorem` | [bddBelow](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/bddbelow.md) | 425 | `result-track:d998b39db5647888ef8daff1182804376e2122d4db56d7332ec9123b656d2f87` |
| 55 | `lemma` | [Set.finite_diff_iUnion_Ioo](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/set-finite-diff-iunion-ioo-source-edition-2.md) | 433 | `result-track:aef1fa444988003eae79fceded9eff0cb23508fe14e05486bd0e1ef1c0796166` |
| 56 | `lemma` | [Set.finite_diff_iUnion_Ioo'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/set-finite-diff-iunion-ioo.md) | 437 | `result-track:7a05579ceb524ce10f5adc8c2d8b8360bd4c66cdcdff27789da91cb85dfb85d1` |
| 57 | `lemma` | [Directed.exists_mem_subset_of_finset_subset_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/directed-exists-mem-subset-of-finset-subset-biunion.md) | 440 | `result-track:bdc6ccfe87b790de292659489b463461323efe859798311920a322d320334ba7` |
| 58 | `theorem` | [DirectedOn.exists_mem_subset_of_finset_subset_biUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/FiniteLattice.lean/declarations/directedon-exists-mem-subset-of-finset-subset-biunion.md) | 451 | `result-track:69fff490d91aa9fc67ca35d6c7f5d7ae4082fbc0f5d51fbf696c63706e1a1c92` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3928a7695c0ac1e500305c8febda37b9701e96ebf76a6dadcec706b5af8e393a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variante09c1e49262e285fa21e3992434730d48a792abc4d31d4e0e448ff526e931144.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Lattice/Variante09c1e49262e285fa21e3992434730d48a792abc4d31d4e0e448ff526e931144.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
