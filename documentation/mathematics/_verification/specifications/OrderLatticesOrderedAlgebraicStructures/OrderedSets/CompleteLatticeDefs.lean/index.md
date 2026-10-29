# Verification target: Complete Lattice Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c5def2798baf5bb8e2cb205d275bb570c96217d",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant125301c245b062aa469762fb48297a712a9df3756b970ef57366208cffe99125.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c5def2798baf5bb8e2cb205d275bb570c96217d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant125301c245b062aa469762fb48297a712a9df3756b970ef57366208cffe99125.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant125301c245b062aa469762fb48297a712a9df3756b970ef57366208cffe99125.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Bounds.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SetNotation` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [OrderDual.supSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/orderdual-supset.md) | 47 | `declaration-track:afa7d80b649f79c808067d0b611220555b8eb9e4ca094b963b404013fd67b772` |
| 2 | `instance` | [OrderDual.infSet](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/orderdual-infset.md) | 50 | `declaration-track:d5e1b49d1ef4b71f0a2e9b3f543d622e84868b6c9bdeb6e0b8da4dabd01e53af` |
| 3 | `class` | [CompleteSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/completesemilatticesup.md) | 58 | `declaration-track:2a3dd8732c6f040923838a7f56a80ab3b524a4aa290d5c8f26262e6f1de5276c` |
| 4 | `theorem` | [le_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/le-ssup.md) | 68 | `result-track:f48202a09570969667009a7e2e385a16345fc537c362a0b30cb37956167e69f9` |
| 5 | `theorem` | [sSup_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/ssup-le.md) | 71 | `result-track:aaf3d52e0a805c8dc7929744f0fad5616cc5f8537444147863b81b9c916c1e9c` |
| 6 | `theorem` | [isLUB_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/islub-ssup.md) | 74 | `result-track:7759d7e201bc915eaa4035cebe51d52fbb2eb4b23d96183e4b4ff78772b6065f` |
| 7 | `lemma` | [isLUB_iff_sSup_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/islub-iff-ssup-eq.md) | 77 | `result-track:d2198ac5bd160e7bf14d7361be46a0f3200f67e57f2adef72509809c99bcb019` |
| 8 | `theorem` | [le_sSup_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/le-ssup-of-le.md) | 82 | `result-track:ebf9605aa15ce9214337161d5dbc88549240766d5b814c22c75cab7a6e97ac32` |
| 9 | `theorem` | [sSup_le_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/ssup-le-ssup.md) | 86 | `result-track:6d4a1f1af50b5ef77c5204e370204c94b6b1de910f776c073d46fe54a59c8671` |
| 10 | `theorem` | [sSup_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/ssup-le-iff.md) | 90 | `result-track:6937b3a6df7e3bd1912d2b0d07f4d2c294dc5fa0a55abd9452466d3fe975d757` |
| 11 | `theorem` | [le_sSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/le-ssup-iff.md) | 93 | `result-track:34adcdacb88ff27e5598524dee74a2700bec4f5c193a952db89859fca71bbf9c` |
| 12 | `theorem` | [le_iSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/le-isup-iff.md) | 96 | `result-track:67d8c9551d6369d35f4ae844a678da0c2dfd67596ce9d0875ef2c1454fa0057c` |
| 13 | `class` | [CompleteSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/completesemilatticeinf.md) | 106 | `declaration-track:cb2fc4e408a0518d21eed68861caab067eec16b92df04670335ef20210d579d7` |
| 14 | `theorem` | [sInf_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/sinf-le.md) | 116 | `result-track:eca1c532e98d1909eb2b690e3260bba8b8075db371e4f0f550cacf5026de00e6` |
| 15 | `theorem` | [le_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/le-sinf.md) | 119 | `result-track:27ac8ce6a9b864658bf0cb861720146e0c2fc863010e3046480ba0ae24efc091` |
| 16 | `theorem` | [isGLB_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/isglb-sinf.md) | 122 | `result-track:9879b4f7b41db6e58059dce5842baf05c78dcbe38820a92dbf3296db375ff881` |
| 17 | `lemma` | [isGLB_iff_sInf_eq](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/isglb-iff-sinf-eq.md) | 125 | `result-track:34ef8680ff5fe82acdd452838bde764c36ec1b88c2171e1d2778a34851c2f36f` |
| 18 | `theorem` | [sInf_le_of_le](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/sinf-le-of-le.md) | 130 | `result-track:b398b11e0704b3cc5655fd7534c00de81aaa78fa1cf40e2be1e5d78b5cdecd0f` |
| 19 | `theorem` | [sInf_le_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/sinf-le-sinf.md) | 134 | `result-track:ad0f05a395399662ee96aa8eba5932ee4a1265cb114390d61172a7995ed4f8b3` |
| 20 | `theorem` | [le_sInf_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/le-sinf-iff.md) | 138 | `result-track:2a263616a4754c76ce072c94234964e0e4ab411c1ebb069290130bed067043bd` |
| 21 | `theorem` | [sInf_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/sinf-le-iff.md) | 141 | `result-track:0e60a69723bcb848396c58600bacc1da9dadcae826fa09f046822bd00e3c6911` |
| 22 | `theorem` | [iInf_le_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/iinf-le-iff.md) | 144 | `result-track:8daecd920aec2012a45c5d5f33a646e3c0b09caf28bdbbe1507ca0aa857d6290` |
| 23 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/instance-source-edition-3.md) | 149 | `declaration-track:e004e8fe97a4afbb00fcaf2effc636bdff37718ee215a380be8732334f9fdd1e` |
| 24 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/instance-source-edition-2.md) | 153 | `declaration-track:76066d506afe65e2d98a5e05f6ce03b12c2839daecb2405ccbafb4f9a13b7d71` |
| 25 | `class` | [CompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/completelattice.md) | 159 | `declaration-track:7857a9a00f0708be7b992ca5cb8c85a016d55aaaba86096e9869f8ab41427cc4` |
| 26 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/instance.md) | 167 | `declaration-track:491ab52b6389ba784ed7ee3a2afad8e548a4814c28b502e7e23deb26f53e03c0` |
| 27 | `def` | [completeLatticeOfInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/completelatticeofinf.md) | 186 | `declaration-track:8c034215034636480f056b86a1052249d4ffcaa651c7958257aeafcaf69c426d` |
| 28 | `def` | [completeLatticeOfCompleteSemilatticeInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/completelatticeofcompletesemilatticeinf.md) | 214 | `declaration-track:850376547bfe01fdd4b7a6abbb724cf90ca88c40ffd3685658843b45ec55572d` |
| 29 | `def` | [completeLatticeOfSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/completelatticeofsup.md) | 233 | `declaration-track:0d77e80d9debd3b303f7e483d3ff98eb0e522c422fa7fe84a9892e6a985fa11e` |
| 30 | `def` | [completeLatticeOfCompleteSemilatticeSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/completelatticeofcompletesemilatticesup.md) | 259 | `declaration-track:0bdb9e64627ff57557c8ac2a7e7987f54784f03cefba672cc2247e2a213b53a2` |
| 31 | `class` | [CompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/completelinearorder.md) | 266 | `declaration-track:20690af5db52aeaffbd8530db19c7bdf916dad40b5751325b11b0787e0d8794e` |
| 32 | `instance` | [CompleteLinearOrder.toLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/completelinearorder-tolinearorder.md) | 280 | `declaration-track:33e9f2b828c19e15ef976fb1f71cd9097a800fd0aca47d99130e53d3471df023` |
| 33 | `instance` | [instCompleteLattice](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/instcompletelattice.md) | 293 | `declaration-track:496e4ba1ff3f9b73d47f15b2545d4e44ed6d751834c64427f6da2cbf47ced0e3` |
| 34 | `instance` | [instCompleteLinearOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/instcompletelinearorder.md) | 300 | `declaration-track:ba21fc7c047cd4d6512c4c80d0dea783e265f04f0054b1f96564edae4edaee3f` |
| 35 | `theorem` | [toDual_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/todual-ssup.md) | 314 | `result-track:a0e5af21798f28c0b3e3fe97680af94456f577a3eac0ebfae4cc66b97ed29348` |
| 36 | `theorem` | [toDual_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/todual-sinf.md) | 318 | `result-track:753f41d3f04de6bcd4720247cb8b90aa823338e64e8b394393596f3f1dfc4169` |
| 37 | `theorem` | [ofDual_sSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/ofdual-ssup.md) | 322 | `result-track:6d0ecc8ffeee2c39b4bcc8fd8866962aa4e44e6763c58155bed054502ec8da29` |
| 38 | `theorem` | [ofDual_sInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/ofdual-sinf.md) | 326 | `result-track:0f5bb7c13a692d6cd9bbcdc89de79174bb2c879744f2847a24bf1daf28bc459a` |
| 39 | `theorem` | [toDual_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/todual-isup.md) | 330 | `result-track:2a01371bff79fa081815747577cb48e3a9ecfdc1f7aafa1d6556b77d1d657ba1` |
| 40 | `theorem` | [toDual_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/todual-iinf.md) | 334 | `result-track:1cc096af303f46ac567b7a516ac32534e3ed608429c7911d9ad6d25b8d9fb999` |
| 41 | `theorem` | [ofDual_iSup](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/ofdual-isup.md) | 338 | `result-track:400a00c19cad4e305c2a3491c588b4cc954bf613afb1cf067ac9644827a6bdec` |
| 42 | `theorem` | [ofDual_iInf](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/ofdual-iinf.md) | 342 | `result-track:9fee592b92ab567257569f1e4ead29e0e88df0c614892b6211c9e86f9acdfe1b` |
| 43 | `theorem` | [lt_sSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/lt-ssup-iff.md) | 351 | `result-track:3ba099b1e2a6a8aa54d89028685c0489d9c0796c6a3b149483ed2b66a4bce2f1` |
| 44 | `theorem` | [sInf_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/sinf-lt-iff.md) | 354 | `result-track:ea147dba5d7230791193afd235d5763a3625328358b8bfb01c83b004863ec53f` |
| 45 | `theorem` | [sSup_eq_top](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/ssup-eq-top.md) | 357 | `result-track:6ccd390149a4781b0acc69cd2b4df7b289135b6fc9095b0f876b85bfe0bdfe3b` |
| 46 | `theorem` | [sInf_eq_bot](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/sinf-eq-bot.md) | 364 | `result-track:38b7016b029e7cb5ee7a8c314602cc2950278294cecfbd7d4db1df715408c8c6` |
| 47 | `theorem` | [lt_iSup_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/lt-isup-iff.md) | 367 | `result-track:8fab488e36b6edbe96c0162c5b7e1b6b8a6b673b10d7dea292e5c4c7adb03a80` |
| 48 | `theorem` | [iInf_lt_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/CompleteLatticeDefs.lean/declarations/iinf-lt-iff.md) | 370 | `result-track:de71b47ba8cda1afff0a29be9d91c0d4e2dd68d82273ef4ca1118bcaecf0f60d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cd7b4d186a1d8002ed8473ff136f9c422c16bfcb820b7376dc3b01639ae0e305 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant125301c245b062aa469762fb48297a712a9df3756b970ef57366208cffe99125.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Defs/Variant125301c245b062aa469762fb48297a712a9df3756b970ef57366208cffe99125.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
