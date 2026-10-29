# Verification target: Positive Resolvent

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7f2a13ba214eae6b5fb2b284de1768149ef391c",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/PositiveResolvent/Variante050f556b1eea1b837ff23e966e06fc5407f3cf5f1c04c98f8bfedb92a2cde72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7f2a13ba214eae6b5fb2b284de1768149ef391c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/PositiveResolvent/Variante050f556b1eea1b837ff23e966e06fc5407f3cf5f1c04c98f8bfedb92a2cde72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/PositiveResolvent/Variante050f556b1eea1b837ff23e966e06fc5407f3cf5f1c04c98f8bfedb92a2cde72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Positive` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveShift](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/positiveshift.md) | 21 | `declaration-track:a0f3fe95564ecd9d96bdca229e60e1f80f396f850c9c24dca71b236840e894a5` |
| 2 | `theorem` | [positiveShift_isPositive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/positiveshift-ispositive.md) | 25 | `result-track:501d38fa957074b75ab0be75a60eb9d2c228aca4d54b0ee9208c4ddb0b5de88c` |
| 3 | `theorem` | [positiveShift_coercive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/positiveshift-coercive.md) | 32 | `result-track:9652468993b5073591e0a6172d1d79263212e8fa828e0337ffedb708405134d6` |
| 4 | `theorem` | [positiveShift_isUnit](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/positiveshift-isunit.md) | 47 | `result-track:472953039060be089ba78aaaa02648b301e4c379eba16610535404ad4723431e` |
| 5 | `def` | [positiveResolvent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/positiveresolvent.md) | 58 | `declaration-track:c04869e52c44d83ebdcb3980b6ff209a1e61b3a24a04a3494983cc677b4c4596` |
| 6 | `theorem` | [positiveShift_mul_resolvent](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/positiveshift-mul-resolvent.md) | 62 | `result-track:628fe9be0a7930ba39ae3ba52bf4df5b14f664a63f0867ef3d7fa0310587987e` |
| 7 | `theorem` | [resolvent_mul_positiveShift](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/resolvent-mul-positiveshift.md) | 67 | `result-track:c4793f21fd9e20c4b0cb86152f342a57c2ea35fcdc4430ef60e7d26683bd41c9` |
| 8 | `theorem` | [positiveShift_resolvent_apply](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/positiveshift-resolvent-apply.md) | 72 | `result-track:207eea9afa132e1c3bc4c7cce7302db79332a489e2b407344ce5617edb215869` |
| 9 | `theorem` | [positiveResolvent_norm_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/positiveresolvent-norm-le.md) | 79 | `result-track:3091dd92d3d8e2fc2c01fcbe4b888fbcc8d879d0aca1e363eec375f0ee8736c1` |
| 10 | `theorem` | [positiveResolvent_isPositive](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/positiveresolvent-ispositive.md) | 95 | `result-track:e607bef0936da96895f96bb04b139951150f561ce037f92b23fd1b43b90150af` |
| 11 | `theorem` | [positiveResolvent_sub](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/positiveresolvent-sub.md) | 106 | `result-track:4e5f6467bb064b0d52a526535df855edb37684503c012057e190cb3a8758b446` |
| 12 | `theorem` | [positiveResolvent_sub_norm_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/positiveresolvent-sub-norm-le.md) | 118 | `result-track:2934ab957212f74bd361bd7a7a513b8286465bab6e2d336513f8342cc906dd91` |
| 13 | `def` | [regularizedMass](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/regularizedmass.md) | 132 | `declaration-track:573012321fcd0fbb151f32bc6b448fe97b49508e4743804318a47cece1b3b940` |
| 14 | `theorem` | [abs_re_inner_map_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/abs-re-inner-map-le.md) | 136 | `result-track:8191b02fd6385c92f272eeda0bffe4490b026ccc11f253d928267fb9b921043f` |
| 15 | `theorem` | [regularizedMass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/regularizedmass-sub-abs-le.md) | 145 | `result-track:c18a58f726d2d09791cc4897e80a11d6dad60fe587e47674cb08a6ec1a26bf35` |
| 16 | `theorem` | [reference_regularizedMass_sub_abs_le](../../../../../FunctionalAnalysis/InnerProductSpacesAndTheirGeneralizationsHilbertSpaces/PositiveResolvent.lean/declarations/reference-regularizedmass-sub-abs-le.md) | 165 | `result-track:170e1842c6b5972ca5895ae6a8efaa5ab923a18749bcc85f99900e53613e0c12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=26ca0d87c8f97c2d62ddb3b244b670995be09080f84466cd176954533295d04f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/PositiveResolvent/Variante050f556b1eea1b837ff23e966e06fc5407f3cf5f1c04c98f8bfedb92a2cde72.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/PositiveResolvent/Variante050f556b1eea1b837ff23e966e06fc5407f3cf5f1c04c98f8bfedb92a2cde72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
