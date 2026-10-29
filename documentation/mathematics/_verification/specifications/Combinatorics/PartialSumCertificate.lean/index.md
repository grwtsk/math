# Verification target: GRWTSK.Combinatorics.Sequences.PartialSumCertificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04761e9e3d2533cc919c68a5dcfeb83028fe2ecd",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/Sequences/PartialSumCertificate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/PartialSumCertificate.lean/index.md) · [Full source](../../../../Combinatorics/PartialSumCertificate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04761e9e3d2533cc919c68a5dcfeb83028fe2ecd`.

Source path: `GRWTSK/Combinatorics/Sequences/PartialSumCertificate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/Sequences/PartialSumCertificate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.Sequences.PartialSumOrdering`](../../../../GroupTheoryAndGeneralizations/PartialSumOrdering.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.DisjointTranspositions`](../../../../Combinatorics/DisjointTranspositions.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.ZeroSumIntervalRepair`](../../../../GroupTheoryAndGeneralizations/ZeroSumIntervalRepair.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [OrderingCertificate](../../../../Combinatorics/PartialSumCertificate.lean/declarations/orderingcertificate.md) | 20 | `declaration-track:27f0c6474745c190c7346ebb208d41b9b5d4f1c75d95f7e1151bdbe7ce50194a` |
| 2 | `inductive` | [CertificateRejection](../../../../Combinatorics/PartialSumCertificate.lean/declarations/certificaterejection.md) | 29 | `declaration-track:24628cabddd1b814fa5cbcd7fb3513356e2ebff464692ec5b069290167ebd286` |
| 3 | `def` | [certificateChecks](../../../../Combinatorics/PartialSumCertificate.lean/declarations/certificatechecks.md) | 34 | `declaration-track:aefc7dcf99edf0910b1658a08be8fb839350e2e686955d3634c36ce81ede5751` |
| 4 | `instance` | [(anonymous)](../../../../Combinatorics/PartialSumCertificate.lean/declarations/instance.md) | 43 | `declaration-track:49ee1ce90e0ffc822f12f3773ef7c1ae0b0e08c13626fbfc985a30e4f5917164` |
| 5 | `def` | [checkCertificate](../../../../Combinatorics/PartialSumCertificate.lean/declarations/checkcertificate.md) | 48 | `declaration-track:26a8b396dd0f2a3e3c356a83361c4f9136312d66e78f05c6e4963464b834b684` |
| 6 | `def` | [diagnoseCertificate](../../../../Combinatorics/PartialSumCertificate.lean/declarations/diagnosecertificate.md) | 52 | `declaration-track:c6cdff734a683cc819618f99807296550831c5ce7b0abb0028fa47e7de3512db` |
| 7 | `theorem` | [checkCertificate_eq_true](../../../../Combinatorics/PartialSumCertificate.lean/declarations/checkcertificate-eq-true.md) | 62 | `result-track:4c36516f62ac917d8a8d54339ad7f511b7501c973d1d9f2008a56005c64c7a42` |
| 8 | `theorem` | [diagnoseCertificate_none_iff](../../../../Combinatorics/PartialSumCertificate.lean/declarations/diagnosecertificate-none-iff.md) | 66 | `result-track:e493825789acf9a0318e7a8cff6f40a356a4f21026ba1f06b9bbd773d4840a2f` |
| 9 | `theorem` | [checkCertificate_sound](../../../../Combinatorics/PartialSumCertificate.lean/declarations/checkcertificate-sound.md) | 73 | `result-track:5f927fe94e31586b8174890e08310e7b2d33921bbb49187d24bd08d09ffbfcb5` |
| 10 | `theorem` | [checkCertificate_packet_sum](../../../../Combinatorics/PartialSumCertificate.lean/declarations/checkcertificate-packet-sum.md) | 83 | `result-track:a3328846db35614b13db8d22eab3d6f177574c2071417690403b2766205f8789` |
| 11 | `theorem` | [checkCertificate_prime_labels](../../../../Combinatorics/PartialSumCertificate.lean/declarations/checkcertificate-prime-labels.md) | 87 | `result-track:3b6afd105ac4d118a64bb75454a7f8102c9b6ac44714c03dbf3ac13a4d7b9d25` |
| 12 | `theorem` | [geometry_produces_accepted_certificate](../../../../Combinatorics/PartialSumCertificate.lean/declarations/geometry-produces-accepted-certificate.md) | 94 | `result-track:96a73a2646129088216fa71b6d9a0e00342aae9da45c3aecf6910333234e37ae` |
| 13 | `def` | [validUnrootedCertificate](../../../../Combinatorics/PartialSumCertificate.lean/declarations/validunrootedcertificate.md) | 106 | `declaration-track:93ecfe8effbe7abc661a128b7050bd917c7926d865871e22f993a9f2190c62f0` |
| 14 | `theorem` | [validUnrootedCertificate_accepted](../../../../Combinatorics/PartialSumCertificate.lean/declarations/validunrootedcertificate-accepted.md) | 114 | `result-track:4bfd2dcbce47ac067d98237820a60a0a22322a2436072b1b2c997fa7d571b898` |
| 15 | `def` | [zeroLabelCertificate](../../../../Combinatorics/PartialSumCertificate.lean/declarations/zerolabelcertificate.md) | 117 | `declaration-track:7fe646435b9b0803dfe41008eeba97ce4ed52ac86566993ba45cca14520d23a9` |
| 16 | `theorem` | [zeroLabelCertificate_rejected](../../../../Combinatorics/PartialSumCertificate.lean/declarations/zerolabelcertificate-rejected.md) | 125 | `result-track:cdfd600e4a03d2dbe5b6608415ce81a6b52428bccb5532cc2eda5aaa5c1d4d96` |
| 17 | `def` | [duplicateLabelCertificate](../../../../Combinatorics/PartialSumCertificate.lean/declarations/duplicatelabelcertificate.md) | 128 | `declaration-track:783c4081e51578d5245cc833a8e6fae8cae7edec82cf7c904e79b171a69eeb7e` |
| 18 | `theorem` | [duplicateLabelCertificate_rejected](../../../../Combinatorics/PartialSumCertificate.lean/declarations/duplicatelabelcertificate-rejected.md) | 136 | `result-track:355e80dae3ecf4e0fea68cb056ce52c167843936567d7c83a05b4b740209f2c6` |
| 19 | `theorem` | [duplicateLabel_distinct_sums](../../../../Combinatorics/PartialSumCertificate.lean/declarations/duplicatelabel-distinct-sums.md) | 140 | `result-track:3945869f95b929d69353132b7876c061aafa6cecf6f5068b0c36a7d06969d41d` |
| 20 | `def` | [collidingCertificate](../../../../Combinatorics/PartialSumCertificate.lean/declarations/collidingcertificate.md) | 143 | `declaration-track:8f665d95ea111f1b3579e9ff4110e2807b3ac6eb5278b02f245872dde778c5dc` |
| 21 | `theorem` | [collidingCertificate_rejected](../../../../Combinatorics/PartialSumCertificate.lean/declarations/collidingcertificate-rejected.md) | 151 | `result-track:16220ce3fdb375166eea97dfc0bf8763dcec4083d770123579f0544aa95bad9f` |
| 22 | `def` | [repairedCertificate](../../../../Combinatorics/PartialSumCertificate.lean/declarations/repairedcertificate.md) | 155 | `declaration-track:8452f7bc365691d236c760ecb73e939abbbc174ae6367f8860944765f75def42` |
| 23 | `theorem` | [repairedCertificate_accepted](../../../../Combinatorics/PartialSumCertificate.lean/declarations/repairedcertificate-accepted.md) | 163 | `result-track:65bd3a8df1f7908037baaa756695344ababbe6c2876426228f1617851b037f9a` |
| 24 | `def` | [excessiveSwapCertificate](../../../../Combinatorics/PartialSumCertificate.lean/declarations/excessiveswapcertificate.md) | 165 | `declaration-track:17bcec7d3ec7c34ec45fb03bce13bc93fd0da7f24515661026cfae508d5625e0` |
| 25 | `theorem` | [excessiveSwapCertificate_rejected](../../../../Combinatorics/PartialSumCertificate.lean/declarations/excessiveswapcertificate-rejected.md) | 173 | `result-track:f1dce1907642a55f3db1065d6d00f3047b5be895624a3d563354ad82ca1a4005` |
| 26 | `def` | [intersectingSwapCertificate](../../../../Combinatorics/PartialSumCertificate.lean/declarations/intersectingswapcertificate.md) | 176 | `declaration-track:c52619f7af5e02fb46ecff015ef08c97202d4180be478bebbd968d8ac3e0b079` |
| 27 | `theorem` | [intersectingSwapCertificate_rejected](../../../../Combinatorics/PartialSumCertificate.lean/declarations/intersectingswapcertificate-rejected.md) | 184 | `result-track:f987d8ecdd391052ffe7f57c78f4910471dd1f1b9993244456850c17367dcf34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d1373dbce05b584c96189384fa4f3a1402a1ca208eec8793d8471c704fe705ce -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Combinatorics/Sequences/PartialSumCertificate.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Sequences/PartialSumCertificate.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
