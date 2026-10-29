# Verification target: Indicator Const Pointwise Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e1ca2a7e55dab552fa59318d49cca100110db5c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Variante99ea1503c92935ac0bb84d66afba02c6af2d643141a3b5a1bb980765f477ca7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/IndicatorConstPointwiseNamespacedPublic.lean/index.md) · [Full source](../../../../GeneralTopology/IndicatorConstPointwiseNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e1ca2a7e55dab552fa59318d49cca100110db5c`.

Source path: `GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Variante99ea1503c92935ac0bb84d66afba02c6af2d643141a3b5a1bb980765f477ca7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/IndicatorConstPointwise/Variante99ea1503c92935ac0bb84d66afba02c6af2d643141a3b5a1bb980765f477ca7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_ite](../../../../GeneralTopology/IndicatorConstPointwiseNamespacedPublic.lean/declarations/tendsto-ite.md) | 53 | `result-track:88eb0bb3800eb521d644918391fcb98e1f1b0d55679e6c818050b18a213aed5f` |
| 2 | `lemma` | [tendsto_indicator_const_apply_iff_eventually'](../../../../GeneralTopology/IndicatorConstPointwiseNamespacedPublic.lean/declarations/tendsto-indicator-const-apply-iff-eventually-source-edition-2.md) | 82 | `result-track:ced740696e97d4214e69f345353e40d7442ab8d060c906b92b31a0535eb61ab2` |
| 3 | `lemma` | [tendsto_indicator_const_iff_forall_eventually'](../../../../GeneralTopology/IndicatorConstPointwiseNamespacedPublic.lean/declarations/tendsto-indicator-const-iff-forall-eventually-source-edition-2.md) | 96 | `result-track:e8b9b1e4bc286cb9e4227e2dc637adf34aa8b34328c1fe21e4bc8f560f36f990` |
| 4 | `lemma` | [tendsto_indicator_const_apply_iff_eventually](../../../../GeneralTopology/IndicatorConstPointwiseNamespacedPublic.lean/declarations/tendsto-indicator-const-apply-iff-eventually.md) | 106 | `result-track:04745a206384312cb8da09cfb3578daba75ff83ba48e582f7ca904accb464ccf` |
| 5 | `lemma` | [tendsto_indicator_const_iff_forall_eventually](../../../../GeneralTopology/IndicatorConstPointwiseNamespacedPublic.lean/declarations/tendsto-indicator-const-iff-forall-eventually.md) | 116 | `result-track:b122bdaa7be59f93a98289cbd2de54afb3550d6dcc831197ffb99e14a2572e89` |
| 6 | `lemma` | [tendsto_indicator_const_iff_tendsto_pi_pure'](../../../../GeneralTopology/IndicatorConstPointwiseNamespacedPublic.lean/declarations/tendsto-indicator-const-iff-tendsto-pi-pure-source-edition-2.md) | 123 | `result-track:8471d8494d2f91fb2635ff7fa17cf53d03a67b5354fa80290faa6f1ef3fca3c5` |
| 7 | `lemma` | [tendsto_indicator_const_iff_tendsto_pi_pure](../../../../GeneralTopology/IndicatorConstPointwiseNamespacedPublic.lean/declarations/tendsto-indicator-const-iff-tendsto-pi-pure.md) | 131 | `result-track:6e1249bbf6fb214d9ec73423d2b18b4e7dff370c4ce53a850e0b2f80c7663d26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d3bfcce0b17b8169e5b402b4d546accb174a755dfa98609d0340fd0d77610c5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/IndicatorConstPointwise/Variante99ea1503c92935ac0bb84d66afba02c6af2d643141a3b5a1bb980765f477ca7.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/IndicatorConstPointwise/Variante99ea1503c92935ac0bb84d66afba02c6af2d643141a3b5a1bb980765f477ca7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
