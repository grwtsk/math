# Verification target: Dirichlet Cauchy Product Generic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b398ca80aa8e5f91aca2d997bd779c6f89254a41",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/index.md) · [Full source](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b398ca80aa8e5f91aca2d997bd779c6f89254a41`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.PositivePairReindexing` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.MobiusDirichletSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Folder.Rebuild.AnalyticNumberTheory.ComplexZetaHalfPlane` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Convolution` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.InfiniteSum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complexWeight_eq_cpow_neg](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/complexweight-eq-cpow-neg.md) | 26 | `result-track:4b2a3985bc164565643cdb7c40e3e4bd907b74ab79450b6022558715cebe8109` |
| 2 | `theorem` | [complexWeight_eq_one_div_cpow](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/complexweight-eq-one-div-cpow.md) | 42 | `result-track:8857e464b11e532df8bc823449b01e8d0a9f789c087bee16b799b5a050573a9b` |
| 3 | `theorem` | [complexDirichletTerm_eq_lseries_term](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/complexdirichletterm-eq-lseries-term.md) | 50 | `result-track:082bf3edc0524d59d0f06522b9fe17dc9d4432a505dcb9a053573685711959dc` |
| 4 | `theorem` | [complexDirichletSeries_eq_lseries](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/complexdirichletseries-eq-lseries.md) | 61 | `result-track:9676429ec4ed70c26dfe95d89e532973836abeade95e1ed378085143bf1d8f65` |
| 5 | `theorem` | [zetaComplexHalfPlane_eq_complexDirichletSeries_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/zetacomplexhalfplane-eq-complexdirichletseries-one.md) | 67 | `result-track:373d1ac4cb600b6999dbe68b25f116261cc2e7a7afcbb3399524d7e7becd8f46` |
| 6 | `theorem` | [zetaComplexHalfPlane_eq_lseries_one](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/zetacomplexhalfplane-eq-lseries-one.md) | 74 | `result-track:2dffe3fb4963fc066ccdbf0835a756388e3cc5abbe4ee8bcc21ee818b54c8cbf` |
| 7 | `theorem` | [mobiusDirichletSeries_eq_lseries](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/mobiusdirichletseries-eq-lseries.md) | 80 | `result-track:3f9229304bf5962a3d3e44a43d2e992aae1e3c596bbcb699e9a2548da901c9a1` |
| 8 | `theorem` | [complexDirichletSeries_epsilon](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/complexdirichletseries-epsilon.md) | 85 | `result-track:abc0f8b2299dcb22bcfffcc2d406a93d4d321c5812c7e82ff056846edd4ccf8b` |
| 9 | `theorem` | [complexDirichletSeries_term_norm_summable](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/complexdirichletseries-term-norm-summable.md) | 98 | `result-track:c99300a238b80a4c4da17a93ae6ed33b958bd7ebff72fa67bae15ebf9f335772` |
| 10 | `theorem` | [complexDirichletSeries_terms_summable](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/complexdirichletseries-terms-summable.md) | 105 | `result-track:4d41e5f65835ae4a468a3682a9882950f2f405c760150f9db30def9acb878243` |
| 11 | `theorem` | [lseriesSummable_of_complexDirichletAbsSummable](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/lseriessummable-of-complexdirichletabssummable.md) | 112 | `result-track:f9e5599b2644bd6459596396b2c786f001f71f7cbe5da451814c0784f7b053b7` |
| 12 | `theorem` | [lseries_convolution_eq_dirichletConv_of_ne_zero](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/lseries-convolution-eq-dirichletconv-of-ne-zero.md) | 120 | `result-track:c8f4b2aab26522a0c6066f3c03ed8114298f95c7146103c577ea5e8a5576f1df` |
| 13 | `theorem` | [complexDirichletSeries_mul_expanded_pair_tsum](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/complexdirichletseries-mul-expanded-pair-tsum.md) | 128 | `result-track:6a63e7b6facc3be0567810dee74b3f9172827afb4c9bf5bbc2c98ea3bcd90905` |
| 14 | `theorem` | [complexDirichletSeries_mul_of_absSummable](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/complexdirichletseries-mul-of-abssummable.md) | 155 | `result-track:80d70b024babe227cde4dbb00846747e6f03a00dd59a5e6ddd19e62283a8dc17` |
| 15 | `theorem` | [tsum_dirichlet_pair_reindex_by_mul](../../../../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletCauchyProductGeneric.lean/declarations/tsum-dirichlet-pair-reindex-by-mul.md) | 187 | `result-track:3f7fba64e29bffc34afb1a051a07fea22ad3f120bddae38488b838d759983b4d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fe3a2734a6b01b228553c61c29ed727291db11b601aa59e730965bad092d4b56 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean","GRWTSK/_verification/specifications/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/DirichletCauchyProductGeneric/Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
