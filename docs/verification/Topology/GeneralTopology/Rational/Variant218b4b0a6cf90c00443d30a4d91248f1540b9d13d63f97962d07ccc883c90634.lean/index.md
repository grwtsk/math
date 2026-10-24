# Verification target: GRWTSK.Topology.GeneralTopology.Rational.Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a55f8b5abac2aa70c4bda57e94400c3ed41c6595",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a55f8b5abac2aa70c4bda57e94400c3ed41c6595`.

Source path: `GRWTSK/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RationalSegment](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/rationalsegment--cbcaf9da2716ddb3fa66e280.md) | 24 | `declaration-track:cbcaf9da2716ddb3fa66e2805ff805629de61bb5946332295fbff66efb1f3d4e` |
| 2 | `def` | [denominator](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/denominator--59f5b6b40c4303b5faa94a20.md) | 36 | `declaration-track:59f5b6b40c4303b5faa94a20081f196b228e1ee20174bdc169c1556ae15bbe01` |
| 3 | `def` | [numerator](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/numerator--5cb187bf7b9f9e60f316746e.md) | 41 | `declaration-track:5cb187bf7b9f9e60f316746e80d7c74139a4e7d81064c593f9c825e910ebdb3b` |
| 4 | `theorem` | [denominator_pos](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/denominator-pos--447ab3957e1d11bb6c82d863.md) | 48 | `result-track:447ab3957e1d11bb6c82d86354392680db28f39ead281e35fca20b348241ce55` |
| 5 | `def` | [eval](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/eval--817e78a262c11c67b5763cfc.md) | 71 | `declaration-track:817e78a262c11c67b5763cfc34ca1d47e0dece7ddee55bed4d3003e75bfc3ead` |
| 6 | `theorem` | [eval_zero](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/eval-zero--d294baf384c4a3b49447ea85.md) | 75 | `result-track:d294baf384c4a3b49447ea852dc14cbd23919e5d31bddf57492585b42b77ebb4` |
| 7 | `theorem` | [eval_one](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/eval-one--5f8817a73e9c9c081d428ce8.md) | 80 | `result-track:5f8817a73e9c9c081d428ce82ab3522e308e3aebd50dcf0e6232447a94f6456c` |
| 8 | `theorem` | [continuous_denominator](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/continuous-denominator--6dd18deb40e583427e4d4201.md) | 85 | `result-track:6dd18deb40e583427e4d4201036026983c7b207e1a9c04af0ba17e5a116a2fcb` |
| 9 | `theorem` | [continuous_numerator](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/continuous-numerator--ed7faa7d7e7e7e287f193067.md) | 94 | `result-track:ed7faa7d7e7e7e287f1930675018464adbd552667e3cb4eed46a7c531ccc87e6` |
| 10 | `theorem` | [continuous_eval](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/continuous-eval--4ad9b5d85db4cb69d05d972e.md) | 102 | `result-track:4ad9b5d85db4cb69d05d972ee2fccf71b8d8c032c5032c31d2456a6d89593edc` |
| 11 | `def` | [reverse](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/reverse--5195bd03406a4187d3130f01.md) | 114 | `declaration-track:5195bd03406a4187d3130f01b48ccafa43351eae987a7a4a505889650e7d6b29` |
| 12 | `theorem` | [reverse_control](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/reverse-control--b081e45ecef716267a799c65.md) | 120 | `result-track:b081e45ecef716267a799c659a4c37be63756d99e175c1ab7c3b74b5bc48f447` |
| 13 | `theorem` | [reverse_weight](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/reverse-weight--daca8d6d7a0c12823f627229.md) | 126 | `result-track:daca8d6d7a0c12823f6272299cbd1e9ff547868f98b6e163a443b83a19296d05` |
| 14 | `theorem` | [reverse_reverse](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/reverse-reverse--7a59877b7c0df5563e1d89fa.md) | 132 | `result-track:7a59877b7c0df5563e1d89fa865d28c2fea4b86cca217ecb4b7f635798c3c2e9` |
| 15 | `theorem` | [denominator_reverse](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/denominator-reverse--489cc28e7f5dd2ddd6eec1fa.md) | 138 | `result-track:489cc28e7f5dd2ddd6eec1fad59c64c2ab9c7aecc8dd9bd6dd48f64734972238` |
| 16 | `theorem` | [numerator_reverse](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/numerator-reverse--d3b4d6d01e8a258c2724ad7a.md) | 150 | `result-track:d3b4d6d01e8a258c2724ad7a91511b99aab21b2625700ff44405ab8f12a177c3` |
| 17 | `theorem` | [eval_reverse](../../../../../mathematics/Topology/GeneralTopology/Rational/Variant218b4b0a6cf90c00443d30a4d91248f1540b9d13d63f97962d07ccc883c90634.lean/declarations/eval-reverse--c097a3bf2f173f23ebd67b11.md) | 165 | `result-track:c097a3bf2f173f23ebd67b11f3bc1e2a34fb53c39ad889f6aa90f6b7dba1067e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
