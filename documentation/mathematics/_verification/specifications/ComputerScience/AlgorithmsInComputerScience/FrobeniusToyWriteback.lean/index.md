# Verification target: Frobenius Toy Writeback

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9fc3542aa55cf9180f8167a9ea1491507e6e586",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant86b3d9d1af7171ba6bfa51ca9cb9f5c3eb8843f7ce0ca6578d1450da6f630d99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9fc3542aa55cf9180f8167a9ea1491507e6e586`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant86b3d9d1af7171ba6bfa51ca9cb9f5c3eb8843f7ce0ca6578d1450da6f630d99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant86b3d9d1af7171ba6bfa51ca9cb9f5c3eb8843f7ce0ca6578d1450da6f630d99.lean.json)

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
| 1 | `structure` | [RustToyFrobeniusReceipt](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/rusttoyfrobeniusreceipt.md) | 5 | `declaration-track:00beaab4eb74bd92c1ff0fcc48a3720a70fc7b6ead0e6833e240b71d61d35fec` |
| 2 | `def` | [currentMoveReceipt](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/currentmovereceipt.md) | 17 | `declaration-track:3e3d2ba887a7f3fe0003c5bf1c4c24d46e9580f0b329e3e75a48b2fe50e46511` |
| 3 | `theorem` | [currentMove_ringAlgebraSatisfied](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/currentmove-ringalgebrasatisfied.md) | 29 | `result-track:9deeb4414fc82ba0b9ef5e512ef0ca59066c74a999b4cd3f212f8ea8fc3e9d07` |
| 4 | `theorem` | [currentMove_frobeniusDualitySatisfied](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/currentmove-frobeniusdualitysatisfied.md) | 33 | `result-track:5f2978579bd921862d2a31fd8424472c700d89142031702c96b6920dc0c8b875` |
| 5 | `theorem` | [currentMove_noUnresolvedResidue](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/currentmove-nounresolvedresidue.md) | 37 | `result-track:77af9132f711501d2ab0444f314aa8d8c0c3720a11a79ad99a3deb09e4028bb6` |
| 6 | `inductive` | [Carrier](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/carrier.md) | 41 | `declaration-track:f7ccdcfab59fbd86d8891373ec8db6f11353d646e77b1508ae4520382e817fb8` |
| 7 | `def` | [add](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/add.md) | 48 | `declaration-track:45948cbca0ecc21831dbd405f8bad02f9a21494abdde08b2316a31e7f297c96c` |
| 8 | `def` | [mul](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/mul.md) | 67 | `declaration-track:badd16e2acfbf16954e55a428e432f9439651433c68db0ab53712db204101d7d` |
| 9 | `def` | [neg](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/neg.md) | 86 | `declaration-track:845f922235c60c12a9fe52baf1a1357f84ecc458e1d9185926fedad146256e1e` |
| 10 | `def` | [trace](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/trace.md) | 92 | `declaration-track:a1cc095db3e77f89bbcd49a28f01a4077145c13b71f3354f6c6d55ff2755a2e9` |
| 11 | `def` | [pairing](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/pairing.md) | 98 | `declaration-track:5219538daf74700b6355df87affe98664c0604d664d30f8e4d12b3733c93a14d` |
| 12 | `def` | [allCarrier](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/allcarrier.md) | 100 | `declaration-track:8d3c24fd6327b6fa8ab36acda5bf7bcd0e7c6ea22be79c45cc649911177f127f` |
| 13 | `def` | [carrierEq](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/carriereq.md) | 102 | `declaration-track:58a070414ac47ec6ac47c1073e33679261b601b05b0227d210ddc308c6e974d9` |
| 14 | `def` | [natEq](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/nateq.md) | 103 | `declaration-track:70efe777229dcc8f6addb31fa6379dbc31ad3293667bfaa10fcf919734cdfb1d` |
| 15 | `def` | [all1](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/all1.md) | 104 | `declaration-track:45e70c2c65f0819eeeaffac185f67b344e334e9154c8d857236b4f7c8d4108b6` |
| 16 | `def` | [all2](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/all2.md) | 105 | `declaration-track:f88991698b9f5192debcddeb993d60d7f4875d6ec5a9ded8b1c2d7cdd34f6dbe` |
| 17 | `def` | [all3](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/all3.md) | 106 | `declaration-track:4f0abb62fc7a9da78c9ab4e3c99649f76648adeea31fd45fbfbe00212ddb6d4f` |
| 18 | `def` | [addAssocCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/addassoccheck.md) | 108 | `declaration-track:9ce99c172007ffd75a9259917e349a3eaeae1e8c001e39acca93970ca36dcdea` |
| 19 | `def` | [addCommCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/addcommcheck.md) | 110 | `declaration-track:7a4af8a5d8d3a282b720eb2d74317864ee89b378514a1e174c20322c458ab883` |
| 20 | `def` | [addZeroCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/addzerocheck.md) | 111 | `declaration-track:28057baa097b9b8ccfb184a94a2d90db3e1546a4a1baec781fef973d3fb64b89` |
| 21 | `def` | [addInverseCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/addinversecheck.md) | 113 | `declaration-track:9340858444bdcfb5d6e5455891399d25f05f42bb097af78160b4801a778c0264` |
| 22 | `def` | [mulAssocCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/mulassoccheck.md) | 115 | `declaration-track:0faad5d9904d102449d74ea92b098ca9511ddca0ef6e9470ab627b372dbe2167` |
| 23 | `def` | [mulOneCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/mulonecheck.md) | 117 | `declaration-track:2288622fe9f0202e703814e66282966a337b0da4edf5d347e0f7e3ecb87e0359` |
| 24 | `def` | [zeroMulCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/zeromulcheck.md) | 119 | `declaration-track:58dd147ea095cfe6143e910f0405f4ca4354e95d49bf39e1d602eb70f45f16d7` |
| 25 | `def` | [mulZeroCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/mulzerocheck.md) | 120 | `declaration-track:9b6f19a016f538e5ba73ddad64d0cacbbc3db3f7182fafd2cbaefb8f2bfa87eb` |
| 26 | `def` | [leftDistribCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/leftdistribcheck.md) | 121 | `declaration-track:4e9527a0e31dfeefcc6ae3aee0e7f8bc43e5a2a74dd2fefb943b9b110b0809de` |
| 27 | `def` | [rightDistribCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/rightdistribcheck.md) | 123 | `declaration-track:29a80a91355921055ea6206141487176f8396b5ce8bc7f041b6890996da0025a` |
| 28 | `def` | [ringAlgebraCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/ringalgebracheck.md) | 126 | `declaration-track:2271a7f2209961a31802e75f6d069499c613a79e6a8d7a42c3172350075289e0` |
| 29 | `def` | [frobeniusAssociativityCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/frobeniusassociativitycheck.md) | 130 | `declaration-track:3a8e83b9211cc2d558eee3e26c13912561bddf532d77e0a18d4484f820a30c70` |
| 30 | `def` | [leftNondegenerateCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/leftnondegeneratecheck.md) | 132 | `declaration-track:cb03bad2886f45ae18ad4373b2080f007be0079fa8593722d2fd131669e7d323` |
| 31 | `def` | [rightNondegenerateCheck](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/rightnondegeneratecheck.md) | 134 | `declaration-track:8ec30b4e697989043c4211f505b937a8059b7f8ef41339b572a1aebdbb62567c` |
| 32 | `theorem` | [ringAlgebraCheck_eq_true](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/ringalgebracheck-eq-true.md) | 137 | `result-track:2d6e0e8db677afc6df1653c2f307b2fe555c3b7b2e3d7947f3d266f834c85e77` |
| 33 | `theorem` | [frobeniusAssociativityCheck_eq_true](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/frobeniusassociativitycheck-eq-true.md) | 140 | `result-track:b1d4c4eb597e226109a86ac27e9b50d703076475d0309300a4f212d772ffe53b` |
| 34 | `theorem` | [leftNondegenerateCheck_eq_true](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/leftnondegeneratecheck-eq-true.md) | 144 | `result-track:40f2788c9a0ae3b7204039ffab5f55030d36a8e53f0d46b9b2df038548bd5801` |
| 35 | `theorem` | [rightNondegenerateCheck_eq_true](../../../../../ComputerScience/AlgorithmsInComputerScience/FrobeniusToyWriteback.lean/declarations/rightnondegeneratecheck-eq-true.md) | 148 | `result-track:3429f6673f9b37a38679952d518367d90fc80dcf65e100a022476857e1265e0d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1ebf4be6340fcc922b0423dcf1925f789b48bf55d2e16259e586e3b59179fe68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant86b3d9d1af7171ba6bfa51ca9cb9f5c3eb8843f7ce0ca6578d1450da6f630d99.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FrobeniusToyWriteback/Variant86b3d9d1af7171ba6bfa51ca9cb9f5c3eb8843f7ce0ca6578d1450da6f630d99.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
