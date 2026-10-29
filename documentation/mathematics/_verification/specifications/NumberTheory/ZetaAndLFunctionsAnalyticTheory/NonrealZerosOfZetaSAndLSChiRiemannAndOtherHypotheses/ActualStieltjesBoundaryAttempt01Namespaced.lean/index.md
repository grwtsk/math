# Verification target: Actual Stieltjes Boundary Attempt01 Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ed6acd62ca82217b9bd6c44fe780347ef989d6e9",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt01/Variantb600e3dfc3bf82c1f0b48ca704c4e9e15d50588050e483b20dc0a101f27f38eb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualStieltjesBoundaryAttempt01Namespaced.lean/index.md) · [Full source](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualStieltjesBoundaryAttempt01Namespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ed6acd62ca82217b9bd6c44fe780347ef989d6e9`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt01/Variantb600e3dfc3bf82c1f0b48ca704c4e9e15d50588050e483b20dc0a101f27f38eb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt01/Variantb600e3dfc3bf82c1f0b48ca704c4e9e15d50588050e483b20dc0a101f27f38eb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ActualFirstStieltjes` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Harmonic.ZetaAsymp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.RealDeriv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_termTSum_one](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualStieltjesBoundaryAttempt01Namespaced.lean/declarations/actual-termtsum-one.md) | 24 | `result-track:cfa8b27f528b278f4ce91e52e146e584f50f0ae313849bb6ca57d7216444155d` |
| 2 | `theorem` | [actual_regular_zeta_real_right](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualStieltjesBoundaryAttempt01Namespaced.lean/declarations/actual-regular-zeta-real-right.md) | 28 | `result-track:53311796544530d2799d5b044e54d99619992880749b74ecdf46027e5e8d0156` |
| 3 | `theorem` | [actual_real_regular_derivative_of_termTSum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualStieltjesBoundaryAttempt01Namespaced.lean/declarations/actual-real-regular-derivative-of-termtsum.md) | 47 | `result-track:57477d2f679878070bf0cf049ddd15a14b9e80b816e2c30688c0160b081b47ee` |
| 4 | `theorem` | [actual_regular_zeta_derivative_of_termTSum](../../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ActualStieltjesBoundaryAttempt01Namespaced.lean/declarations/actual-regular-zeta-derivative-of-termtsum.md) | 57 | `result-track:92dbfbd586fcfab305c0cdd3952f868c79e99c62c4ea83d09db811b86524c2ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=840ea5d2d4ccf366ea68316f7d37426e7f51dde6d46048fcf40d734872a93b57 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt01/Variantb600e3dfc3bf82c1f0b48ca704c4e9e15d50588050e483b20dc0a101f27f38eb.lean","GRWTSK/_verification/specifications/Analysis/RealAnalysis/DifferentialCalculus/ActualStieltjesBoundaryAttempt01/Variantb600e3dfc3bf82c1f0b48ca704c4e9e15d50588050e483b20dc0a101f27f38eb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
