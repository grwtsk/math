# Verification target: Snapshot

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8815c787dd5883c97d73ce1610ebeb297c27c07c",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8815c787dd5883c97d73ce1610ebeb297c27c07c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [SortId](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/sortid.md) | 30 | `declaration-track:486ec04b5220626ab60e3bf5331573f184424bb9a11b12b61a7ff25d2b2d7659` |
| 2 | `structure` | [SymbolId](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/symbolid.md) | 36 | `declaration-track:68be726ff921ad714bf470a82d6554d8a395fd3464bab118530f6ec28c3bf19a` |
| 3 | `structure` | [ConstructorId](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/constructorid.md) | 42 | `declaration-track:b2dc490d8dddf2822f4d2eecc7dbf59ec1328a6f9c65c0cc4a2b0d1502f64e2e` |
| 4 | `structure` | [OccurrenceId](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/occurrenceid.md) | 48 | `declaration-track:91c10ed2ef48db64d6724bddf911c96ef4dec5229731dfd2ce8e38ff483fcecc` |
| 5 | `structure` | [NodeId](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/nodeid.md) | 54 | `declaration-track:d3bce33ebb5606e2f0f03a506b8e5b9b66bc888d3f51a7531f964441e5c7ff55` |
| 6 | `structure` | [PrimitiveId](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/primitiveid.md) | 60 | `declaration-track:d3e867ab8406149649da39bab4bdbad5626f258107041697f42776975972024c` |
| 7 | `structure` | [SourceScope](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/sourcescope.md) | 66 | `declaration-track:f61545e1004a08feaa833eb0030ea8ac42a49ceb606b5aa1ec90fe9efa74a359` |
| 8 | `structure` | [Limits](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/limits.md) | 80 | `declaration-track:1e5e162e27fc855ce68abd205fb487f9a089adfa6f40a9f943eb526292086c64` |
| 9 | `structure` | [Symbol](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/symbol.md) | 98 | `declaration-track:026e8257df1e859047597c520de813852094be33b38537aca839038c4c2bf59b` |
| 10 | `structure` | [Assumption](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/assumption.md) | 106 | `declaration-track:a0bedf839ea7902f51840e536577bdff59730a88f1c6126bf694076892307cbf` |
| 11 | `structure` | [Occurrence](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/occurrence.md) | 114 | `declaration-track:846d9c97e5544f3beec093a12079401364de036d478ec71080ca1caf2e77782a` |
| 12 | `inductive` | [SurfaceSlot](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/surfaceslot.md) | 122 | `declaration-track:22f99f5c210e40c1406aea033773e7fd03151446e5431b98e1b4a72250486ebe` |
| 13 | `structure` | [Constructor](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/constructor.md) | 130 | `declaration-track:a4f2f013c7a94a08925783946f40d88b7080ab542e2cc489b3009c0245b6fe45` |
| 14 | `structure` | [Snapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/snapshot.md) | 146 | `declaration-track:46bd203130bac0d47c03abe549995683c4f5bee07aa94122a0258251b2c78ba5` |
| 15 | `def` | [childSlots](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/childslots.md) | 168 | `declaration-track:684a4989971ab8cc47cb430717847ae82f601bf587a121dccc66f32ee86cb9b9` |
| 16 | `def` | [terminalSlots](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/terminalslots.md) | 174 | `declaration-track:31c0949eae86bcae61da0f15874146c634386a2b002804d739efeda62219be74` |
| 17 | `def` | [GitObjectSpelling](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/gitobjectspelling.md) | 180 | `declaration-track:44b3c5c9d2efceb54a83cce5bcf87639b7a9157b2bf2d560dbace7b61f38f3b8` |
| 18 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/instance.md) | 183 | `declaration-track:0718cfdb61b2ec2afd8f5e9e259efccb87e1c33cd6207ad40243bc3d02075511` |
| 19 | `def` | [snapshotWork](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/snapshotwork.md) | 188 | `declaration-track:623d39059764d1282e5f49c73e35511a9bc1d3c22255a50159ba9ba9e589d560` |
| 20 | `def` | [ConstructorValid](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/constructorvalid.md) | 197 | `declaration-track:363ef9881667f0506f299244765b61fd3b1dbeb059276e77c1db772c9ba9a64b` |
| 21 | `def` | [SnapshotValid](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/snapshotvalid.md) | 210 | `declaration-track:1e5cc467f436adea0e9b8dacf5c24679b60096d0bdf702e72a32d92f14c925b4` |
| 22 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/instance-source-edition-2.md) | 240 | `declaration-track:3be24b376deee0af2fa65fa1dbe14c2935c37e0fbb65fd6e2476b2be213b9d50` |
| 23 | `instance` | [(anonymous)](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/instance-source-edition-3.md) | 245 | `declaration-track:88b956a9b23740bafa6dcac7190b8b8427d124349f0d13b2877ed30ae7207d28` |
| 24 | `def` | [checkSnapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/checksnapshot.md) | 250 | `declaration-track:257b5119d1696cdf8a904f46c1a3efddce08423ac82b4e448103f51f789b76ab` |
| 25 | `theorem` | [checkSnapshot_eq_true_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/checksnapshot-eq-true-iff.md) | 252 | `result-track:ee012e6a53dc17276e909b8222b3c2e47638defbf6bc31517fe4926fbc3af316` |
| 26 | `theorem` | [checkSnapshot_sound](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/checksnapshot-sound.md) | 256 | `result-track:f7a15988884b7af05d454ac7794448ec9d4952b47673c35bd9ac82263de40bae` |
| 27 | `structure` | [CheckedSnapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/checkedsnapshot.md) | 261 | `declaration-track:634a664c454a1542e245138f7b0081182814d62caf13fb1dca9e9fd2ec30e1aa` |
| 28 | `def` | [admitSnapshot](../../../../../ComputerScience/AlgorithmsInComputerScience/Snapshot.lean/declarations/admitsnapshot.md) | 268 | `declaration-track:9f7f9c71b57cc804b03599705adbbff47511d65b0fbbf7a7f3a95154aa4105bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f30f0f21395c9a2d21f7d0be234400006846f032bbb7bfaa16c7f7d8c06d2ddc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Snapshot/Variante82c8c048d52ac402646dc415b0ed771490f9a541a7819aba2eb02812390afc1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
