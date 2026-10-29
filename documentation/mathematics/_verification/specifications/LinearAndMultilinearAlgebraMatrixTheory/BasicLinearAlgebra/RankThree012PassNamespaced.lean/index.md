# Verification target: Rank Three012 Pass Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2f126b224357aeca0d8a41c5e105d5514de2624",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantdacc1381b619d19a0549f32a168df2a42983700b9f99379ab4f0a15e8e530803.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankThree012PassNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankThree012PassNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2f126b224357aeca0d8a41c5e105d5514de2624`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantdacc1381b619d19a0549f32a168df2a42983700b9f99379ab4f0a15e8e530803.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantdacc1381b619d19a0549f32a168df2a42983700b9f99379ab4f0a15e8e530803.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeGaps` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaTailRankThreeCriterion` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaTailRankThreeNumerator](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankThree012PassNamespaced.lean/declarations/thetatailrankthreenumerator.md) | 26 | `declaration-track:ccaf231af648ebf1e2d51ba9d5359c4de490239a900eae59f28fc371aa93e229` |
| 2 | `theorem` | [rankThree_compound_numerator_identity](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankThree012PassNamespaced.lean/declarations/rankthree-compound-numerator-identity.md) | 33 | `result-track:ae37d9af6b22bfb3f09493c7f0ffb2f559fe32e37c3ba00fb537455dd151c87e` |
| 3 | `theorem` | [thetaTailRankThreeNumerator_eq](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankThree012PassNamespaced.lean/declarations/thetatailrankthreenumerator-eq.md) | 41 | `result-track:5a038cf8e103ee87024cc54590393a115eb58b6f91d2377f1ccf29474791d42e` |
| 4 | `theorem` | [hasDerivAt_thetaTail_compoundRatio](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankThree012PassNamespaced.lean/declarations/hasderivat-thetatail-compoundratio.md) | 53 | `result-track:2092bdcf14420dece4a590ea4e9d02575e72e65542e5cfa95e8f6f43c1892251` |
| 5 | `theorem` | [thetaTail_compoundRatio_antitone_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankThree012PassNamespaced.lean/declarations/thetatail-compoundratio-antitone-iff.md) | 64 | `result-track:2eb832910a978aea1166abc45ecaadc9c7e853ef6c89997d97ad7f9ade81bc2a` |
| 6 | `theorem` | [thetaTail012_det_nonpos_of_numerator_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankThree012PassNamespaced.lean/declarations/thetatail012-det-nonpos-of-numerator-nonpos.md) | 86 | `result-track:d8a958d60e1cef220ce3d2528bd1c7c6b219a4e62aebc97614309a58629084c6` |
| 7 | `theorem` | [thetaTailSignRegular_three_zero_one_two_of_numerator_nonpos](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/RankThree012PassNamespaced.lean/declarations/thetatailsignregular-three-zero-one-two-of-numerator-nonpos.md) | 131 | `result-track:0c6a6fe720e7efee4937431701b20225ff717eaa79e46f1bc9b92862661a2c31` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=901387df48c4319bead2221fda7343acb5db409319d32fd53ce41e38d3507f8f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantdacc1381b619d19a0549f32a168df2a42983700b9f99379ab4f0a15e8e530803.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Aa102a78ab628b8982eb5ad2b40364662d4640717637cc837187d4207e60e2dfRankThree01201Pa/Variantdacc1381b619d19a0549f32a168df2a42983700b9f99379ab4f0a15e8e530803.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
