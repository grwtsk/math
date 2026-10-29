# Verification target: Mult Of

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f53b61b1cf916bf7d51eed333567a22bb011e0d4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant8b16d42b3cc096dfbe207c2174a73d11e302311b89c8c31a5a82c8b8aa7db57d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f53b61b1cf916bf7d51eed333567a22bb011e0d4`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant8b16d42b3cc096dfbe207c2174a73d11e302311b89c8c31a5a82c8b8aa7db57d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant8b16d42b3cc096dfbe207c2174a73d11e302311b89c8c31a5a82c8b8aa7db57d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Zeta23.ZeroSide` — import line 13; external provider; requires a separately pinned dependency.
- `Zeta23.ZeroSide.RankTraceMult` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [vhat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/vhat.md) | 35 | `declaration-track:7fa528b82799a2db1d957d94e8e1ca954801678d80dd418696a8f242fdba4b3e` |
| 2 | `def` | [mhat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/mhat.md) | 38 | `declaration-track:731048152eef4e2346b516505fa629d6c57c8a797067a26bf706cc0fc301390e` |
| 3 | `lemma` | [mhat_nonneg](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/mhat-nonneg.md) | 40 | `result-track:5943c1e16fd79c90bec20e9401b3dc060f206494863f22e66a905bac432e5249` |
| 4 | `theorem` | [blockP_eq_Pmat](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/blockp-eq-pmat.md) | 43 | `result-track:6489cae18ecae254bd69bf9fbfaf1cbf3b79b8d0739b2bc72e650f3c7a11557e` |
| 5 | `lemma` | [xsq_vhat_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/xsq-vhat-le.md) | 65 | `result-track:15f738bb007b7ae40601999aefb10f67de638d3c8ca2ac2bb6a11849feeb36d7` |
| 6 | `lemma` | [card_onLine_m_eq_one](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/card-online-m-eq-one.md) | 77 | `result-track:212e83662ab44baae05be628a0eafd498bed370cb75ef7a69dbfe2ff22436a8a` |
| 7 | `lemma` | [card_sub_filter](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/card-sub-filter.md) | 82 | `result-track:de80b7b92eed66e4ef626db9fb43a96a76ea5e89eefd3295c1e4c72731e8df4d` |
| 8 | `lemma` | [card_two_add_card_ge_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/card-two-add-card-ge-three.md) | 92 | `result-track:9aff3008c1b850d9e4c11c5c2352faf0c4461520898442dedd4180d7fc5a9b04` |
| 9 | `lemma` | [Non_ge_weighted](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/non-ge-weighted.md) | 106 | `result-track:227bc0164249cc0c061d596a165aa3fdc471909556770d410482755b02b918e1` |
| 10 | `theorem` | [mult_two](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/mult-two.md) | 128 | `result-track:eb917efc53135db5b3162dcf1590a0c545b4229e279ea7748c1e8b3adc622491` |
| 11 | `theorem` | [mult_three](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/mult-three.md) | 148 | `result-track:295e24ae998fe536ddb420e6e6cc02753c63a206a1f482432a7d0927c946b57f` |
| 12 | `theorem` | [hatAz_mult2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/hataz-mult2.md) | 185 | `result-track:3a5763a05b59a049b81f50ad0cb63e8c3d9ba666efbd3dd43658ce5f605d6328` |
| 13 | `theorem` | [hatAz_mult3](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultOf.lean/declarations/hataz-mult3.md) | 193 | `result-track:78b2e3220a8fc165fe4fc603677af755759f81c0bc3e3e52d888d55ef91acefb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=01a6c2dd7513fc4655fe2d4419c63794b72d0ad14a495da27ac8999461bcfaac -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant8b16d42b3cc096dfbe207c2174a73d11e302311b89c8c31a5a82c8b8aa7db57d.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Mult/Variant8b16d42b3cc096dfbe207c2174a73d11e302311b89c8c31a5a82c8b8aa7db57d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
