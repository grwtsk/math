# Verification target: Two Sided Exponential Over Ninth Power Price For The Actual Weighted Norm Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08851934490227b79c9b4f11523797e58b9db58a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../MeasureAndIntegration/TwoSidedExponentialOverNinthPowerPriceForTheActualWeightedNormEdition1.lean/index.md) · [Full source](../../../../MeasureAndIntegration/TwoSidedExponentialOverNinthPowerPriceForTheActualWeightedNormEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08851934490227b79c9b4f11523797e58b9db58a`.

Source path: `GRWTSK/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.ActualCorrelationOverlapUpper` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.Conversation.ActualWeightedNormBarrier` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [tailPolynomial](../../../../MeasureAndIntegration/TwoSidedExponentialOverNinthPowerPriceForTheActualWeightedNormEdition1.lean/declarations/tailpolynomial.md) | 30 | `declaration-track:b6d8f153f13cdd8c4b2c63bd3e3c736d37aa2123f78324bc488efa978109f01a` |
| 2 | `def` | [tailPrice](../../../../MeasureAndIntegration/TwoSidedExponentialOverNinthPowerPriceForTheActualWeightedNormEdition1.lean/declarations/tailprice.md) | 35 | `declaration-track:b5fdd5982891191f768864d614b106cba2d43521851aa56180ff3d02004ed359` |
| 3 | `def` | [upperConstant](../../../../MeasureAndIntegration/TwoSidedExponentialOverNinthPowerPriceForTheActualWeightedNormEdition1.lean/declarations/upperconstant.md) | 40 | `declaration-track:80f0c047d3be1b07b880e596fb2eac031905a48850fba8c9cc60b99ff892835e` |
| 4 | `theorem` | [fixed_positive_weight_tail_integrable](../../../../MeasureAndIntegration/TwoSidedExponentialOverNinthPowerPriceForTheActualWeightedNormEdition1.lean/declarations/fixed-positive-weight-tail-integrable.md) | 42 | `result-track:da4b947098e8ec51ff918f021997024ce3fd8557a77953fa3aeaae0d6e0da0ed` |
| 5 | `theorem` | [positive_weight_tail_bounds_every_finite_interval](../../../../MeasureAndIntegration/TwoSidedExponentialOverNinthPowerPriceForTheActualWeightedNormEdition1.lean/declarations/positive-weight-tail-bounds-every-finite-interval.md) | 60 | `result-track:1244ba60b4551394d62a0d40c6ddc0d96d31203bc372d2d897b6b616ac668c8c` |
| 6 | `theorem` | [full_actual_weighted_norm_upper](../../../../MeasureAndIntegration/TwoSidedExponentialOverNinthPowerPriceForTheActualWeightedNormEdition1.lean/declarations/full-actual-weighted-norm-upper.md) | 71 | `result-track:81fb1826ae90c626e9ec9bcea5d291222c2330c6848e0fefc6e642bd50c59d1e` |
| 7 | `theorem` | [actual_weighted_norm_has_two_fixed_positive_constants](../../../../MeasureAndIntegration/TwoSidedExponentialOverNinthPowerPriceForTheActualWeightedNormEdition1.lean/declarations/actual-weighted-norm-has-two-fixed-positive-constants.md) | 104 | `result-track:76ecea3c4fead32e6a19e94cc701ad6d8aea17ab72159262f2697340444a25f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5924a55f163c4c22472418b800a4baa7320669b623238e37e13ae40a1477307f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean","GRWTSK/_verification/specifications/Analysis/ActualWeightedNormUpper/Variant15e47d45c259c815f95049beebdb17c432dd5e6b6ba97369fb46ef90baf8a9f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
