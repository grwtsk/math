# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCoarseCount

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91ceef34cfbd920994350b568fca10b220d69829",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCoarseCount.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCoarseCount.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91ceef34cfbd920994350b568fca10b220d69829`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PositiveHeightCountDeficit`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCountDeficit.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalHighCounting`](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/CanonicalHighCounting.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coarseHighAllowance](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCoarseCount.lean/declarations/coarsehighallowance.md) | 45 | `declaration-track:274d444015f64b08108a3cda9b6528e15d72f9c2e6d847e28e17f5a9cb89c0b1` |
| 2 | `def` | [coarsePositiveUpper](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCoarseCount.lean/declarations/coarsepositiveupper.md) | 49 | `declaration-track:71f749a08da66a150597f4235862293936bc7bed5a94dc4d05a8718ee92527bb` |
| 3 | `theorem` | [highTerm_le_coarseHighAllowance](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCoarseCount.lean/declarations/highterm-le-coarsehighallowance.md) | 53 | `result-track:6f2861b12fc1af1f8529f3ee364ca50001d11f691ce99f9dadc18dfab1b71ab7` |
| 4 | `theorem` | [heightCount_two_le_coarsePositiveUpper](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCoarseCount.lean/declarations/heightcount-two-le-coarsepositiveupper.md) | 60 | `result-track:7e6c8f78f342a33b81ba4bcde7ed2591d9a7f61c2e231a53d8a0d43a2b471160` |
| 5 | `theorem` | [positiveHeightCount_le_coarsePositiveUpper](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCoarseCount.lean/declarations/positiveheightcount-le-coarsepositiveupper.md) | 66 | `result-track:6d39e64f808202709a6cbf51277cb539e6ce99806bb47b62b8153ba09fd84b70` |
| 6 | `theorem` | [rhThrough_of_coarse_positive_credit](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCoarseCount.lean/declarations/rhthrough-of-coarse-positive-credit.md) | 85 | `result-track:49783ccd52071922d194539c2296a1d325d1faea011eb8b66118b9da4e30344b` |
| 7 | `theorem` | [rhThrough_of_coarse_positive_weighted_inventory](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCoarseCount.lean/declarations/rhthrough-of-coarse-positive-weighted-inventory.md) | 96 | `result-track:7193cb7332470c9ad4588c4147182933ea6ae582b77ed58ccfbb3a5df793381e` |
| 8 | `theorem` | [rhThrough_of_coarse_positive_local_contours](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCoarseCount.lean/declarations/rhthrough-of-coarse-positive-local-contours.md) | 108 | `result-track:59112375903dafc0fc8e384ce71ac307beee7f2c054baf032d1dad28b882f4c2` |
| 9 | `theorem` | [riemannHypothesis_of_coarse_positive_credits](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCoarseCount.lean/declarations/riemannhypothesis-of-coarse-positive-credits.md) | 133 | `result-track:050efc95cac67b332562a3b809286f04ca042ec2941adfc69d56d4634c747e2a` |
| 10 | `theorem` | [nonstrict_margin_fixture](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/PositiveHeightCoarseCount.lean/declarations/nonstrict-margin-fixture.md) | 151 | `result-track:f911f18e7b19e71aa5786ec4b8870be80051a5d96b748a7be65d23a38de207ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7e0a4ef69af463b8ecc465b337518300cee27af2f73458ef2e9ec5367433bb6c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean","GRWTSK/_verification/specifications/NumberTheory/Zeta/Riemann/PositiveHeightCoarseCount.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
