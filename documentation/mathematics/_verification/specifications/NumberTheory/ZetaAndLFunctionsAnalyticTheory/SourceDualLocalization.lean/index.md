# Verification target: Source Dual Localization

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "793d4c104a3aea36c8a25b1c0c05d13fbb058541",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Varianta0371bd287b7a2fee805b7f2ead5b35754443ee91a16341e75dab6a3bbf76e7b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `793d4c104a3aea36c8a25b1c0c05d13fbb058541`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Varianta0371bd287b7a2fee805b7f2ead5b35754443ee91a16341e75dab6a3bbf76e7b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Varianta0371bd287b7a2fee805b7f2ead5b35754443ee91a16341e75dab6a3bbf76e7b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceReflectionDuality` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceHankelLocalization` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceDualSupport` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spatialMask](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/spatialmask.md) | 37 | `declaration-track:d47126ed80ab34b6107941dbe85b72bf47b6fcce8e29197a29162a6d52b660b2` |
| 2 | `theorem` | [spatialMask_coe_ae](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/spatialmask-coe-ae.md) | 41 | `result-track:9d1337dfc88bb9003e503e62ef93bbada62eb730ba150ea6c4d4891e38d151fe` |
| 3 | `theorem` | [spatialMask_idempotent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/spatialmask-idempotent.md) | 46 | `result-track:554795f5f03a90d839b5350bf5ef9680440d223302950f87697d7c2a9505d183` |
| 4 | `theorem` | [spatialMask_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/spatialmask-neg.md) | 57 | `result-track:cb6e08e9453a42d6a9c15e1b9eb64dba153c5020083832725738caf6f68d75ad` |
| 5 | `theorem` | [spatialMask_empty](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/spatialmask-empty.md) | 71 | `result-track:3eaf8e9685092ff32f4861617519bb14c32961fc7d8a8d1ab8352cf189e858bd` |
| 6 | `theorem` | [spatialMask_norm_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/spatialmask-norm-le.md) | 79 | `result-track:08ae5c16ca56c708792e9b6004d8dd1524fa68e8a563d885e5d7b91fedb01956` |
| 7 | `theorem` | [indicator_hasCompactSupport](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/indicator-hascompactsupport.md) | 85 | `result-track:4925a2ef7aa348d2e66774c5ce549f23854d03f2abeb3c13d9e52bdfaeecc052` |
| 8 | `theorem` | [originalSource_spatialMask](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/originalsource-spatialmask.md) | 94 | `result-track:079abcec143bf2988b71db9ec355144dcf3e3628ebb83a10c8fe1b68a041b61e` |
| 9 | `theorem` | [originalSource_mask_not_commute](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/originalsource-mask-not-commute.md) | 113 | `result-track:ab5e1c5c279e3d66527af5d2bb82ae315b582194f0e8f71865defdd215ff4894` |
| 10 | `def` | [dualMask](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/dualmask.md) | 128 | `declaration-track:c9492f7dbd7e4004e5f3512f4fdcd0dafd256ccfed1257de23661ee25e64f590` |
| 11 | `theorem` | [dualMask_dual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/dualmask-dual.md) | 132 | `result-track:03ee9934332662a23572b4c79aa69e72068ada8eda27fb64144c2d029c21a6ce` |
| 12 | `theorem` | [dualMask_neg_dual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/dualmask-neg-dual.md) | 138 | `result-track:88c25de047f4f837c93747abe34e370aaeb75796a57451edbcedff118614bff0` |
| 13 | `theorem` | [dualMask_idempotent](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/dualmask-idempotent.md) | 143 | `result-track:7c3b12cf13eb67cfb18677dcccc6518fbe629ad5f410edad5f97bb608cee0a24` |
| 14 | `theorem` | [localized_dual_pairing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/localized-dual-pairing.md) | 149 | `result-track:b756e9f206d42eb342b1fccfc48e5bbfefd2380f52f29aae90c5594687ec4bf5` |
| 15 | `def` | [overlapMask](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/overlapmask.md) | 157 | `declaration-track:b0ecc3bdf45b75ec12799158dea3e9d12a0dff31d9a9cba757d78dd81f756918` |
| 16 | `def` | [dualOverlapMask](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/dualoverlapmask.md) | 162 | `declaration-track:ec57930ea9a13f2cb601cad8be64eb61f0682953e6ef5974275ae6a7a0ede23a` |
| 17 | `theorem` | [dualOverlapMask_dual](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/dualoverlapmask-dual.md) | 167 | `result-track:d02da0e74f181770a87e6707348dc9943aaa86a9898c6a2e354521717cebff0c` |
| 18 | `theorem` | [overlap_dual_pairing](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SourceDualLocalization.lean/declarations/overlap-dual-pairing.md) | 172 | `result-track:200b613c972b386569e4a9f1f082a3c9aa5970fd3c5e7039c07490e844ccb9e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a521ae26a87e9600ab1b61c2d3bd01f7fc4bb9a9ca8f3f1e860b3771b5b71ca3 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Varianta0371bd287b7a2fee805b7f2ead5b35754443ee91a16341e75dab6a3bbf76e7b.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceDualLocalization/Varianta0371bd287b7a2fee805b7f2ead5b35754443ee91a16341e75dab6a3bbf76e7b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
