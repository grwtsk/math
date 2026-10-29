# Verification target: Set Card Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1be7590d6cffb30a414b22d2de657130ca071b4e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantbde2ecd036d945510bcfd7686cfdf66ece2636d255a5cb56515c0cbf83b91ab9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1be7590d6cffb30a414b22d2de657130ca071b4e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantbde2ecd036d945510bcfd7686cfdf66ece2636d255a5cb56515c0cbf83b91ab9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Card/Variantbde2ecd036d945510bcfd7686cfdf66ece2636d255a5cb56515c0cbf83b91ab9.lean.json)

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
| 1 | `theorem` | [Set.cardinalMk_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-cardinalmk-icc.md) | 32 | `result-track:f7c4b7acc8d10bc30255893c59ef3bf04e41f756bcbb6f307881adb5b1bd2f2f` |
| 2 | `theorem` | [Set.encard_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-encard-icc.md) | 36 | `result-track:bd068358eaee809b54d69e3abd96ff1d1ad444a7ac94a076d8041560a9799c67` |
| 3 | `theorem` | [Set.ncard_Icc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-ncard-icc.md) | 40 | `result-track:e9539655ab5b667e0a604583dcd87009cbb7f015f53648edca940cd19bc28eed` |
| 4 | `theorem` | [Set.cardinalMk_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-cardinalmk-ico.md) | 44 | `result-track:adac8fdda07cf88fd48aab3bf4a04474e7273c8d2d87b7711fc08b3e389c8f27` |
| 5 | `theorem` | [Set.encard_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-encard-ico.md) | 48 | `result-track:a0529913b86ddd59f797d99129c59b15d782a263fa2006f451974e5b25977bd1` |
| 6 | `theorem` | [Set.ncard_Ico](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-ncard-ico.md) | 52 | `result-track:37fc317e8d521de0995c948833f54ab32af1719deb84cca34eddcbedf2555423` |
| 7 | `theorem` | [Set.cardinalMk_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-cardinalmk-ioo.md) | 56 | `result-track:6b7047476196eb1531a594fc68dd407ba887fb10032118468229517fd578139d` |
| 8 | `theorem` | [Set.encard_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-encard-ioo.md) | 60 | `result-track:be17873a6f5c9de051ac0d28a594dbbc478b08da6ac048854700035da483d488` |
| 9 | `theorem` | [Set.ncard_Ioo](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-ncard-ioo.md) | 64 | `result-track:e1b051b6527d74ba4bba113ba2bab82a24e10584241524b621e2376cbc38c622` |
| 10 | `theorem` | [Set.cardinalMk_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-cardinalmk-ici.md) | 74 | `result-track:ad7627ddadabf564101e404e269632f4bf4ca1a190f9b850e7f8f21be834a54d` |
| 11 | `theorem` | [Set.encard_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-encard-ici.md) | 78 | `result-track:71274db21b8990704070dd5cf81df3d00a87c2315a08453c2fce6dedf2ca093e` |
| 12 | `theorem` | [Set.ncard_Ici](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-ncard-ici.md) | 82 | `result-track:4ac5dae4a250865bdf47e824357d3597d6f112782ea17f6e7d5bd870edef6153` |
| 13 | `theorem` | [Set.cardinalMk_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-cardinalmk-ioi.md) | 86 | `result-track:ac418d8ee50c037b46798494419cdeadfc65ef3e071a9e897fc7b642310613d5` |
| 14 | `theorem` | [Set.encard_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-encard-ioi.md) | 90 | `result-track:8efd604bd641188072a2592134f0163e91daf9590a93054092f64f074e9785c6` |
| 15 | `theorem` | [Set.ncard_Ioi](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-ncard-ioi.md) | 94 | `result-track:e1d323788118ec97ac7edfc3c491aab24785d5577997208a2712eba919ad1f70` |
| 16 | `theorem` | [Set.cardinalMk_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-cardinalmk-uicc.md) | 105 | `result-track:c727a7d141f7a6edbf5634bc5ca96b00eeef9ca3ac96738c2ddae7d8d3ffbeda` |
| 17 | `theorem` | [Set.encard_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-encard-uicc.md) | 108 | `result-track:e2f74af7665e7164805f92d4596e6859d4e4dd11c43d419db9e003ef284f3e42` |
| 18 | `theorem` | [Set.ncard_uIcc](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/SetCardPublic.lean/declarations/set-ncard-uicc.md) | 111 | `result-track:8be8fea63b357f92f5f3ea57d87eaeae11f574f48bf38c30d03e4d58eafefe34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c8ddaa79f9eba50d774d24ab341f4a0289e1a2b0a63685ebe9e0e1750fafd386 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Card/Variantbde2ecd036d945510bcfd7686cfdf66ece2636d255a5cb56515c0cbf83b91ab9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Card/Variantbde2ecd036d945510bcfd7686cfdf66ece2636d255a5cb56515c0cbf83b91ab9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
