# Verification target: List Take Drop Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2f480718a0a8423e1ff29f310fe2396c2752e27d",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Varianta44d0a089faffc024079fc48cb22bf6a8cfc07059f72d9d2c0e2a11b64974edf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2f480718a0a8423e1ff29f310fe2396c2752e27d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Varianta44d0a089faffc024079fc48cb22bf6a8cfc07059f72d9d2c0e2a11b64974edf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Varianta44d0a089faffc024079fc48cb22bf6a8cfc07059f72d9d2c0e2a11b64974edf.lean.json)

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
| 1 | `theorem` | [take_one_drop_eq_of_lt_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/take-one-drop-eq-of-lt-length.md) | 37 | `result-track:1baab98b6f238b3c215c4fde1e5af0b6e115851f719be97bc762caaa3a51d970` |
| 2 | `lemma` | [take_eq_self_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/take-eq-self-iff.md) | 42 | `result-track:707ebb8d77c60efbfd0bc078fabcae6e3299fd1300a87957c33989cd98c1c65a` |
| 3 | `lemma` | [take_self_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/take-self-eq-iff.md) | 45 | `result-track:ff9abd398536a7448b94db8344764e2ac35e2e5faeedb5a407c076e2f455e10f` |
| 4 | `lemma` | [take_eq_left_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/take-eq-left-iff.md) | 48 | `result-track:ee469cfdb775cd55cbd90c3af0084d66cc1ab9e639a427085bf71030ccec5040` |
| 5 | `lemma` | [left_eq_take_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/left-eq-take-iff.md) | 52 | `result-track:e0b75e642a6ac4e06e53ee7cfc25ab9f075c09a2a643007a14185387bd801265` |
| 6 | `lemma` | [drop_take_append_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/drop-take-append-drop-source-edition-2.md) | 56 | `result-track:a4915722a99bf43c1bb4ab75aff851e33fa0cb46c7103cd8ce726530309c4ca0` |
| 7 | `lemma` | [drop_take_append_drop'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/drop-take-append-drop.md) | 60 | `result-track:808f5cff7a9a7074fb039e41f621c0ee6c0874b93072cd4c192e927f1e49230f` |
| 8 | `lemma` | [take_concat_get'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/take-concat-get.md) | 64 | `result-track:bbdd923a425aae53e234883bfbf23ed96c69b20c02cfe02f30ab014f903a59c5` |
| 9 | `theorem` | [cons_getElem_drop_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/cons-getelem-drop-succ.md) | 67 | `result-track:24b47046cd92f42436ca6dcdfbb850639de76796ceeba6c5866fbb6353e0cfeb` |
| 10 | `theorem` | [cons_get_drop_succ](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/cons-get-drop-succ.md) | 71 | `result-track:bf6b47d9740d968d4b41c1029d0623a915dc6ce7ed1ea2646aab3ee8513ad659` |
| 11 | `lemma` | [drop_length_sub_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/drop-length-sub-one.md) | 75 | `result-track:67ccc080cd195fbc5a53326fc13b54240193728c5ca983f013254ccd50109f7c` |
| 12 | `theorem` | [tail_iterate](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/tail-iterate.md) | 85 | `result-track:478ffaee4525d0e4aa67241ac5c7b4c1d29313a6b8f197229962af7574416a64` |
| 13 | `theorem` | [tail_take_eq_take_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/tail-take-eq-take-tail.md) | 94 | `result-track:eaa1556dcd5d2e60f4e8f37f191927e78354e7cfdde8e877253de17034de6e2f` |
| 14 | `theorem` | [dropLast_take_eq_take_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/droplast-take-eq-take-droplast.md) | 98 | `result-track:2e9b4ad8351a9e7ec6d18a69db7edf5ef08836abb42c305046196a3c5aa2f81c` |
| 15 | `theorem` | [tail_drop_eq_drop_tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/tail-drop-eq-drop-tail.md) | 102 | `result-track:d88311bcee33bbb2f3e4530ae16f05f0a34a746e24bca0532a11dacec681668c` |
| 16 | `theorem` | [dropLast_drop_eq_drop_dropLast](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/droplast-drop-eq-drop-droplast.md) | 106 | `result-track:7713647bd9f0efb7d04174655a03e4dc8371820474da48a6e1b6f82994dcde0c` |
| 17 | `theorem` | [takeI_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/takei-length.md) | 117 | `result-track:5f000c8964b86e15050224aff8529970ad467baf449da1cdfc2b89fa89f2e659` |
| 18 | `theorem` | [takeI_nil](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/takei-nil.md) | 122 | `result-track:30db3029518f544be9ac6b8916b1e88ba8c73f2f1c129408eb75d678f809b627` |
| 19 | `theorem` | [takeI_eq_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/takei-eq-take.md) | 126 | `result-track:ccf6e357343d731a6bb1c916271a6275d8bc9aa53c20e20ab862bf592b7efa91` |
| 20 | `theorem` | [takeI_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/takei-left.md) | 131 | `result-track:7e127cf0cd6ae3d1761023f1b17b5c8a381465cc082bcc1cebf2bcea8429d6b6` |
| 21 | `theorem` | [takeI_left'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/takei-left-source-edition-2.md) | 134 | `result-track:b8a97962358e0e717ce07ab8a61aedecb4f69912b1b2f6842c055a7da88474c5` |
| 22 | `theorem` | [takeD_length](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/taked-length.md) | 143 | `result-track:5e3c09a413dbbc1e8beee5695d646720965df694d0c061ed2d89184d8bef66f3` |
| 23 | `theorem` | [takeD_eq_take](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/taked-eq-take.md) | 149 | `result-track:b4a43abacbaac098a7e110f548e89e9e6011180307528f7dbfa9fa1e5ed1430b` |
| 24 | `theorem` | [takeD_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/taked-left-source-edition-2.md) | 154 | `result-track:df5a27ea8bcd2845eebca26a46c726f2f1b129f67a7e0a372368af23bd3c0cb3` |
| 25 | `theorem` | [takeD_left'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/taked-left.md) | 157 | `result-track:2fbbfa35b57170afbd71dc90cde6bf0700d73212842534820e08f0371a80c5aa` |
| 26 | `theorem` | [span.loop_eq_take_drop](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/span-loop-eq-take-drop.md) | 170 | `result-track:98aaf2c60db7b384083129d943601e9a6b037919d2a9e1c4e304c01136cb9768` |
| 27 | `theorem` | [span_eq_takeWhile_dropWhile](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/span-eq-takewhile-dropwhile.md) | 177 | `result-track:d1d581262f124bc97c85f947a79248cdd86265e1aff2c4e7b4b22d132d5f9926` |
| 28 | `theorem` | [dropSlice_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/dropslice-eq.md) | 184 | `result-track:ee1040f4c0105eedc8fcc0812087efe03156de57adabc403a6ab80ae83aed03f` |
| 29 | `theorem` | [length_dropSlice](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/length-dropslice.md) | 188 | `result-track:ea23b95cbebe08cddca943c41b6e36cebb398aa620843f03e867c78f1efb75e2` |
| 30 | `theorem` | [length_dropSlice_lt](../../../../../../ComputerScience/TheoryOfData/DataStructures/ListTakeDropPublic.lean/declarations/length-dropslice-lt.md) | 192 | `result-track:4772c8bda3f233f9e39c6a42c70390a20a8538283652c3415f79e54bdc78b1b0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b0f0306a4a76bde5ed228c5c3bb9806b0dece7e68b019cd09bd8c0cb68d0b787 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Varianta44d0a089faffc024079fc48cb22bf6a8cfc07059f72d9d2c0e2a11b64974edf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/TakeDrop/Varianta44d0a089faffc024079fc48cb22bf6a8cfc07059f72d9d2c0e2a11b64974edf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
