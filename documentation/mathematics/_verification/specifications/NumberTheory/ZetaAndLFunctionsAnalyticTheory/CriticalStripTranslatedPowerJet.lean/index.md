# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripTranslatedPowerJet

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6f0f9d4865816456615a9d30d698f7c6c2c26c26",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6f0f9d4865816456615a9d30d698f7c6c2c26c26`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripPowerTaylor`](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripPowerTaylor.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Fin.VecNotation` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [center](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/center.md) | 24 | `declaration-track:1f0bd33446a784628f12acfaad07f05f5e2e9cdb201862d4d45841889d306258` |
| 2 | `def` | [base](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/base.md) | 25 | `declaration-track:7032d4b0a23edc7b55056c683d3e3228a967f91776ffcceaf65e3dbbcb827de0` |
| 3 | `def` | [logCenter](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/logcenter.md) | 27 | `declaration-track:b7dba78b471fdaab2d2bba28d253cf4eb18572ab67622cb7b9f0d4fcb3ab3ad0` |
| 4 | `def` | [sample](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/sample.md) | 28 | `declaration-track:f4de070595c7da0ee002a940fefb5ffb986f05dfd81a5afdbad11bb829ef1f47` |
| 5 | `def` | [coefficients](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/coefficients.md) | 29 | `declaration-track:bb15f5b66b16b7c6c17b65ab6dbab6ce477732e524e5c6921b7de71f93e144f3` |
| 6 | `lemma` | [base_bounds](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/base-bounds.md) | 32 | `result-track:77c48c7d5652ecb3dd9b808976bb093423f98d55a0f4363156a23905e85bd81b` |
| 7 | `lemma` | [center_norm](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/center-norm.md) | 35 | `result-track:83fa2241df303b37dc45e59821e9c9e7c15e6747fcd21894d95b417eb5660453` |
| 8 | `lemma` | [norm_sub_triangle](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/norm-sub-triangle.md) | 38 | `result-track:c3129bb0ccbb37d677d59da98558a8db7cb78ba5ce3d09b7b4768df154bdd223` |
| 9 | `lemma` | [log_rounding](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/log-rounding.md) | 44 | `result-track:d5e6780f3b67786456df0629a181f6a5c1f5585215e5dcb36c46e74ea99f8880` |
| 10 | `lemma` | [log_encloses](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/log-encloses.md) | 52 | `result-track:bc537fc22489de21e193421ec9431ef0314cbebf23f192c5d435e1bebf4c6ba1` |
| 11 | `def` | [logRecord](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/logrecord.md) | 61 | `declaration-track:e29f0008b086e0159d8925f1ffd8cac7085d17647ff052f51279e0ca24f949a7` |
| 12 | `lemma` | [logCenter_bound](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/logcenter-bound.md) | 67 | `result-track:ec7037409b69c3f2cead4b31338b4c1baba2188886171a32b67d02afc79e88e3` |
| 13 | `lemma` | [sample_rounding](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/sample-rounding.md) | 72 | `result-track:4d87706b53c1ce61f37e112fb25b6e35fcb1760959ac521a0fbe0420d06218a0` |
| 14 | `lemma` | [sample_encloses](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/sample-encloses.md) | 81 | `result-track:cf1e36ae2cf87c78b7c7872722435c254f9ebe50302f205544107fc1244495d5` |
| 15 | `def` | [rawCoefficient](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/rawcoefficient.md) | 99 | `declaration-track:d4060ae4fed92253acad5e6c1a29a9d4af1b8a996cbe4e390cd4357b6c0bb7c8` |
| 16 | `def` | [jet](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/jet.md) | 102 | `declaration-track:8b50324736bd224e07f1ef42b7cc05d7840b6cd4f25a80e997983c5f6bb0c865` |
| 17 | `lemma` | [coefficient_rounding](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/coefficient-rounding.md) | 106 | `result-track:add94f4cd267f11cb76355ca5299b0889f04807f9f12b11e9987cc11961cf25b` |
| 18 | `lemma` | [raw_identity](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/raw-identity.md) | 113 | `result-track:df04d43810d9f76ae5b503d081ef057eec9190b9e10766803bab61862678bd69` |
| 19 | `lemma` | [rounded_jet_error](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/rounded-jet-error.md) | 119 | `result-track:d3939bbc7513df7c829578539e1aada3fb637edcda108852770d1c8c591ff06e` |
| 20 | `lemma` | [taylor_norm_le_four](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/taylor-norm-le-four.md) | 135 | `result-track:b226b4484ecfd2ff19a59041da0ef6eb1089ba87fae00545e2afdc092a7a1c65` |
| 21 | `theorem` | [jet_encloses](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CriticalStripTranslatedPowerJet.lean/declarations/jet-encloses.md) | 148 | `result-track:fb1ada7f8a3a14aadb76c9565e1a6916670fd3baffdeac5ecaebeb142ea00209` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bd537b4888342809791ef914332b1ee822c4f2c201b313842807bccbd520a222 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/CriticalStripTranslatedPowerJet.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
