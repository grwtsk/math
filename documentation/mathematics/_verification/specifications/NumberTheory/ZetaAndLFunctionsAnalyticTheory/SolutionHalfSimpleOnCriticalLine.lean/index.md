# Verification target: Solution Half Simple On Critical Line

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5f2052a677615d8d4e86758c88f1535eb2295c9",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Solution/Variantb707c110ecee1ee0e5ae84110417d68ce8f48fb8e88efb12a95021ee911d3f31.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5f2052a677615d8d4e86758c88f1535eb2295c9`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Solution/Variantb707c110ecee1ee0e5ae84110417d68ce8f48fb8e88efb12a95021ee911d3f31.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Solution/Variantb707c110ecee1ee0e5ae84110417d68ce8f48fb8e88efb12a95021ee911d3f31.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ChallengeDeps` — import line 26; external provider; requires a separately pinned dependency.
- `Zeta23.Unconditional` — import line 27; external provider; requires a separately pinned dependency.
- `Zeta23.ThmD.Final` — import line 28; external provider; requires a separately pinned dependency.
- `Zeta23.ThmE.Final` — import line 29; external provider; requires a separately pinned dependency.
- `Zeta23.ThmDE.Final` — import line 30; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [cStar_one_eq_cMT](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/cstar-one-eq-cmt.md) | 37 | `result-track:6ab4963d2ea80a3ab99537bba96ca5b794473b5335357d170b6783daffdf5ee2` |
| 2 | `theorem` | [two_thirds_on_critical_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/two-thirds-on-critical-line.md) | 42 | `result-track:e45726d830caed90ef4ea3ec0510e47e33fa7fc25a71f8fd14f98470e673a72b` |
| 3 | `theorem` | [two_thirds_on_critical_line_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/two-thirds-on-critical-line-cumulative.md) | 46 | `result-track:dbb3329967e3b0f224d1e20022b0946f2212082461a6bc6370f670db318fe2bd` |
| 4 | `theorem` | [half_simple_on_critical_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/half-simple-on-critical-line.md) | 50 | `result-track:fd0d0efcadfc3326a1a1b0a59e92ef57ec379ab37f8da7bd5619ba957df8d1c6` |
| 5 | `theorem` | [half_simple_on_critical_line_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/half-simple-on-critical-line-cumulative.md) | 54 | `result-track:1b18af10d9e5dabeb897ec954dff87b12e515ed426e96959d960cb616dfb60dd` |
| 6 | `theorem` | [three_quarters_distinct](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/three-quarters-distinct.md) | 58 | `result-track:e4084a31697754b8454dee409827f69ef57356ead1b5a8a5149f31f6f102ead2` |
| 7 | `theorem` | [three_quarters_distinct_cumulative](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/three-quarters-distinct-cumulative.md) | 62 | `result-track:c1f73bfae5b67f72e7c4f407ee60715ae73d5384ca0f5fd2e851da3ab184eddf` |
| 8 | `theorem` | [montgomery_taylor_on_critical_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/montgomery-taylor-on-critical-line.md) | 66 | `result-track:47e405bbb944c1faf8aec553011e20bc36e5a6fa1fd237e12eabe414277099f1` |
| 9 | `theorem` | [montgomery_taylor_simple_on_critical_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/montgomery-taylor-simple-on-critical-line.md) | 72 | `result-track:c87c9116fa5266bd3d7e18841c5936d20db1ae408f0c7ee57298ce961557e3cd` |
| 10 | `theorem` | [montgomery_taylor_distinct](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/montgomery-taylor-distinct.md) | 78 | `result-track:ad0dffa7eed43e6ca8afaa7788cf1742f0c2391d6fa98d226ddb07087eff2cb8` |
| 11 | `theorem` | [dirichlet_two_thirds_on_critical_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/dirichlet-two-thirds-on-critical-line.md) | 84 | `result-track:f085ce3dea2a60a1d520d7ac7f2821ba1453cbe30ad3e063d11f59626bb2f710` |
| 12 | `theorem` | [dirichlet_half_simple_on_critical_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/dirichlet-half-simple-on-critical-line.md) | 89 | `result-track:11d01b0841db8c8fc957ff0c2bee59dbe340a443b9f1fec40e9d352c6962e16d` |
| 13 | `theorem` | [dirichlet_three_quarters_distinct](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/dirichlet-three-quarters-distinct.md) | 94 | `result-track:ef2bec34a3ab88ec2fd38e717e6f5f7380aac25ff5351696b7e7c6580a716cc6` |
| 14 | `theorem` | [dirichlet_montgomery_taylor_on_critical_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/dirichlet-montgomery-taylor-on-critical-line.md) | 99 | `result-track:18b41e9b2327026e7493480f2c31ddb1bb8889d67afe738e1ea0cd2a6bab8d62` |
| 15 | `theorem` | [dirichlet_montgomery_taylor_simple_on_critical_line](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/dirichlet-montgomery-taylor-simple-on-critical-line.md) | 106 | `result-track:81089a10ebf58c6112cda35db2a44f79af8a1abbe44273559571125c1de1a50b` |
| 16 | `theorem` | [dirichlet_montgomery_taylor_distinct](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/SolutionHalfSimpleOnCriticalLine.lean/declarations/dirichlet-montgomery-taylor-distinct.md) | 113 | `result-track:1460a8a5abe86737d610e5fc96ac6a1a71b5d5d81005cf2f04a29399df794787` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95ae50d750cea8f2689169e8b63fba5f42a1e9c5aa671f87fb2f2dab7403f911 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Solution/Variantb707c110ecee1ee0e5ae84110417d68ce8f48fb8e88efb12a95021ee911d3f31.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Solution/Variantb707c110ecee1ee0e5ae84110417d68ce8f48fb8e88efb12a95021ee911d3f31.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
