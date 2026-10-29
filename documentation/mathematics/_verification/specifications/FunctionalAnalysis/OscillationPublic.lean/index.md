# Verification target: Oscillation Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "440b72bf27f5d4e6bea6b853923902ed2e65dd2d",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Oscillation/Variantd63243e55d00af4b383fe530144471a8a36b7e50eba0a6760e233f719635bf39.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/OscillationPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/OscillationPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `440b72bf27f5d4e6bea6b853923902ed2e65dd2d`.

Source path: `GRWTSK/Topology/GeneralTopology/Oscillation/Variantd63243e55d00af4b383fe530144471a8a36b7e50eba0a6760e233f719635bf39.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Oscillation/Variantd63243e55d00af4b383fe530144471a8a36b7e50eba0a6760e233f719635bf39.lean.json)

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
| 1 | `def` | [oscillation](../../../../FunctionalAnalysis/OscillationPublic.lean/declarations/oscillation.md) | 40 | `declaration-track:7af1e9e874ce50b0cdea7b719cb8d499f00e60160904d4fb79b721b85c81e8fe` |
| 2 | `def` | [oscillationWithin](../../../../FunctionalAnalysis/OscillationPublic.lean/declarations/oscillationwithin.md) | 44 | `declaration-track:ae88002772463acc8aa0b02404856d3645c9b31c9d382b9740140de3118ac06c` |
| 3 | `theorem` | [oscillationWithin_nhds_eq_oscillation](../../../../FunctionalAnalysis/OscillationPublic.lean/declarations/oscillationwithin-nhds-eq-oscillation.md) | 49 | `result-track:d2645b715d1f4827b88e80d0d2b37002d88c6eaa2246738a700d94bced9d617a` |
| 4 | `theorem` | [oscillationWithin_univ_eq_oscillation](../../../../FunctionalAnalysis/OscillationPublic.lean/declarations/oscillationwithin-univ-eq-oscillation.md) | 54 | `result-track:73fcba4b40cfaf22ae9bd4a342fe7aa9edb264bf6ab57c939874b906ae22672d` |
| 5 | `theorem` | [oscillationWithin_eq_zero](../../../../FunctionalAnalysis/OscillationPublic.lean/declarations/oscillationwithin-eq-zero.md) | 60 | `result-track:29073456f7658498ea52ff3c523dc30f918c1d1355ebed5f50698962054ccc84` |
| 6 | `theorem` | [oscillation_eq_zero](../../../../FunctionalAnalysis/OscillationPublic.lean/declarations/oscillation-eq-zero.md) | 74 | `result-track:dfdd771e569a4c625c4fda1dfb384e9d19c1963ab21ccc42e9958a062cf74ced` |
| 7 | `theorem` | [eq_zero_iff_continuousWithinAt](../../../../FunctionalAnalysis/OscillationPublic.lean/declarations/eq-zero-iff-continuouswithinat.md) | 84 | `result-track:593eed40bd8918da6c4f4815070d7ca32848ca09073fbe4237909621b54a6efc` |
| 8 | `theorem` | [eq_zero_iff_continuousAt](../../../../FunctionalAnalysis/OscillationPublic.lean/declarations/eq-zero-iff-continuousat.md) | 97 | `result-track:67cb48e3a730f0810ef63025af8c8b2d69dcb5eabebe8a8fef7bac62673b4c06` |
| 9 | `theorem` | [uniform_oscillationWithin](../../../../FunctionalAnalysis/OscillationPublic.lean/declarations/uniform-oscillationwithin.md) | 111 | `result-track:656aec7887c96f91607288545e127be6ea97a35d7a0dd7e74dfb240eb315e44f` |
| 10 | `theorem` | [uniform_oscillation](../../../../FunctionalAnalysis/OscillationPublic.lean/declarations/uniform-oscillation.md) | 158 | `result-track:67a14938c7aa53729a77cdf0cc82d60e4f780ab1dab16bb41eda18bb2105715b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=82f806e2a81daf11ebc93d4941190da93a4cd02b9cfe11e4fef21437313120d3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Oscillation/Variantd63243e55d00af4b383fe530144471a8a36b7e50eba0a6760e233f719635bf39.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Oscillation/Variantd63243e55d00af4b383fe530144471a8a36b7e50eba0a6760e233f719635bf39.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
