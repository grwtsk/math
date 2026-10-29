# Verification target: Ordinal Fundamental Sequence Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc6f0b37989fdd50f3202495010a2e0fadfc400b",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc6f0b37989fdd50f3202495010a2e0fadfc400b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsFundamentalSeq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/isfundamentalseq.md) | 34 | `declaration-track:0f9432bcdba17cb2d6b65015bfdabc358a86beec912c72b45f02ad204bef29c9` |
| 2 | `theorem` | [iSup_add_one_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/isup-add-one-eq.md) | 47 | `result-track:09c370679acb1141c3104e6e710275a17ca9886e52ac07b42e6e93156fc28071` |
| 3 | `theorem` | [ord_cof](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/ord-cof.md) | 57 | `result-track:89eef3188743661e72a170bbde6cc7f6aa05b62824a1486340d7feec5466c6c1` |
| 4 | `theorem` | [iSup_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/isup-eq.md) | 62 | `result-track:b4b25ea2c483b6e00aac4b519dc277c0e456d52e9737984249f8ea89d712fc3f` |
| 5 | `theorem` | [id](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/id.md) | 69 | `result-track:10dc61f4e9d7f7783dc516b22dafbce52da77eb441421a413711c4a79b7cdbce` |
| 6 | `theorem` | [zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/zero.md) | 75 | `result-track:d06e46968e1db2ad66a72a050a4f4b699ee654afa7d92eaf43ea5a38cc9f662f` |
| 7 | `theorem` | [add_one](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/add-one.md) | 82 | `result-track:b9b7cb591790e87d7d21fe1ea1ac8a3ebdb56abdc91421d41bad6cf20734e682` |
| 8 | `theorem` | [comp](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/comp.md) | 88 | `result-track:4b9913602abcd594908562637c24cf7430cda35ae5626ba3c7ae79b0e83396bb` |
| 9 | `theorem` | [comp_isNormal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/comp-isnormal.md) | 98 | `result-track:d6ef29b7326f851ee0a1ec77f725e0180b0ea6bf50fcfec441433b5a0cd36c53` |
| 10 | `theorem` | [exists_isFundamentalSeq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/exists-isfundamentalseq.md) | 113 | `result-track:30fca382f2846871cec7a34c97ef24e372c6fa266b7d623738da527513a08e36` |
| 11 | `def` | [IsFundamentalSequence](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/isfundamentalsequence.md) | 128 | `declaration-track:efb010e2c0f9284c51260e9ecb46281561e41b26500c0cc30b308474cbb894ef` |
| 12 | `theorem` | [cof_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/cof-eq.md) | 136 | `result-track:a9762fdc83cbd5b5ab5d2857d8a34aa62a70d48093b083b6bca97271d295964c` |
| 13 | `theorem` | [strict_mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/strict-mono.md) | 142 | `result-track:cce79cbc073c9f88a60f9a32b06d479ac67a2b866104ad4f66d824586d2fed24` |
| 14 | `theorem` | [blsub_eq](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/blsub-eq.md) | 147 | `result-track:f5616a38789451b0236a1ce1708395dc7bbb886854424bc8d5ce1b2cda468f34` |
| 15 | `theorem` | [ord_cof](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/ord-cof-source-edition-2.md) | 151 | `result-track:912d53f86b855d0227284ba994ead4e860bcb01f1f78332a089ca45877f49e69` |
| 16 | `theorem` | [id_of_le_cof](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/id-of-le-cof.md) | 158 | `result-track:8dd9fb30f5afcc427c3150224af986b5ec36286df75addbdd8400b74dc86dc15` |
| 17 | `theorem` | [zero](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/zero-source-edition-2.md) | 162 | `result-track:ec7eaf240acfc0273a26dde63603a34e9cbef9030fc3bbeb419790b629fd5e65` |
| 18 | `theorem` | [succ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/succ.md) | 166 | `result-track:1e8b99f84f04e1618ded98a4bede0610be7e13fd53efff9c9afe960a379a5645` |
| 19 | `theorem` | [monotone](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/monotone.md) | 174 | `result-track:2da16bfd0fe825252c897183ac2d15ecdd99474a1129a26cf6042dfcdf53b34a` |
| 20 | `theorem` | [trans](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/trans.md) | 181 | `result-track:f5c4094a0f368584a7833050095e388099f0b62e617cc563716662a52ad60799` |
| 21 | `theorem` | [lt](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/lt.md) | 193 | `result-track:27127a17a2a8a4ee72f7602e3b343b7e4627212e12dc720fc0afeee7a96cdc47` |
| 22 | `theorem` | [exists_fundamental_sequence](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/exists-fundamental-sequence.md) | 201 | `result-track:26f68a9eb8d95e2f94a5601f9c0a51d1f4e8979878f736b20a8265ba193dca25` |
| 23 | `theorem` | [IsFundamentalSequence.of_isNormal](../../../../../../MathematicalLogicAndFoundations/SetTheory/OrdinalAndCardinalNumbers/OrdinalFundamentalSequencePublic.lean/declarations/isfundamentalsequence-of-isnormal.md) | 232 | `result-track:c8fc94cb3d768e8b2a8abc149d1bfdd1080a93e13ab62232018bd76d43793ce3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ab5c0f2419c04539ed2c1df842d9d362757c41e07ec365e0b1c4b28c4db67e47 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/SetTheory/FundamentalSequence/Variant2dcbe50f8da681c3552a87b50de2cf3db0602294c3868529db04e08ad1ac7eea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
