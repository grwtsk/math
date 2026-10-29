# Verification target: Kakeya Medoid Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2db8bd84a4f30c41b0231cbf9e7d4fd2ee078ee5",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaMedoid/Variant3242ea807faef6e1c0fb9cef0de825b6901d37313fdfbdc9128f96a3cdacbeb9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2db8bd84a4f30c41b0231cbf9e7d4fd2ee078ee5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaMedoid/Variant3242ea807faef6e1c0fb9cef0de825b6901d37313fdfbdc9128f96a3cdacbeb9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaMedoid/Variant3242ea807faef6e1c0fb9cef0de825b6901d37313fdfbdc9128f96a3cdacbeb9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Think.Pipeline.Center.WeightedCenter` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Phase](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/phase.md) | 16 | `declaration-track:480dea7e06d0e0a0a4d513593cacaa02ae1b66e94caf44faf4e8a3cc1f22d7f6` |
| 2 | `abbrev` | [MemoryVertex](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/memoryvertex.md) | 17 | `declaration-track:011f270740f9cbd72cd02cc3eaaf027dadee9ce7b51120e3c3a37aaaf5040abc` |
| 3 | `abbrev` | [WeightedMemory](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/weightedmemory.md) | 18 | `declaration-track:03b97d4dbfd81c20aa475940fadd49092b63ef9ed61df891eb672687476e0c0a` |
| 4 | `abbrev` | [ResidueAtom](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/residueatom.md) | 19 | `declaration-track:d8256ebeb7ed6c3e93afe54be20f1ce39ce15b29beb720e9bb296c4813d8f50b` |
| 5 | `def` | [centerPhase](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/centerphase.md) | 21 | `declaration-track:2a3eb2348e1e59089c358d9a94c0791bbace3db778b51a98333571f2c6c60bdb` |
| 6 | `def` | [centerDistance](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/centerdistance.md) | 24 | `declaration-track:2b59c03d2faad6bf370797b44bd6f0f749281335695990f6afaa596b688d2b73` |
| 7 | `def` | [phaseDistance](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/phasedistance.md) | 27 | `declaration-track:d05df7d9a245f88234244be677438850703bf38bb1e3da37512bb217eb07986a` |
| 8 | `def` | [medoidObjective](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/medoidobjective.md) | 30 | `declaration-track:87181c8500b3d5120942c75ed2cb4a0f140beede1ca05c215fef1d53f2438a21` |
| 9 | `def` | [medoidBetter](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/medoidbetter.md) | 37 | `declaration-track:b3b242e1e8f01592a8b75c9327bb380d4777c471bdf6db832d2550ec148d5351` |
| 10 | `def` | [chooseBest](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/choosebest.md) | 51 | `declaration-track:47fb858ccfcc3332f80dcaaf5a55375888c951710efffd85a5c4332908c74fd5` |
| 11 | `def` | [medoidK](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/medoidk.md) | 57 | `declaration-track:8a126a268d4f4a6a54fa2106dae5b969521107f314c2a274316ecc926f4454f0` |
| 12 | `def` | [leLex](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/lelex.md) | 65 | `declaration-track:e1cbdef5f218866ff202eed59b37f70bfca9cfd7e70d0c2a73e74264d02e3775` |
| 13 | `def` | [preceqK](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/preceqk.md) | 68 | `declaration-track:37ced644e81a63be99cf4b1049d1f9a9d933855702cbc64ee059c905b6511830` |
| 14 | `def` | [medoidResidues](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/medoidresidues.md) | 78 | `declaration-track:057dbd94670d7949aca78c54d2c89219e377f930893981532c60103fb6777cd0` |
| 15 | `structure` | [MedoidSelection](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/medoidselection.md) | 83 | `declaration-track:ecf7e0e0fdb514d1bcaf4fe6456499d132339833a8426b40e3c811c083680c13` |
| 16 | `def` | [select](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/select.md) | 89 | `declaration-track:e5cdf59baff0908193bc06f6c84fdabf2e71f7d4da008845e01013813e35d1c6` |
| 17 | `theorem` | [medoidResidues_contains_nonTheorem](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/medoidresidues-contains-nontheorem.md) | 97 | `result-track:894d70115e384ecf3d5ce4135bc4d68b0b208503ed40f65eadf211e4253afef3` |
| 18 | `theorem` | [medoidResidues_contains_nonSettlement](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/medoidresidues-contains-nonsettlement.md) | 102 | `result-track:168102ec4787c7561baf731afd9a57f1da0d194f2e6f20b1224aad551ebe0e33` |
| 19 | `theorem` | [preceqK_total](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/preceqk-total.md) | 107 | `result-track:76a38d17baf6b2f3b1be3d44b50aae7fb7e831eef83a33c1c62d5236f898933a` |
| 20 | `theorem` | [centerSpine_preserved](../../../../../ComputerScience/AlgorithmsInComputerScience/KakeyaMedoidNamespaced.lean/declarations/centerspine-preserved.md) | 132 | `result-track:706e888f3e4eb79644d8eb69b9e729fce8db46b7d4e075f4f1d5461a16f32e20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4eaba6a414ac69f80ed35a2004adbc7a34afd19c27923946026f5c1a4d06b7c8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaMedoid/Variant3242ea807faef6e1c0fb9cef0de825b6901d37313fdfbdc9128f96a3cdacbeb9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/KakeyaMedoid/Variant3242ea807faef6e1c0fb9cef0de825b6901d37313fdfbdc9128f96a3cdacbeb9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
