# Verification target: Termination Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac91717d072e47d0a24b616ff3cf805e5784101d",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Termination/Variant7594cbdcf17f1c5266f8ecbfe28feb04a20fd14daf18bc0da1baa1d3a977df36.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac91717d072e47d0a24b616ff3cf805e5784101d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Termination/Variant7594cbdcf17f1c5266f8ecbfe28feb04a20fd14daf18bc0da1baa1d3a977df36.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Termination/Variant7594cbdcf17f1c5266f8ecbfe28feb04a20fd14daf18bc0da1baa1d3a977df36.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Option.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.
- `Init.ByCases` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [remainingBytes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/remainingbytes.md) | 27 | `declaration-track:87136293b3b4e2bcb5c10dbbdcb290791e5a0bb473b84da5d83583da24904fec` |
| 2 | `theorem` | [remainingBytes_eq_byteDistance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/remainingbytes-eq-bytedistance-source-edition-2.md) | 30 | `result-track:af6e7db6024cc6a2cdb6120f40830a0992c82eceadb4de23c1b7d79cce969d72` |
| 3 | `theorem` | [remainingBytes_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/remainingbytes-eq.md) | 33 | `result-track:6556eb10b8b0967d36306a639341f0020d74b76e9d37ccffc6267ae4d82a4054` |
| 4 | `theorem` | [remainingBytes_inj](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/remainingbytes-inj.md) | 37 | `result-track:49e200793b1562725b573ea90429723677594e4edf4813282b0ca650fb4c9f68` |
| 5 | `theorem` | [le_iff_remainingBytes_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/le-iff-remainingbytes-le.md) | 44 | `result-track:4899a84012f31240945d210f2efc5323a77ec082291e8827b9e716f824d1dee5` |
| 6 | `theorem` | [lt_iff_remainingBytes_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/lt-iff-remainingbytes-lt-source-edition-2.md) | 51 | `result-track:b9f4c349c7b8c43ac7af9bc358c3ac3a8c742d300d5270cc06e4d02766ec22a2` |
| 7 | `theorem` | [wellFounded_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/wellfounded-lt-source-edition-2.md) | 58 | `result-track:e397879c6bf706262c21c5af0626e3837548cfad5043b79b862db4a596ad2b86` |
| 8 | `theorem` | [wellFounded_gt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/wellfounded-gt-source-edition-2.md) | 62 | `result-track:cc0c802b776c0c02f8662886bc811ec0da84e1cc41f4743298307903a0fc92cf` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/instance-source-edition-3.md) | 66 | `declaration-track:d9e34e238d1fbd7e19755e1ba362c1f8d1460b6e6548eab9a3e1e5714ab58866` |
| 10 | `structure` | [Down](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/down.md) | 72 | `declaration-track:056ae61b8df413e4f28ec49ff0e3daeb8cb65357ec10d5ae92e45c539853084a` |
| 11 | `def` | [down](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/down-source-edition-3.md) | 77 | `declaration-track:dc5f20c0d08d80242ac839e3efe14b1ca0569d9bee0b3b58116e33d77c262861` |
| 12 | `theorem` | [inner_down](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/inner-down-source-edition-2.md) | 81 | `result-track:d15be9bf84dd358fa170f61586b8a26cfc110320e378b0658589f7d422d1471f` |
| 13 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/instance-source-edition-4.md) | 83 | `declaration-track:dcc89ae1a439d77c9a568918f3ba2aeea9a0094547e89676c3e6038522355319` |
| 14 | `theorem` | [ne_endPos_of_next?_eq_some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/ne-endpos-of-next-eq-some.md) | 87 | `result-track:6ca678c56e49769591ed963d30a286b533efc47ec10ff6df5d78b047390b0e02` |
| 15 | `theorem` | [eq_next_of_next?_eq_some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/eq-next-of-next-eq-some.md) | 91 | `result-track:431f547cb219633c1adc25c687ce6bc4c326a125e863d064e4b1c41c5a447b67` |
| 16 | `theorem` | [ne_startPos_of_prev?_eq_some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/ne-startpos-of-prev-eq-some.md) | 95 | `result-track:64ab25410419d5b7b819322694b19b3882dfa6f81c0b0a54256238dfe375855f` |
| 17 | `theorem` | [eq_prev_of_prev?_eq_some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/eq-prev-of-prev-eq-some.md) | 99 | `result-track:a3458424828546c137a6870ac0438f9dafa57c9c9e4eae1f3bce6f1c087c2868` |
| 18 | `theorem` | [lt_next_next](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/lt-next-next-source-edition-2.md) | 104 | `result-track:7c6fed7c1f84bb25a1aef022bbdb82e68e277aed7dc72ef5e096e527ba5b363b` |
| 19 | `theorem` | [prev_prev_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/prev-prev-lt-source-edition-2.md) | 108 | `result-track:af76d1adf0d6f980a5d2c85dfdd58bd873cfbf86159c76faba8eb181a3f101e9` |
| 20 | `theorem` | [next_induction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/next-induction.md) | 111 | `result-track:0e01db879e14824766684c9c207c7cee8b02e1d4068a7785cf72bcdb8e94fcb1` |
| 21 | `theorem` | [prev_induction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/prev-induction-source-edition-2.md) | 118 | `result-track:a7d11131c8faf475e48b8b638887b96e8e194764f2ffead92582113fd3d23a8c` |
| 22 | `def` | [remainingBytes](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/remainingbytes-source-edition-2.md) | 131 | `declaration-track:8cf553ef2ac26a965724fc52ea93478c961b5f415a88732ab163e4f8dc3626be` |
| 23 | `theorem` | [remainingBytes_toSlice](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/remainingbytes-toslice.md) | 135 | `result-track:d993e974ccd37b5f384b31a85f73c4131ab5c7a39117cd6ae7730dd2d7acc079` |
| 24 | `theorem` | [remainingBytes_eq_byteDistance](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/remainingbytes-eq-bytedistance.md) | 138 | `result-track:9cf8a783c7dc50387c029f8323c8413e82ee71c86b0d60e771e4c125852d2fc0` |
| 25 | `theorem` | [remainingBytes_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/remainingbytes-eq-source-edition-2.md) | 141 | `result-track:e56b00999f3260c6c4d8721cfda38752159a424eaab718e2a8f3434d36e45e3c` |
| 26 | `theorem` | [remainingBytes_inj](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/remainingbytes-inj-source-edition-2.md) | 145 | `result-track:54dcf97970884134ab1145e8464093dff6b8db080b6454ec27abed17527a98c9` |
| 27 | `theorem` | [le_iff_remainingBytes_le](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/le-iff-remainingbytes-le-source-edition-2.md) | 149 | `result-track:c8016060824afc7bd7f942c9258bfaee40a768bed2a6f363ba8db7283933df8b` |
| 28 | `theorem` | [lt_iff_remainingBytes_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/lt-iff-remainingbytes-lt.md) | 153 | `result-track:001fe2f5ff63a01c5cbd679a1ddd40a4f011f2819da87a59719ee7da1223aa35` |
| 29 | `theorem` | [wellFounded_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/wellfounded-lt.md) | 157 | `result-track:10f43bb31951288d83332cb38caf9246fc70fea014d90f66e9b8dc2a9220668f` |
| 30 | `theorem` | [wellFounded_gt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/wellfounded-gt.md) | 161 | `result-track:bed4a5676c0709d4962c1bee48aa7d8e689a879a6ef2b294aa8ff9b3e5313cb2` |
| 31 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/instance.md) | 165 | `declaration-track:6e48b0d774b361581d622dee9c4ac31ecd5cb31fb854825f59af5ef3452fe59d` |
| 32 | `structure` | [Down](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/down-source-edition-4.md) | 171 | `declaration-track:f0c8234e7f7fc6b57e37d8536a97af2e12f63d2e80b012fd2acaf441cd5c7865` |
| 33 | `def` | [down](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/down-source-edition-2.md) | 176 | `declaration-track:96d37ba0cd35f82296b9f4264f58beb513c81c11dc5e748f392bf5e42536a5db` |
| 34 | `theorem` | [inner_down](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/inner-down.md) | 180 | `result-track:608ff4cc00fcd283d5598a2a1021bb55b7e979d46fc0b6f9c0b9320c401bddca` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/instance-source-edition-2.md) | 182 | `declaration-track:ada52a3ccb651b8271da957357d5fcf8583618cb16d00e4dc75108586f99e294` |
| 36 | `theorem` | [map_toSlice_next?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/map-toslice-next.md) | 186 | `result-track:0bb56a9930ea5a97fb76803fba50c373087d1f31320d1ac3d40f0d348462caf4` |
| 37 | `theorem` | [map_toSlice_prev?](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/map-toslice-prev.md) | 190 | `result-track:9044a3eb2c93cbea6045fb24f816a3e76dfefe45e4fbb73920afc67f938fd8cc` |
| 38 | `theorem` | [ne_endPos_of_next?_eq_some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/ne-endpos-of-next-eq-some-source-edition-2.md) | 194 | `result-track:c99eacc12b1578faf9da630f6848a86ba491bf6fcd4add16c4c823efa8652e27` |
| 39 | `theorem` | [eq_next_of_next?_eq_some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/eq-next-of-next-eq-some-source-edition-2.md) | 199 | `result-track:e8c6e5fff6ba8263cf91fbdee07e0c674da108b7b9606bd190635e5579b2af4f` |
| 40 | `theorem` | [ne_startPos_of_prev?_eq_some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/ne-startpos-of-prev-eq-some-source-edition-2.md) | 204 | `result-track:b3755791524b5acbdcb4ac71a485b0ec5eabdaf02a9d7ab0c1d05ae8308d432a` |
| 41 | `theorem` | [eq_prev_of_prev?_eq_some](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/eq-prev-of-prev-eq-some-source-edition-2.md) | 209 | `result-track:fc06c93f8818ec00d39b5119d11b3f66994d6a34f0e2b3fa20da151f9bfb1b5d` |
| 42 | `theorem` | [lt_next_next](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/lt-next-next.md) | 215 | `result-track:06f383917509ad7d1218fd2660ad6949106704ef6f00d5c992d9e88d76cbef54` |
| 43 | `theorem` | [prev_prev_lt](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/prev-prev-lt.md) | 219 | `result-track:5caddb44a8587ba7066a89c1bdb9d86ad5fd60788d095fb2ee3398e0525c4543` |
| 44 | `theorem` | [Splits.remainingBytes_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/splits-remainingbytes-eq.md) | 222 | `result-track:0baa3dd88bafc008134c06c62cff9da1a3ede461e5c3020b0449b3cde85994e2` |
| 45 | `theorem` | [next_induction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/next-induction-source-edition-2.md) | 226 | `result-track:884b5ca21d5158d743a3cabccc10441064cb247dec22f2b4990c8fedee55876f` |
| 46 | `theorem` | [prev_induction](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/prev-induction.md) | 233 | `result-track:5c5679b01ec7c0047ac37be9f4b900dd6e3a1d10b55993f058f38f6c920091a9` |
| 47 | `theorem` | [remainingBytes_copy](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/remainingbytes-copy.md) | 246 | `result-track:8d8130fdd20b175b19caab2d468601dd62b93341463211adb0f665dacf30d21a` |
| 48 | `theorem` | [Splits.remainingBytes_eq](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/splits-remainingbytes-eq-source-edition-2.md) | 250 | `result-track:88570ba220a79443d6327773356517135f7b53138514024edf03559834c4dea5` |
| 49 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/macro-rules-source-edition-3.md) | 256 | `declaration-track:6b13ecbe9b973315280b02e04694c61934a59594fd090e223bf26010a5d03f81` |
| 50 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/macro-rules.md) | 261 | `declaration-track:22aef2a12594c7f50d341c69503ac620b3cd87d0331f09d0388890a697f79475` |
| 51 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/macro-rules-source-edition-4.md) | 266 | `declaration-track:dfb9954669f34941e2569229b5b5dbdae4beff62a303cda986302f6a47de1715` |
| 52 | `macro_rules` | [(anonymous)](../../../../../../ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/TerminationPublic.lean/declarations/macro-rules-source-edition-2.md) | 271 | `declaration-track:5825c741d6df7c15690e457c03c638d48340b9fcb63bfea46e8b9b3ea4b1f619` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=34b06f4caf4407f93484dba96a476ac4ffd82aceb0f4de2eb47e84ae00660687 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Termination/Variant7594cbdcf17f1c5266f8ecbfe28feb04a20fd14daf18bc0da1baa1d3a977df36.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Termination/Variant7594cbdcf17f1c5266f8ecbfe28feb04a20fd14daf18bc0da1baa1d3a977df36.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
