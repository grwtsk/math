# Verification target: GRWTSK.Analysis.Integral.AffineWeightedTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "480db2f5eac65640c9a6f869be03eca45ab3a14d",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Integral/AffineWeightedTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/index.md) · [Full source](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `480db2f5eac65640c9a6f869be03eca45ab3a14d`.

Source path: `GRWTSK/Analysis/Integral/AffineWeightedTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Integral/AffineWeightedTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AffineChart](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/affinechart.md) | 13 | `declaration-track:fcfbdb0fd957b69017a610d7a46e8a4107356b0cd348592a19066f78463f28a8` |
| 2 | `def` | [AffineChart.apply](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/affinechart-apply.md) | 18 | `declaration-track:7077a834db610400b6dffba75deab38bec677628b451d116346b4b6866ba52eb` |
| 3 | `def` | [AffineChart.inv](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/affinechart-inv.md) | 19 | `declaration-track:066d851d17798d05c175da5edaa1b1d4a1bc1c8d577800e9f719473fdacd10b1` |
| 4 | `theorem` | [AffineChart.inv_apply](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/affinechart-inv-apply.md) | 21 | `result-track:f5d203b16f00a1c2a8b86e0c2656f4b150b527f20a5ddbc02c9aa4d994304ce3` |
| 5 | `theorem` | [AffineChart.apply_inv](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/affinechart-apply-inv.md) | 26 | `result-track:704d4953fd056e2114decebaaff734bb744fe11472a92a5e8f5b9ccd695e6764` |
| 6 | `def` | [AffineChart.then](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/affinechart-then.md) | 32 | `declaration-track:a146d4469185636d9c7583f011d2fcb1bb4a95f9b7695d3fdfc7e0e0d157b2d3` |
| 7 | `theorem` | [AffineChart.then_apply](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/affinechart-then-apply.md) | 37 | `result-track:39754f01df5b961a49f6761091b1a472db7e9914239fee7ccccf650fc67bafeb` |
| 8 | `theorem` | [AffineChart.then_inv](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/affinechart-then-inv.md) | 42 | `result-track:8da28ffd4866940cd6523867c2bec6aef5e5b652571ec1594319829722d15154` |
| 9 | `def` | [transportWeight](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/transportweight.md) | 48 | `declaration-track:3958611492ec50eb6a8b26504c10e268a7c68ac857b4f81f1b3cc10b2be813ef` |
| 10 | `def` | [pull](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/pull.md) | 49 | `declaration-track:7e54991dea75ec02bb27abe5f7061eb4ab97c302ccd6d3c297949f0a02786a1e` |
| 11 | `theorem` | [weight_composition](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/weight-composition.md) | 52 | `result-track:36ed0257a1432c5a1b21885cd68a7b978cf2018bd7e081da016caccb41ac7105` |
| 12 | `theorem` | [pull_composition](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/pull-composition.md) | 57 | `result-track:c0108d316bfd4dfbf89e5670ffaa26b2a7f7cab95d625ec7eb4eb8e0b86d9aea` |
| 13 | `def` | [energy](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/energy.md) | 69 | `declaration-track:78e19fb5eea99511f1cab1a862a46dd71bc8924d6c26b1b707d6ed7d53500643` |
| 14 | `theorem` | [affine_integral](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/affine-integral.md) | 72 | `result-track:0aa0832371d752307a82cb5f0334890deb8c2adfa7b9e8ce444cabf8ceb15982` |
| 15 | `theorem` | [energy_transport](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/energy-transport.md) | 78 | `result-track:0c48f194f20a9f40f8bb9834b3496c6ac25499033f97530d18be5a4136cb6960` |
| 16 | `def` | [intervalMean](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/intervalmean.md) | 97 | `declaration-track:2b47c96d3a8524a3de5d1ef68d9beabbde3474d83221f427d732ccb8137db3f1` |
| 17 | `def` | [A2Bound](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/a2bound.md) | 102 | `declaration-track:027c49c5eaf4f3ef5b8dffa3650b4267fabc7331a2710406280fc6f61b9613b0` |
| 18 | `theorem` | [intervalMean_transport](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/intervalmean-transport.md) | 105 | `result-track:866b16b5c148d1654b60a0a2eb092d6743250d042e7f5b43611eb9c56ea29dcf` |
| 19 | `theorem` | [a2Bound_transport_iff](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/a2bound-transport-iff.md) | 114 | `result-track:18e5b38f20bdb7440b80e8d8d00810069e5800e17277f298ca23d0ece8f78a8d` |
| 20 | `theorem` | [endpoint_energy](../../../../MeasureAndIntegration/AffineWeightedTransport.lean/declarations/endpoint-energy.md) | 133 | `result-track:d09aec832e5cb0f9b4211507300624bc86565aa4a960690ee9defa75d3e75964` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=46800d2af66067bf60462620fd5a9f1ff53d5544aa0d05049f1d3fd7725c7b00 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Integral/AffineWeightedTransport.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/AffineWeightedTransport__SourceOccurrence3b749acd0af376d3c3934895.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
