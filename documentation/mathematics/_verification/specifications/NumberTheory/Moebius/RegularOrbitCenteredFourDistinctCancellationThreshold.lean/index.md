# Verification target: GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctCancellationThreshold

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90063239a4f74ff917d6a3e6691b8a6f5e87cc20",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean/index.md) · [Full source](../../../../../NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90063239a4f74ff917d6a3e6691b8a6f5e87cc20`.

Source path: `GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.RegularOrbitCenteredFourDistinctWindingSupportSum`](../../../../../NumberTheory/Moebius/RegularOrbitCenteredFourDistinctWindingSupportSum.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourDistinctSupportPowerExponent](../../../../../NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean/declarations/fourdistinctsupportpowerexponent--30ff73cacb4245af1861bd2b.md) | 17 | `declaration-track:30ff73cacb4245af1861bd2ba78701b63a6b6a02014a210343133d2956333d32` |
| 2 | `def` | [naturalEndpointExponent](../../../../../NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean/declarations/naturalendpointexponent--c748a43efdfbf057e3e5cc1c.md) | 20 | `declaration-track:c748a43efdfbf057e3e5cc1c1f6f5f42a334e98b5c61ab830e16eba35982f4ca` |
| 3 | `theorem` | [fourDistinctSupportPower_reaches_natural_iff](../../../../../NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean/declarations/fourdistinctsupportpower-reaches-natural-iff--330099339f6b8c52ce8fa522.md) | 22 | `result-track:330099339f6b8c52ce8fa52212766574620692c96c481d9876b31f8b81c64999` |
| 4 | `theorem` | [squareRoot_supportPower_fails_natural](../../../../../NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean/declarations/squareroot-supportpower-fails-natural--f6a05a96e3112f21b2900a77.md) | 29 | `result-track:f6a05a96e3112f21b2900a7728e7d493640cac2b65fd17363fa0f7d895d4a392` |
| 5 | `theorem` | [quarterPower_supportPower_hits_natural](../../../../../NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean/declarations/quarterpower-supportpower-hits-natural--a396254f5852931e6e80e707.md) | 34 | `result-track:a396254f5852931e6e80e7074b83baecdce91c0cafddcecde7b23b23261ccb5c` |
| 6 | `def` | [StructuredFourDistinctSupportPowerScaling](../../../../../NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean/declarations/structuredfourdistinctsupportpowerscaling--c1090af0a2b027bbe457e9ae.md) | 43 | `declaration-track:c1090af0a2b027bbe457e9ae83e74d0b5fa360268c1acca11e0059c58b1bec91` |
| 7 | `theorem` | [quarterPowerScaling_gives_naturalScale](../../../../../NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean/declarations/quarterpowerscaling-gives-naturalscale--5d323ccb30a36b89147b20fc.md) | 51 | `result-track:5d323ccb30a36b89147b20fc641de7ff3f8d8df0705bf29a7805569a50461cdc` |
| 8 | `structure` | [RegularCenteredFourDistinctCancellationThresholdSourceData](../../../../../NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean/declarations/regularcenteredfourdistinctcancellationthresholdsourcedata--2402d1a634c99b71aaacfd9f.md) | 65 | `declaration-track:2402d1a634c99b71aaacfd9f6876710816390893167f1811d018d462794fe09c` |
| 9 | `def` | [RegularCenteredFourDistinctCancellationThresholdSource](../../../../../NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean/declarations/regularcenteredfourdistinctcancellationthresholdsource--9905e67954d5a25f8957a290.md) | 76 | `declaration-track:9905e67954d5a25f8957a290ee37dbbeb64da871915491782428157969b692f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=93a05f88e8e6cc41b4de78e9f9309132977be4f6e0f8f8616ee5961dea0a64d0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean","GRWTSK/_verification/specifications/NumberTheory/Moebius/RegularOrbitCenteredFourDistinctCancellationThreshold.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
