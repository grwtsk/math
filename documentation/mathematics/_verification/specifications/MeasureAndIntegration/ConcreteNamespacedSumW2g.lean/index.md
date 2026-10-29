# Verification target: Concrete Namespaced Sum W2g

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b7cd22ca7a05a27b73662f0731932eb76fffc5c",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/index.md) · [Full source](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b7cd22ca7a05a27b73662f0731932eb76fffc5c`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.XiPrime.Statement` — import line 25; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Traces` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Density` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Cross` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Trace` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.XiPrime.PrimeSide.Abel` — import line 30; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.WindowLocalHyps` — import line 31; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.Window` — import line 32; external provider; requires a separately pinned dependency.
- `Zeta23.PrimeSideB.Concrete` — import line 33; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sumW2g](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/sumw2g.md) | 51 | `declaration-track:7cc8fb8a303bf3824cad91f01cbf92ceb5504d77eee15029efa6ed925fb2d4dd` |
| 2 | `def` | [sumSqDivW](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/sumsqdivw.md) | 55 | `declaration-track:509c26f7177e48219926e3011330eb34866f510a876764f430aa33c89cbfd5e8` |
| 3 | `def` | [sumSqW](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/sumsqw.md) | 58 | `declaration-track:67c49744999ac5c30df0a36041b6a30c62201e3ecd5f3c357bf19c9f337d9707` |
| 4 | `lemma` | [sumSqDivW_nonneg](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/sumsqdivw-nonneg.md) | 60 | `result-track:3e87ae0731bffb9df6807761dc20d3bc41afd560153c839f08f99b1d74a36fa3` |
| 5 | `lemma` | [sumSqW_nonneg](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/sumsqw-nonneg.md) | 62 | `result-track:8ac29fbc3fd820df4bda97e0c31aaf4c8f2251a28ba6ee6da88f4aeb33defff5` |
| 6 | `def` | [PPInput](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/ppinput.md) | 70 | `declaration-track:ddd05bef527a26ee5ee802bbd57199d369317c72823167700654b5536e95f75a` |
| 7 | `def` | [AdmFamily](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/admfamily.md) | 79 | `declaration-track:bc8a855f1452427de5f1099e2ea45bec53f0cef39220af26eff192376cafa970` |
| 8 | `abbrev` | [Fw](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/fw.md) | 87 | `declaration-track:b7f434f5ebb677d5537bcbce5b8aefe291097174177ebd9caf9bd24a64a4c438` |
| 9 | `def` | [concreteData](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/concretedata.md) | 90 | `declaration-track:cb268ef68f077364b378a95a63a20c7c61ee260670ab96f52d523a2885966450` |
| 10 | `lemma` | [regime_eventually](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/regime-eventually.md) | 114 | `result-track:95f122d8dbbe41be5d526d3b71f05ad9388f19cdb530515afbbb97f837426876` |
| 11 | `lemma` | [localHypsCore_eventually](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/localhypscore-eventually.md) | 129 | `result-track:e9e719a23b4364ad12e013e777be354458a9c82c9772b0b3e8ec7898437fbcf7` |
| 12 | `lemma` | [S1_eventually](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/s1-eventually.md) | 140 | `result-track:44ab8ccdd8e3d3b0d5fc40f8e5d48ee4cc080b7f4cfd40ed7ded420566469754` |
| 13 | `lemma` | [sumSq_eventually](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/sumsq-eventually.md) | 150 | `result-track:54d794633b8473d3606a3de25a76aab55ec02ffd310293196aa8a2ef3f02ea1c` |
| 14 | `lemma` | [D_bound](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/d-bound.md) | 160 | `result-track:007a0827d6272375a96bd745e4d9266e6d1ee41b9b5fd818627b6b2e4ef0768a` |
| 15 | `lemma` | [sumSqDiv_eventually](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/sumsqdiv-eventually.md) | 165 | `result-track:cf50d9d43e9e49abc5434e8f4445178a8056d66969b521a61479f8b2eaf49c33` |
| 16 | `lemma` | [gv_deriv_facts](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/gv-deriv-facts.md) | 192 | `result-track:ed5cfa3103245833826f8a2a6b90e75981e12ae8f6266e7aed390065e7c19785` |
| 17 | `lemma` | [eventually_of_core](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/eventually-of-core.md) | 209 | `result-track:d81ee7fc4fc01215f88fab747599b8a0cec2b146c1ddfc4eccfef583df0c8ba6` |
| 18 | `theorem` | [concreteFacts](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/concretefacts.md) | 218 | `result-track:4c4aa933657416463d3fa2dd54bd44ce99f59fa4aa55490476967ec19643561f` |
| 19 | `theorem` | [tracesBoundsXi_concrete](../../../../MeasureAndIntegration/ConcreteNamespacedSumW2g.lean/declarations/tracesboundsxi-concrete.md) | 474 | `result-track:e0e97b3d72e7f7a2bb77c26631077356700d06934c58b63f300bf83642b6f462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=581793d096ab70ccd1cb2adec3c2cedb94e3b4eeff21c818ea962ca52c3276fb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Concrete/Variant2226c31cbd1ef0e0895ae1990587435455686769a0514dd92a63676439483cea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
