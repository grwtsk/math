# Verification target: Fix Aligned

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49842e76436040e4aaf006b59f1ab664caf2c6a0",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8def07755a62ee824f99e5dd6b53822e791c92626f430e3fa7f6c6d71cc82191.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49842e76436040e4aaf006b59f1ab664caf2c6a0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8def07755a62ee824f99e5dd6b53822e791c92626f430e3fa7f6c6d71cc82191.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8def07755a62ee824f99e5dd6b53822e791c92626f430e3fa7f6c6d71cc82191.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.PFunctor.Multivariate.W` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [recF](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/recf.md) | 59 | `declaration-track:ce391d3a5ef2b23d6f3ce663bea5ad30488d7e0e6f0dd1af066b0cd8a90821ad` |
| 2 | `theorem` | [recF_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/recf-eq-source-edition-2.md) | 64 | `result-track:9e627625f745d9d001b7fd7372c2e6bd116c83949a37894359e48d5348579d8f` |
| 3 | `theorem` | [recF_eq'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/recf-eq.md) | 71 | `result-track:0ddc44ed021ebe17ba91a41b659a28f23f1787347d78a4da9e83b2cd52b2e388` |
| 4 | `inductive` | [WEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/wequiv.md) | 81 | `declaration-track:3ab1b9cc72249f21e700bf61efdb41812da3ab5ec218afe1645823e73f14b3de` |
| 5 | `theorem` | [recF_eq_of_wEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/recf-eq-of-wequiv.md) | 92 | `result-track:0cc3451a9f2e1d6f8c8cdd9efe3b5d1ddf7dae57ee638446e311063c25f1c0fe` |
| 6 | `theorem` | [wEquiv.abs'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/wequiv-abs.md) | 108 | `result-track:4efc1a7deabe409a58084940ac37ade221c219a66cc145d7649348364d308c5f` |
| 7 | `theorem` | [wEquiv.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/wequiv-refl.md) | 120 | `result-track:31626b467d9ca2c4d489913240069c01c46425c15aa619b8abbf631b14f5ec56` |
| 8 | `theorem` | [wEquiv.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/wequiv-symm.md) | 125 | `result-track:4fb1b2aa84a7947ebd3d98b01414175613b61174ee9edfff3b368314bc6ddba8` |
| 9 | `def` | [wrepr](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/wrepr.md) | 134 | `declaration-track:85d4f52bc62f3b4086a910067f9e727453699c4e0905834df0d5a996bb83335b` |
| 10 | `theorem` | [wrepr_wMk](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/wrepr-wmk.md) | 139 | `result-track:103fa3a097d814ecfa33db5906269dd9d351f323bf3803de06a5b53ffbc6a7a3` |
| 11 | `theorem` | [wrepr_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/wrepr-equiv.md) | 147 | `result-track:a051aca8aa44f35290d754d05aa62cc9800377b37696b72c79d5c1e7f921bf70` |
| 12 | `theorem` | [wEquiv_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/wequiv-map.md) | 157 | `result-track:8df179901e6913ffc4f21ec0ec8c5c6566992c5ce4cb9bfb5b8f2a3feb1c23f5` |
| 13 | `def` | [wSetoid](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/wsetoid.md) | 174 | `declaration-track:439b846e9ca80b040ce142d2a4140d88aab0c29236c6931a7146c9cf993ed05a` |
| 14 | `def` | [Fix](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix.md) | 188 | `declaration-track:26b54d204fc3ac5371c4bb592e6ddaafce06a749916ea29e2afe81dec0dd2d08` |
| 15 | `def` | [Fix.map](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-map.md) | 195 | `declaration-track:ea4e8dd25d0024a2f95bbeda184061d697276d6c6b5a2a51b811741f50b6c4ce` |
| 16 | `instance` | [Fix.mvfunctor](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-mvfunctor.md) | 199 | `declaration-track:8776f7d7048ac618a99488858a5aa7ebc016acb1f9f91e97196626c625964482` |
| 17 | `def` | [Fix.rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-rec.md) | 205 | `declaration-track:63cab83bedbdf37951ff1e1fa1d67297c664f6c3f0463cad3dac0d165859f807` |
| 18 | `def` | [fixToW](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fixtow.md) | 210 | `declaration-track:8758b5aa79a2d96d06ed2af8f0b81f5c9f65fccd04c469d02567d268a864340f` |
| 19 | `def` | [Fix.mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-mk.md) | 216 | `declaration-track:c781d2b22c08608583df5041ece17df109eb2dd06f21c44fb16ffa282f399329` |
| 20 | `def` | [Fix.dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-dest.md) | 221 | `declaration-track:6f9e132204c5e61ae10e180772fef7ba5f6cf15dadd302a0ba94524275ab414e` |
| 21 | `theorem` | [Fix.rec_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-rec-eq.md) | 225 | `result-track:eb580ec7c4aab741dc1652e56bc3613226036f85188ddfe1ec2e28a9d717eda9` |
| 22 | `theorem` | [Fix.ind_aux](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-ind-aux.md) | 242 | `result-track:4b287946be8ebcb483250ec59207af8fe7ae5dc6a19118079482296aa602244b` |
| 23 | `theorem` | [Fix.ind_rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-ind-rec.md) | 258 | `result-track:5dd134d5164a27d1925434ed406d01ed2e11170717bb52325439f7d11d9ea253` |
| 24 | `theorem` | [Fix.rec_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-rec-unique.md) | 279 | `result-track:ce6b258231f7dde467c77a5d0038ae5a8933d36d659c0434b1ff654c1c794a4f` |
| 25 | `theorem` | [Fix.mk_dest](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-mk-dest.md) | 287 | `result-track:989446c3cb5ef714e337eb873c7d66b2f04008c41ac873759cb66d42a8d2bdf9` |
| 26 | `theorem` | [Fix.dest_mk](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-dest-mk.md) | 297 | `result-track:0d97876fa45d80e70ab5b8a267fa9c5102d44e0df26f79316829cd81fec9636b` |
| 27 | `theorem` | [Fix.ind](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-ind.md) | 310 | `result-track:33a6c431463e92a1957bb362fdb9ad8848db81a73f27589c6f72c87bd6a881e9` |
| 28 | `instance` | [mvqpfFix](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/mvqpffix.md) | 326 | `declaration-track:9cb2b9862595258e4652f6d5f0f879bf5c256ad338317ed5e0473c9cc71457f2` |
| 29 | `def` | [Fix.drec](../../../../../../ComputerScience/TheoryOfData/DataStructures/FixAligned.lean/declarations/fix-drec.md) | 344 | `declaration-track:da115bc3b997419bbc9540eda2fa7ee344a1b0b0ce322955ecebcb23024fcb14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ec738b188916843b7aa8d4b0558531b3e6917fdfa5b7d057ad190d8c49a8a3fd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8def07755a62ee824f99e5dd6b53822e791c92626f430e3fa7f6c6d71cc82191.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Fix/Variant8def07755a62ee824f99e5dd6b53822e791c92626f430e3fa7f6c6d71cc82191.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
