# Verification target: Injectivity Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "04236be259421119f58d70bdd946fc5dad35b873",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `04236be259421119f58d70bdd946fc5dad35b873`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Tannery` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convergence` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Linearity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [LSeries.abscissaOfAbsConv_add_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/declarations/lseries-abscissaofabsconv-add-le.md) | 34 | `result-track:4b62626bc3e7a39cfb0b6085d04fb0f7acf213820258eddb1669fc8075897305` |
| 2 | `lemma` | [LSeries.abscissaOfAbsConv_sub_le](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/declarations/lseries-abscissaofabsconv-sub-le.md) | 40 | `result-track:1dad9afb4fa5bda5572be0d950c5bdc9867d9a5204e07e38d1e0f380e8cb94a0` |
| 3 | `lemma` | [cpow_mul_div_cpow_eq_div_div_cpow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/declarations/cpow-mul-div-cpow-eq-div-div-cpow.md) | 45 | `result-track:492089d586ddbc7fa3fc7aa994bdfa84266a4024f72cff70753d3e42da33abb1` |
| 4 | `lemma` | [LSeries.tendsto_cpow_mul_atTop](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/declarations/lseries-tendsto-cpow-mul-attop.md) | 61 | `result-track:d8b1cc396cbd9f7d5e284c45fe8059fe9c66f8894b9e8c6821696b0223a10302` |
| 5 | `lemma` | [LSeries.tendsto_atTop](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/declarations/lseries-tendsto-attop.md) | 129 | `result-track:6a8f9c79e9c0176a4bf2f64df73a52a0895a761fe279385ca30214addc2bb3cc` |
| 6 | `lemma` | [LSeries_eq_zero_of_abscissaOfAbsConv_eq_top](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/declarations/lseries-eq-zero-of-abscissaofabsconv-eq-top.md) | 139 | `result-track:686dce424e65beb7778da56eb7a269527baf7b67f4c394671e792e592496638f` |
| 7 | `lemma` | [LSeries_eventually_eq_zero_iff'](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/declarations/lseries-eventually-eq-zero-iff.md) | 148 | `result-track:0d3e84208639c2c447b65bce9bc72f2af9d6a12f3a98ab7ec3e5cc7562c6d708` |
| 8 | `lemma` | [LSeries_eq_zero_iff](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/declarations/lseries-eq-zero-iff.md) | 183 | `result-track:47093331b336914982d3cf89f2f8fd89f291cf493e1cb226d215f9e58e1e96e4` |
| 9 | `lemma` | [LSeries_sub_eventuallyEq_zero_of_LSeries_eventually_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/declarations/lseries-sub-eventuallyeq-zero-of-lseries-eventually-eq.md) | 199 | `result-track:4e0e2b408d627c7052af28983052f4a1d43a7d2dd40ce1c2f6d72945197987b2` |
| 10 | `lemma` | [LSeries.eq_of_LSeries_eventually_eq](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/declarations/lseries-eq-of-lseries-eventually-eq.md) | 223 | `result-track:25e3267b65be925ad075bb14fac0feea4a352ac90ade4562512378f5d58bdb71` |
| 11 | `lemma` | [LSeries_eq_iff_of_abscissaOfAbsConv_lt_top](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/declarations/lseries-eq-iff-of-abscissaofabsconv-lt-top.md) | 236 | `result-track:23461ec9e8b549eee5567bb22f46584e04c1881216fe7ea76b561b4a964404d6` |
| 12 | `lemma` | [LSeries_injOn](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/InjectivityNamespaced.lean/declarations/lseries-injon.md) | 245 | `result-track:7169c6eded6782089deda792507d181f8e11e47ae5e0109bf4237c4ef43e422d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0880ebfc44157e571f7f847e75672970fa6e2d5e26ca235a4f2e20e01a46f14a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/Injectivity/Variante80caac861d00275cddf858f994d9d0c5ad4ecd3aa021a7145ec8e14ae377d72.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
