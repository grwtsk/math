# Verification target: Source Actual Adjoint Lower Strip Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "39f1708d64b6e7c8669df0a6187ab4e49be4d550",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/3eca7148e686acd9c6bcSourceActualAdjointLowerStrip/Variant583c14d090bb57d4d92dc43451c37548d2a45e2b8d255e88dc47a490f3945154.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/index.md) · [Full source](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `39f1708d64b6e7c8669df0a6187ab4e49be4d550`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/3eca7148e686acd9c6bcSourceActualAdjointLowerStrip/Variant583c14d090bb57d4d92dc43451c37548d2a45e2b8d255e88dc47a490f3945154.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/3eca7148e686acd9c6bcSourceActualAdjointLowerStrip/Variant583c14d090bb57d4d92dc43451c37548d2a45e2b8d255e88dc47a490f3945154.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualAdjointAbelPrimitives` — import line 6; external provider; requires a separately pinned dependency.
- `RootActualCovariantWorkKernel` — import line 7; external provider; requires a separately pinned dependency.
- `SourceActualStrictWindow` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualLowerStripUpper](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/declarations/actuallowerstripupper.md) | 31 | `declaration-track:4e0eadc31b7e9cd69174b6f4997d267353f34c0576d3e00c2f78550a444919db` |
| 2 | `def` | [actualLowerStripDensity](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/declarations/actuallowerstripdensity.md) | 35 | `declaration-track:eac871af4994d65b1b0d383a17df2453573c3edc933d9dff989e34bcde843992` |
| 3 | `def` | [actualLowerStripInterior](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/declarations/actuallowerstripinterior.md) | 40 | `declaration-track:09e7d36c3cf323d0484a64df2f4b8faba8b5d5dbc37fe0eb61af275f0cc5d544` |
| 4 | `theorem` | [strip_orders](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/declarations/strip-orders.md) | 45 | `result-track:0db6e4246e63cb60705fa719a5cca9e25b412bd534a280b537fa35150161b86c` |
| 5 | `theorem` | [kernel_continuous](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/declarations/kernel-continuous.md) | 65 | `result-track:301ae40ff163ecf3299194167c15eee7aec12a60eaf363fb4c7e028e0bad17fc` |
| 6 | `theorem` | [actualLowerStripDensity_integrableOn](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/declarations/actuallowerstripdensity-integrableon.md) | 79 | `result-track:72a2fd2e8ea9abb34e32b1e828b2a753f413eb1f701803ffa8d91fa42d101f99` |
| 7 | `theorem` | [actualLowerStripInterior_intervalIntegrable](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/declarations/actuallowerstripinterior-intervalintegrable.md) | 103 | `result-track:dc37dd634b44698f4240600d7c11a9508c5b41a1c0c150558660dbdfc5992e7c` |
| 8 | `theorem` | [exp_half_integral](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/declarations/exp-half-integral.md) | 116 | `result-track:5f158f8368e951617f13dabc66b8cebf209f54ab2916e3e4cef39e6cb9691333` |
| 9 | `theorem` | [exp_neg_half_integral](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/declarations/exp-neg-half-integral.md) | 130 | `result-track:e94b5e18f6b8d2302bc6502e31da967501104855530fdcfba7b30ab7937bd255` |
| 10 | `theorem` | [strip_density_abs_le](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/declarations/strip-density-abs-le.md) | 144 | `result-track:5a7a2cb6178bc00975cf958fa57727a174d85cd586ad89b6e844d550022c0ee0` |
| 11 | `theorem` | [actualLowerStripInterior_abs_le](../../../../MeasureAndIntegration/SourceActualAdjointLowerStripNamespaced.lean/declarations/actuallowerstripinterior-abs-le.md) | 168 | `result-track:cf3ec8a8e282cf8b5f766b2517906de19d5dbe88326e67d4e5cee9c9cfc046f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e854965b1182abf1d80135014a3ae71d25d130f87a70599352bb937dfa3b9464 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/Integration/3eca7148e686acd9c6bcSourceActualAdjointLowerStrip/Variant583c14d090bb57d4d92dc43451c37548d2a45e2b8d255e88dc47a490f3945154.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/Integration/3eca7148e686acd9c6bcSourceActualAdjointLowerStrip/Variant583c14d090bb57d4d92dc43451c37548d2a45e2b8d255e88dc47a490f3945154.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
