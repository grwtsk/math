# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEdgeCertificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43e4146d642551f48744f76956a6317708f4a644",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/index.md) · [Full source](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43e4146d642551f48744f76956a6317708f4a644`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FinitePatternCountBalancing`](../../../../ProbabilityTheoryAndStochasticProcesses/FinitePatternCountBalancing.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BinaryEdgeWord](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/binaryedgeword.md) | 26 | `declaration-track:b468b4bef72170e7480b4c36370f2a6a219ef4a43490d8fb371996dbbc294ee8` |
| 2 | `def` | [CountedBinaryEdge](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedbinaryedge.md) | 29 | `declaration-track:85f87ccb4a2d2e0ad2d033f29bb1b0f38e61948cca1d552c27523f9ff9966ccc` |
| 3 | `def` | [countedBinaryEdgeTotal](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedbinaryedgetotal.md) | 33 | `declaration-track:9e17ef110b19234a1adc46c91ad6c3a106e5f456a9bdbe32fe7f9a5f8cbab6d3` |
| 4 | `def` | [binaryEdgePrefix](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/binaryedgeprefix.md) | 37 | `declaration-track:9de36618ed424588c46122e1d13460d362f037bf6ac16b0e87ef1cd100707b31` |
| 5 | `def` | [binaryEdgeSuffix](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/binaryedgesuffix.md) | 41 | `declaration-track:826cd5970e42c4dfa531ce4b2114dc1ee8f2e7a7eec991e185d6485619f5569c` |
| 6 | `def` | [countedEdgeLabel](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countededgelabel.md) | 45 | `declaration-track:580df98d2d12cf6e723709647ae5534ec6e4b1992cb32ab4c693ac77fb0cbeb4` |
| 7 | `def` | [cyclicSuccessor](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/cyclicsuccessor.md) | 49 | `declaration-track:238d818a439876bab97f059c5617a4424282152a83ae53471133691a0cb334cf` |
| 8 | `structure` | [CountedCyclicEulerCertificate](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedcycliceulercertificate.md) | 54 | `declaration-track:bbf70132f282ec8cc9ebd8221b3e41f09e642621f88272f5e6d428de8875ab99` |
| 9 | `abbrev` | [CyclicBinaryWord](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/cyclicbinaryword.md) | 66 | `declaration-track:faacf21792557340a4f2403fc9033a4405f45dc63bd505b1654ba5fa68c89b0e` |
| 10 | `def` | [cyclicBinaryBlock](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/cyclicbinaryblock.md) | 70 | `declaration-track:c29ec290e0d52075ee6af872e2a1dc2a1651ba19cedf333a3aff38e2dfa19228` |
| 11 | `def` | [cyclicBinaryBlockCount](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/cyclicbinaryblockcount.md) | 75 | `declaration-track:b86228d0630a04743bf99757e58afbd6bb1ad4ed3864d36138b658c80dbf39e0` |
| 12 | `def` | [CyclicCountRealizable](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/cycliccountrealizable.md) | 81 | `declaration-track:b6100066e985e8c25afd0d958830da753a979f602beb1f71f656a892328ed6b9` |
| 13 | `def` | [cyclicShift](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/cyclicshift.md) | 89 | `declaration-track:fd2037bd5fd02370c2b55c4d24725342407466454f7efa5d8608739d6a2a3663` |
| 14 | `theorem` | [cyclicShift_zero](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/cyclicshift-zero.md) | 92 | `result-track:4d7b562cf43082c82f3d3242c7932270127e07ba9127830a777ace8d18ecaf3b` |
| 15 | `theorem` | [cyclicShift_succ](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/cyclicshift-succ.md) | 97 | `result-track:8f3cd4942b6a8b2e48d148312d406cd8c5800bac377a948c153abcc1bf5e3f64` |
| 16 | `def` | [CountedCyclicEulerCertificate.word](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedcycliceulercertificate-word.md) | 104 | `declaration-track:b4804cba3f2b242f1288ac949449d89c40427e97072a9a6ae61e761ce02c3503` |
| 17 | `theorem` | [CountedCyclicEulerCertificate.label_eq_word_shift](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedcycliceulercertificate-label-eq-word-shift.md) | 111 | `result-track:2a13311583f94cc1ba30d23eaecd47f4b9956fd83e9626975be19850c6d50099` |
| 18 | `theorem` | [CountedCyclicEulerCertificate.block_eq_label](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedcycliceulercertificate-block-eq-label.md) | 132 | `result-track:97b6dd8139a990464c4b583c33c28722ebc480210ffbe133313a2e4835dc4462` |
| 19 | `def` | [countedCyclicOrder_label_fiber_equiv](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedcyclicorder-label-fiber-equiv.md) | 141 | `declaration-track:c16a13d35f5e6033fe2415c911f1ad9d1f0be2a8964bf83b917c2d190b8584e6` |
| 20 | `theorem` | [countedCyclicOrder_label_count](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedcyclicorder-label-count.md) | 148 | `result-track:dfe2d118f3fbc4953b405cd1dd779ae34385837649120d3bf4c55a529b408f91` |
| 21 | `theorem` | [cyclicBinaryBlock_compatible](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/cyclicbinaryblock-compatible.md) | 158 | `result-track:da3ccffbe9109eb70ad1639a6b91062901facab1081551d1d7a9b57c8e28e51d` |
| 22 | `def` | [countedCyclicOrderOfCounts](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedcyclicorderofcounts.md) | 174 | `declaration-track:ff572ed7e5a5bbe9f1fea449b3d12598897edee62112636bd5bc5c787a2ef797` |
| 23 | `theorem` | [countedCyclicOrderOfCounts_label](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedcyclicorderofcounts-label.md) | 188 | `result-track:1f8119fc6890adb2a28a16b1f538a6b3359a748da6769a2c27a42de4863c9d4b` |
| 24 | `def` | [countedCyclicEulerCertificateOfCounts](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedcycliceulercertificateofcounts.md) | 199 | `declaration-track:ad2f8a904280aaf8ad64b01a497acc5e9b04a6702b9795fb51d00064fbb41f21` |
| 25 | `theorem` | [cyclicCountRealizable_has_certificate](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/cycliccountrealizable-has-certificate.md) | 212 | `result-track:9146b15aa9595d348ae0f60a7c72edea49a3388085c0f15d6744c754528b695a` |
| 26 | `theorem` | [CountedCyclicEulerCertificate.word_count](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedcycliceulercertificate-word-count.md) | 222 | `result-track:043c989f329c609f95980f645d1fb702a2526f918dcf4f25168c25395c6ecfd3` |
| 27 | `theorem` | [CountedCyclicEulerCertificate.realizable](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedcycliceulercertificate-realizable.md) | 232 | `result-track:f176f01ad58dccb47c794a0677b332c72d0729d13ab2eb11f8e6a8b3bbe17a25` |
| 28 | `theorem` | [countedCyclicEulerCertificate_nonempty_iff](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/countedcycliceulercertificate-nonempty-iff.md) | 239 | `result-track:a09ca8f4d9f4f06010dab24af37d66cdcf1a2a8ed457185616f51c619a48e64c` |
| 29 | `theorem` | [cyclicCountRealizable_iff_certificate](../../../../ProbabilityTheoryAndStochasticProcesses/FiniteCyclicEdgeCertificate.lean/declarations/cycliccountrealizable-iff-certificate.md) | 253 | `result-track:17122cdf2b7883ae951bd6c474fcf72b8736355e7ed74eefb0cf8872b1ddf1bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a262059e4a9db2d5bd08a76c37e98cfe057a43e7da5e511677d089131db2f8be -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean","GRWTSK/_verification/specifications/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
