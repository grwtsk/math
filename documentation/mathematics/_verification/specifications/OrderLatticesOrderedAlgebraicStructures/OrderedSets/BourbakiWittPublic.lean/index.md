# Verification target: Bourbaki Witt Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "067eaa41d028bc3ad6946d3fb78b09ab95292527",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant72108a74369abe73bc41b189b7ec5f9699d1d0b6685d0ad0167267a5a86b93ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `067eaa41d028bc3ad6946d3fb78b09ab95292527`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant72108a74369abe73bc41b189b7ec5f9699d1d0b6685d0ad0167267a5a86b93ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant72108a74369abe73bc41b189b7ec5f9699d1d0b6685d0ad0167267a5a86b93ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NonemptyChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/nonemptychain.md) | 37 | `declaration-track:e5907e5f428590d758663c91100fbe5269d702b3926fc5abe13112bdf7391fa7` |
| 2 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/instance-source-edition-3.md) | 43 | `declaration-track:7caab0ca31273108ee08a8b37e3ec092e66503ecb8785b61212f7ce2d26f726f` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/instance.md) | 47 | `declaration-track:155c6919a05ac9eeca8c8c3d7b04d9660d78b75d6fdc682e3e183fb4fd14742f` |
| 4 | `class` | [ChainCompletePartialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/chaincompletepartialorder.md) | 51 | `declaration-track:2e087f88272a4b0bfa4201dd371527794629fe9d2dd263b77d07d0b30eaef151` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/instance-source-edition-4.md) | 63 | `declaration-track:f77f81d3f25794c8deaefe3aa5214305a9ddfbdede3e4a0cd87683118a72bfba` |
| 6 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/instance-source-edition-2.md) | 68 | `declaration-track:68f11619decd37f5e5866f50d020d77b5238424f7b001687c1fbc0691bf0a715` |
| 7 | `structure` | [IsAdmissible](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/isadmissible.md) | 77 | `declaration-track:e42574587df8c30f68d98d16fac0a30f34599d498f82ec3dbb3b96723470ff0a` |
| 8 | `lemma` | [ici_isAdmissible](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/ici-isadmissible.md) | 85 | `result-track:7afe3d7b14ae3d950199b3303915b8cbde66dfe864ba9349a2a4b5488ac2dae7` |
| 9 | `abbrev` | [bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/bot.md) | 96 | `declaration-track:0b86dd21a5ec223c087adb5d0c53dde12857c3867f15d7a0235880e959f7d8aa` |
| 10 | `lemma` | [bot_isAdmissible](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/bot-isadmissible.md) | 98 | `result-track:99c223aea39917f97dafd1e25a02ce25e1ef0d3e16fc21df2b34c2721a15ba51` |
| 11 | `lemma` | [subset_bot_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/subset-bot-iff.md) | 111 | `result-track:760fa76fc28ef2599bdb68fc1e638bdf7f848a2de221ede9915cc278c023e512` |
| 12 | `lemma` | [map_mem_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/map-mem-bot.md) | 115 | `result-track:8aa2b63d0f49f2e658a04d7f67d2ee985fc87e4ea09de45e907c0ec6ad43c562` |
| 13 | `structure` | [IsExtremePt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/isextremept.md) | 121 | `declaration-track:323878e9ae0b9cb9af67024f6d6f09e3d74d20c208b75ea836d862738cf93473` |
| 14 | `lemma` | [bot_eq_of_le_or_map_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/bot-eq-of-le-or-map-le.md) | 129 | `result-track:ecaa9b36f0135fd02ce85a4b36bd7227a0727267b6e05bb50601142e482aac5b` |
| 15 | `lemma` | [setOfPred_isExtremePt_isAdmissible](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/setofpred-isextremept-isadmissible.md) | 154 | `result-track:872631d5a43016304b0a63586b0d4fa5111382223026628ed60763757432b6f2` |
| 16 | `lemma` | [setOfPred_isExtremePt_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/setofpred-isextremept-eq-bot.md) | 197 | `result-track:a6fdb6608a5798b6ef493b6153a51b10159ecf2870de143a1d9b5de422834ab8` |
| 17 | `lemma` | [mem_bot_iff_isExtremePt](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/mem-bot-iff-isextremept.md) | 205 | `result-track:5ffc6a18ac097b3c6fc756eb0c732a7ef77e8994977b2533ebb5603889331b59` |
| 18 | `lemma` | [bot_isChain](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/bot-ischain.md) | 209 | `result-track:564ebba40e8be0cc0ff47f65ab472a9ae61cfd593e7c2820bfb81d4094b06d3c` |
| 19 | `theorem` | [nonempty_fixedPoints_of_inflationary](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/nonempty-fixedpoints-of-inflationary.md) | 223 | `result-track:5ce57400cb332581a0b1f7d4455ee5e2ecbabe54e176e277a42415361db52fe5` |
| 20 | `lemma` | [ωScottContinuous.iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/scottcontinuous-isup.md) | 242 | `result-track:e1af8fea11c24e569e897d4e36d452bdb4a9525448f8b4051ecbf10ea1efaf97` |
| 21 | `lemma` | [ωScottContinuous.sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/scottcontinuous-ssup.md) | 248 | `result-track:957590601183c2493a2a5ca0b473bc78edbd52b9116b7022598dc6e947d66707` |
| 22 | `lemma` | [ωScottContinuous.sup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/scottcontinuous-sup.md) | 252 | `result-track:93ebdae563fd10e51076c0ef7050b490f8d70b4f9d81b013762f2e9474b26268` |
| 23 | `lemma` | [ωScottContinuous.top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/scottcontinuous-top.md) | 267 | `result-track:b6ac70eb5ddd21a9d736f210716ab82337ae0de3276edeb948b06454698540dd` |
| 24 | `lemma` | [ωScottContinuous.bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/scottcontinuous-bot.md) | 271 | `result-track:76f16fd19b7df17a9450c3e1c1f6a1203b20008e93a5a0f83061904fe13dcbc6` |
| 25 | `lemma` | [ωScottContinuous.inf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/BourbakiWittPublic.lean/declarations/scottcontinuous-inf.md) | 286 | `result-track:91fb3e87e320c8c145b92028d42014744d1394e7f4f9726fa17b0c0e74734355` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0a45318095073e394c8e479f01d4f8200ae1018db375afd00cdcb5dd5188f2e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant72108a74369abe73bc41b189b7ec5f9699d1d0b6685d0ad0167267a5a86b93ce.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/BourbakiWitt/Variant72108a74369abe73bc41b189b7ec5f9699d1d0b6685d0ad0167267a5a86b93ce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
