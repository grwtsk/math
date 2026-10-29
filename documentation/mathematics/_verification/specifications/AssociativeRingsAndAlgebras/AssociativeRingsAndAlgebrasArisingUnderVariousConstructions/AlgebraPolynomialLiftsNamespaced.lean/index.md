# Verification target: Algebra Polynomial Lifts Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "71765229b366e2223ccd92dae74ba9a649c72f05",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant85c2b931999de1d51d7c7d930523ece1e0c5a4eb1c2816eb5caebfb30f2bcfa7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `71765229b366e2223ccd92dae74ba9a649c72f05`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant85c2b931999de1d51d7c7d930523ece1e0c5a4eb1c2816eb5caebfb30f2bcfa7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lifts/Variant85c2b931999de1d51d7c7d930523ece1e0c5a4eb1c2816eb5caebfb30f2bcfa7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Eval.Subring` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Monic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lifts](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/lifts.md) | 64 | `declaration-track:c1a81f04ac51fc267e7129d74ce5996de538ba87437fe728b7d9e8dfa0bca4da` |
| 2 | `theorem` | [mem_lifts](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/mem-lifts.md) | 67 | `result-track:840862e3c0bf35126101c8a4c9d7f28e0ff6bac0d7d85d2eaba497a6d4b73d3a` |
| 3 | `theorem` | [lifts_iff_set_range](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/lifts-iff-set-range.md) | 70 | `result-track:8b2cae1294ff704553c35d7b6e5d5ada50c6db6c9aef7139cc4a92731c11b7aa` |
| 4 | `theorem` | [lifts_iff_ringHom_rangeS](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/lifts-iff-ringhom-ranges.md) | 73 | `result-track:4b13966994a6fb307033fe66b994831861a1234f7a44d938344bb8c79bdafb3c` |
| 5 | `theorem` | [lifts_iff_coeff_lifts](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/lifts-iff-coeff-lifts.md) | 76 | `result-track:ccbbc6761c698104b4ecaf5adbfe724d77a8ac51d0c6b6d7ae445e873aabdd36` |
| 6 | `theorem` | [lifts_iff_coeffs_subset_range](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/lifts-iff-coeffs-subset-range.md) | 80 | `result-track:58c7497d8cf706fbc28639a13ab810707e4910bf4215214a88a7a255e3056f3a` |
| 7 | `theorem` | [C_mem_lifts](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/c-mem-lifts.md) | 93 | `result-track:044d67fd030401a77ac2c31e8e33be29543bee5bfcfead1d18bb1dd9dc86e755` |
| 8 | `theorem` | [C'_mem_lifts](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/c-mem-lifts-source-edition-2.md) | 99 | `result-track:3034c6830ab24641f2f7b446242ff8312422635498a55a1ccd4273e7d4fd4bee` |
| 9 | `theorem` | [X_mem_lifts](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/x-mem-lifts.md) | 106 | `result-track:dfc23caee19bd701e0a7f366632ed7e9734b9dbdbf9ab05272e39c26d0669b4d` |
| 10 | `theorem` | [X_pow_mem_lifts](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/x-pow-mem-lifts.md) | 112 | `result-track:64bb6b10efd73cc2408a3da0fbf16d0dc46d0d0d38b31c66e621fe9b8a7b2c9d` |
| 11 | `theorem` | [base_mul_mem_lifts](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/base-mul-mem-lifts.md) | 118 | `result-track:6fae7135a376a0fcf9f17be74d810c4125ff3fb9e080d190efee6ebe0cac448a` |
| 12 | `theorem` | [monomial_mem_lifts](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/monomial-mem-lifts.md) | 125 | `result-track:395f3697fb665b315050df81e040626228ad7f0b96adacdcdfa0eb45fd25bfbd` |
| 13 | `theorem` | [erase_mem_lifts](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/erase-mem-lifts.md) | 132 | `result-track:62d40395390fcbf9ad1b20891fb63ffb1d8ac6b4b10cc67c3e1e71073c06f02f` |
| 14 | `theorem` | [monomial_mem_lifts_and_degree_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/monomial-mem-lifts-and-degree-eq.md) | 144 | `result-track:15eddfe6f245e0a07dda115271a5206a98c9d2e4f905e193d1cbcf61b3d1c423` |
| 15 | `theorem` | [mem_lifts_and_degree_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/mem-lifts-and-degree-eq.md) | 154 | `result-track:db731b5a965ac46667ec385764b7a08d0374afdc4b34624dceadd83014bafd20` |
| 16 | `theorem` | [lifts_and_degree_eq_and_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/lifts-and-degree-eq-and-monic.md) | 173 | `result-track:e5863c40e04613a2248a2c12085af5da19bb1e3f04948e11b18cced88f48fef1` |
| 17 | `theorem` | [lifts_and_natDegree_eq_and_monic](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/lifts-and-natdegree-eq-and-monic.md) | 185 | `result-track:ae576992217c69ecdf6b31e7b173b94fd9fe3321de385bb562dcfa1f4ad0ee37` |
| 18 | `def` | [liftsRing](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/liftsring.md) | 202 | `declaration-track:7c298c6faf553991b0918463d7f73bb5629db0ac3930e95f5db83857001d4957` |
| 19 | `theorem` | [lifts_iff_liftsRing](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/lifts-iff-liftsring.md) | 207 | `result-track:1ea46b95c68ed7fe9429415271c0d36cef874416adadea6adf0be8c28939d3bb` |
| 20 | `def` | [mapAlg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/mapalg.md) | 217 | `declaration-track:34756cb3bbba3385408b26be0807e18d809663ad22d61b394b4a7d27594b2c6a` |
| 21 | `theorem` | [mapAlg_eq_map](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/mapalg-eq-map.md) | 222 | `result-track:e7a5c0c417953e9b3cc98cf12c78210f9fbbb639bde32e0f5682065686b05190` |
| 22 | `theorem` | [mem_lifts_iff_mem_alg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/mem-lifts-iff-mem-alg.md) | 227 | `result-track:cad9f9c92cb769278fffc0a1f76460ce40308f225563cf54a8e65f8930fb1db3` |
| 23 | `theorem` | [smul_mem_lifts](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/smul-mem-lifts.md) | 232 | `result-track:762249af0cadf2d294252b528915e4afe348b16f0d1d54127a98717b9bb4e7d7` |
| 24 | `theorem` | [monic_of_monic_mapAlg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/AlgebraPolynomialLiftsNamespaced.lean/declarations/monic-of-monic-mapalg.md) | 237 | `result-track:39246f84056ea5938639bbbd61ffabac2974c01fee807793cf1e475889b960df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=484e5289c6c3419257cb036f72fdc7389e16407d53c9589667f373f937b78667 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Lifts/Variant85c2b931999de1d51d7c7d930523ece1e0c5a4eb1c2816eb5caebfb30f2bcfa7.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Lifts/Variant85c2b931999de1d51d7c7d930523ece1e0c5a4eb1c2816eb5caebfb30f2bcfa7.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
