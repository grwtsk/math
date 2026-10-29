# Verification target: WSeq Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad46b784e989f113cdbbfd80dbe830e22fcc0d27",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant0d6159c5012d26a8d2ea0760bae566941bac76f66b64c7cf085c79a0edaf2925.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad46b784e989f113cdbbfd80dbe830e22fcc0d27`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant0d6159c5012d26a8d2ea0760bae566941bac76f66b64c7cf085c79a0edaf2925.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant0d6159c5012d26a8d2ea0760bae566941bac76f66b64c7cf085c79a0edaf2925.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Batteries.Data.DList.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.WSeq.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [length](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/length.md) | 33 | `declaration-track:bc7dfddbda06178a7c4627235d65e2c501419e3b434e03d14c8fef422d2aead6` |
| 2 | `class` | [IsFinite](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/isfinite.md) | 44 | `declaration-track:8532bfc0d1be762911abbfb3337bc26d97dbb33bbe8eb262678925296886c113` |
| 3 | `instance` | [toList_terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/tolist-terminates.md) | 47 | `declaration-track:020627111ca0b722b97f7a383c0157a5e37daf402c0a88c6b7dd730d423f4282` |
| 4 | `def` | [get](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/get.md) | 51 | `declaration-track:d263f405f1e30b837c33104ba5de3355a32250ed39b13a0870061ee184f02b8e` |
| 5 | `def` | [updateNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/updatenth.md) | 55 | `declaration-track:ae905e3eb45ac897a6a479a2463eb782a29da2b7e48247dd391bd08837c04c81` |
| 6 | `def` | [removeNth](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/removenth.md) | 67 | `declaration-track:1853679f68c8adf93e61b12c1bddd227d4e887f61457127f02941b04f81e8de1` |
| 7 | `def` | [filterMap](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/filtermap.md) | 79 | `declaration-track:c57066c17874d9b514c1e4387c7253e290e933fc28c2100ab1ffbb48f2abe0f2` |
| 8 | `def` | [filter](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/filter.md) | 87 | `declaration-track:249802f38db887aa09e8c86bfaa78a0d2546190fbd87c15170df58ebf5bcf657` |
| 9 | `def` | [find](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/find.md) | 92 | `declaration-track:1538ab2df16112fb19b818369ec8c9466e5135ecc87058026a987b814569a016` |
| 10 | `def` | [zipWith](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/zipwith.md) | 96 | `declaration-track:be3c0109fdfef3ac2cd37642071c8cac3082add4ebc24583d24a07d6af702a3f` |
| 11 | `def` | [zip](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/zip.md) | 108 | `declaration-track:29ea2b498ad5f5b43d8320869fe14372446ed54a8c704c7f7425f503adc22365` |
| 12 | `def` | [findIndexes](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/findindexes.md) | 112 | `declaration-track:6d3a9d1c5a904e455296a344be9e8ca37cec0b09a7fcefc7eae625cf963641e6` |
| 13 | `def` | [findIndex](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/findindex.md) | 116 | `declaration-track:dde62d1b318c278a8c5464d2c7e7c15f287039c859d50296a49a9c3dd83b9e8d` |
| 14 | `def` | [indexOf](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/indexof.md) | 120 | `declaration-track:d6c2bced060056b5986dbc0eef067ca867e7c730c0887809ee5d867472ad6dc1` |
| 15 | `def` | [indexesOf](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/indexesof.md) | 124 | `declaration-track:efcfa9b61d89ee1d512f7c5c518f68cff0cc9566ecb7928d56d86728165a53fb` |
| 16 | `def` | [union](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/union.md) | 129 | `declaration-track:71262fa653f34a10f8a13cc56303beb16f5c022f5fddb42a397663bab04e51b1` |
| 17 | `def` | [isEmpty](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/isempty.md) | 143 | `declaration-track:3ded0f9eeb6c8c0c3e63206917bd950ee7db39d31677f5cee4b78899be9023c2` |
| 18 | `def` | [compute](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/compute.md) | 147 | `declaration-track:43284f6996e4d049bec4e931602663abf49dc36cb18c34e0c6e63ff15d873e79` |
| 19 | `def` | [take](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/take.md) | 153 | `declaration-track:0548c568d3cf463d797795c24c118c3db23ad111d5b50a2f91850fdfce577042` |
| 20 | `def` | [splitAt](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/splitat.md) | 165 | `declaration-track:18db983e1c6d45ec955e2c9b6db31a2c50a9b8c7e42f28324671b141d172250b` |
| 21 | `def` | [any](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/any.md) | 176 | `declaration-track:34005031adb23116ab321ec555cd877b3048d23caa38f9b0964c972f19893c6e` |
| 22 | `def` | [all](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/all.md) | 186 | `declaration-track:d6fb81e4f46b592c8d718d2bec3a4d8ad6cd280b4cd48cbbf8c4bdf94dea61c6` |
| 23 | `def` | [scanl](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/scanl.md) | 198 | `declaration-track:a38d58ba477e9e67297eb097f4c7fae59bd05e106e73d0b985e3a7b99d3fe0c3` |
| 24 | `def` | [inits](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/inits.md) | 211 | `declaration-track:5b5af6bfa09dd12de92f77cf3562fe387dcceee0eba0efd1dc4c405721645dc6` |
| 25 | `def` | [collect](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/collect.md) | 225 | `declaration-track:c9e26aa15192146481c6ef9080134ab817280e1f618c22deb2324fdad04b95b9` |
| 26 | `theorem` | [length_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/WSeqDefsNamespaced.lean/declarations/length-eq-map.md) | 228 | `result-track:a19acef837b9107b1da11c82fb20f48578e23f13a5b6e538a4c37257eabe6bef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=078ae1c48d67fad71661cbf37d6d3f4363ec6815ad5a56a6df3a34a3e961a3e7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant0d6159c5012d26a8d2ea0760bae566941bac76f66b64c7cf085c79a0edaf2925.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Defs/Variant0d6159c5012d26a8d2ea0760bae566941bac76f66b64c7cf085c79a0edaf2925.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
