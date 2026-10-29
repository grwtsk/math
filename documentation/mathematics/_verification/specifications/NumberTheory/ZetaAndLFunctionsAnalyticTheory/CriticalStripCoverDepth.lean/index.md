# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCoverDepth

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7fb26810de85a88a3d8e130575d6766542ff52db",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7fb26810de85a88a3d8e130575d6766542ff52db`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCoverClearance`](../../../../../GeneralTopology/CriticalStripCoverClearance.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [west_midpoint_properties](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/west-midpoint-properties.md) | 27 | `result-track:520a6a71e005720ec0182babf51bfc378354306b7c47be2a48d5b28a6d7e50fa` |
| 2 | `lemma` | [east_midpoint_properties](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/east-midpoint-properties.md) | 37 | `result-track:0ef5c6638f98ff7bef74b70dd288ee7b8125d76d6b5200dcffe4ca7db5703397` |
| 3 | `lemma` | [south_midpoint_properties](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/south-midpoint-properties.md) | 47 | `result-track:fa213ac1a41f1fb7f7afa8bb88f81746d3adb717fc59f270529eda3e63a93d5d` |
| 4 | `lemma` | [north_midpoint_properties](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/north-midpoint-properties.md) | 57 | `result-track:148fff40fcef9eef453a37ba66a1066c1fe87fbaf166a78a4a1221d563cdc2a0` |
| 5 | `theorem` | [firstLeaf_sound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/firstleaf-sound.md) | 72 | `result-track:5b92b75ab026bc56204a7bc82421f3365d436d2862b7c82714e41c26b7abc2a4` |
| 6 | `theorem` | [firstLeaf_complete](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/firstleaf-complete.md) | 90 | `result-track:e0c6ca19f305384cb41cd88492df3640a3a315ba308e565054420db9536a4ab5` |
| 7 | `lemma` | [full_firstLeaf_complete](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/full-firstleaf-complete.md) | 115 | `result-track:2351549f0476a3eb065c0da553aec1445c2e31158e701378abcdaf704097bcb4` |
| 8 | `lemma` | [decay_budget_step](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/decay-budget-step.md) | 124 | `result-track:1c2f83df1fad9c55e10310443889de5e33cfec989983600b8e806c0886c75a3c` |
| 9 | `theorem` | [propose_complete_of_small_boxes](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/propose-complete-of-small-boxes.md) | 136 | `result-track:bd30671c4a976086eeccecb1c846aa1aab5e420d9d8ca03a1007964d00575e88` |
| 10 | `theorem` | [search_isSome_of_propose](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/search-issome-of-propose.md) | 211 | `result-track:ab9f445ec5a47317b7be80fcaca26488e520229c4e361bcb8e1991eac61f8dbe` |
| 11 | `theorem` | [search_complete_of_clearance](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/search-complete-of-clearance.md) | 218 | `result-track:7a88609b85780ed29cb8c168ca53131eafceeb44d594640724607d13befa0790` |
| 12 | `theorem` | [search_eventually_succeeds_of_clearance](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/search-eventually-succeeds-of-clearance.md) | 232 | `result-track:5bfae5e88bf9c50d0bbef38b816881d407d4af0388eda2e9bad2562dc2cd1833` |
| 13 | `theorem` | [search_eventually_of_compact_openCover](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/search-eventually-of-compact-opencover.md) | 248 | `result-track:22edfe3f2507a17824274bde39d85bed9b0bb5aa2a909d196ee83daccde0a779` |
| 14 | `theorem` | [no_clearance_of_budgeted_failure](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/no-clearance-of-budgeted-failure.md) | 257 | `result-track:e2fba1664ce8d781824a4686f06b3ca0f3d7537a7eb7e1065113b7cae6e30c7b` |
| 15 | `def` | [coverOfClearance](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripCoverDepth.lean/declarations/coverofclearance.md) | 269 | `declaration-track:3ce86a9545c04847f3dc55d1152dc77441340f12e7b9a8123e0ffaffe1daf9a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6f4fb2a59d3dc61194c0ff16bcc790d33e6834135bd85e9252ac5f596e19b12 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripCoverDepth.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
