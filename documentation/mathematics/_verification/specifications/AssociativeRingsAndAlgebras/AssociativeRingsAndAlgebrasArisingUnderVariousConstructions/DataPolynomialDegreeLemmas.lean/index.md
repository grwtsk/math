# Verification target: Data Polynomial Degree Lemmas

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7ae724bf9d8eba74f4a81b3f1aee31400041dca2",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant3fae922602e8b224cb8809af2cdb77ce26d7f70f7520e7d6c1fdba45d061824d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7ae724bf9d8eba74f4a81b3f1aee31400041dca2`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant3fae922602e8b224cb8809af2cdb77ce26d7f70f7520e7d6c1fdba45d061824d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Lemmas/Variant3fae922602e8b224cb8809af2cdb77ce26d7f70f7520e7d6c1fdba45d061824d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Eval` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [natDegree_comp_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-comp-le.md) | 37 | `result-track:8e7611f31311b9f98062936b12d25e2ae48d3a3f02c8dd24fcff07bd3adc127b` |
| 2 | `theorem` | [degree_pos_of_root](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/degree-pos-of-root.md) | 63 | `result-track:f480fc4932193797edf51d2cdb54b2764321e676e386397b43628366e924e564` |
| 3 | `theorem` | [natDegree_le_iff_coeff_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-le-iff-coeff-eq-zero.md) | 71 | `result-track:2912ba3cd0ea5cf619aa6f33dd8630a2db32771258a6e0721f45a8f9d9d689ae` |
| 4 | `theorem` | [natDegree_add_le_iff_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-add-le-iff-left.md) | 76 | `result-track:690e50a0f308acebd2cef8624411ff4dc76e98e08e37665b89df9917c70cc3c1` |
| 5 | `theorem` | [natDegree_add_le_iff_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-add-le-iff-right.md) | 84 | `result-track:f5e04973623c48def512373311e5c20f9ac6c1ad581c7896106571c4ad6dda54` |
| 6 | `theorem` | [natDegree_C_mul_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-c-mul-le.md) | 90 | `result-track:8bb6af0b4783f5dfa9fc4a2138c7aa9f40af16f1a9ffbd7db8104e83f4995ff4` |
| 7 | `theorem` | [natDegree_mul_C_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-mul-c-le.md) | 98 | `result-track:47ae4e68518ab284ed5eb6c0073c9078f4255bd423da577f82de3e3393a6cbb3` |
| 8 | `theorem` | [eq_natDegree_of_le_mem_support](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/eq-natdegree-of-le-mem-support.md) | 106 | `result-track:fbdaf763600379e334311759f21f9e6ab8cf7bc9d4b3a064b9c05493d861425f` |
| 9 | `theorem` | [natDegree_C_mul_eq_of_mul_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-c-mul-eq-of-mul-eq-one.md) | 111 | `result-track:fc1ce3aee32c077ebfaec1484361874807d25017470406d26979801fb386a7a0` |
| 10 | `theorem` | [natDegree_mul_C_eq_of_mul_eq_one](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-mul-c-eq-of-mul-eq-one.md) | 121 | `result-track:9c96a6ad86eea41353a64664c6ea99397a3d2d706d62c17bf48b5d531da834aa` |
| 11 | `theorem` | [natDegree_mul_C_eq_of_mul_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-mul-c-eq-of-mul-ne-zero.md) | 134 | `result-track:c009a5a7e68a7d1ca9f04f22dc8e53d083183e9e0b12ba898ca03f6029f10971` |
| 12 | `theorem` | [natDegree_C_mul_eq_of_mul_ne_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-c-mul-eq-of-mul-ne-zero.md) | 145 | `result-track:4af9584bd6b45282b60da425dad22359b91598adc33724c27e7c053c711bfdc9` |
| 13 | `theorem` | [natDegree_add_coeff_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-add-coeff-mul.md) | 153 | `result-track:d765da5f42a828b68699ce1056dd3f8399c1f430da2567200bf9b731dca169d4` |
| 14 | `theorem` | [natDegree_lt_coeff_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-lt-coeff-mul.md) | 158 | `result-track:e964ca1bf82477e3768613080ac41cad57093ac99838dfb58cad3876af0a83d4` |
| 15 | `theorem` | [coeff_mul_of_natDegree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/coeff-mul-of-natdegree-le.md) | 163 | `result-track:41ce37198ffa967b411b967520b0bc5c8adb93b9d55f41c35e603693e53f882b` |
| 16 | `theorem` | [coeff_pow_of_natDegree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/coeff-pow-of-natdegree-le.md) | 175 | `result-track:37c880440dfae01d973330e489271b2677b395898f51626dd5c904be84834f7b` |
| 17 | `theorem` | [coeff_pow_eq_ite_of_natDegree_le_of_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/coeff-pow-eq-ite-of-natdegree-le-of-le.md) | 184 | `result-track:a7c78eac6d0767588d5f784dad75aecef39a7d1b496a4fbb9cefddb21a83a021` |
| 18 | `theorem` | [coeff_add_eq_left_of_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/coeff-add-eq-left-of-lt.md) | 192 | `result-track:03d9cafda6bdac16f6cfe6665f5a953ff8ae3c479c9e0fa6620524b736f9b573` |
| 19 | `theorem` | [coeff_add_eq_right_of_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/coeff-add-eq-right-of-lt.md) | 197 | `result-track:9ab7055b6413d367bb905b11acaeeef4e0a404739c95251f7e7a8b00eca7b06e` |
| 20 | `theorem` | [degree_sum_eq_of_disjoint](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/degree-sum-eq-of-disjoint.md) | 202 | `result-track:be472cc043b56c16fc83c11a68e67ba40702f40c3f7ddbe93ae20021ffd596a4` |
| 21 | `theorem` | [natDegree_sum_eq_of_disjoint](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-sum-eq-of-disjoint.md) | 227 | `result-track:bdac1b5e38aa83488346aede6f92ccae0e967f49ab3f43f38dc9da25b6178850` |
| 22 | `theorem` | [natDegree_bit0](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-bit0.md) | 261 | `result-track:4d5d67155c029d959e515af2b8e112fae36a2d75d0510e04d7ee8a0cdec79900` |
| 23 | `theorem` | [natDegree_bit1](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-bit1.md) | 266 | `result-track:1f3e5e2e54a90698a16f13fb3e62e091ed35d9bd3bba3a11c62503978c19d094` |
| 24 | `theorem` | [natDegree_pos_of_eval₂_root](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-pos-of-eval-root.md) | 272 | `result-track:a6a237742097bfa7ed517b946dc94572485bc8815e33a533c82515050f3130c9` |
| 25 | `theorem` | [degree_pos_of_eval₂_root](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/degree-pos-of-eval-root.md) | 281 | `result-track:ebfde99dcd3f811df6cd9bd31672f57ecd74949aaabab2d22787107ad3a664dd` |
| 26 | `theorem` | [coe_lt_degree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/coe-lt-degree.md) | 287 | `result-track:9256ae41b7569e83044d6205d586d64d42316615419bf7f98caaec5c18afcc47` |
| 27 | `theorem` | [natDegree_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-sub.md) | 301 | `result-track:2b64a5be449c828e583247d02bbb22a5a815d2ef933fbc04b0faa29f8c891083` |
| 28 | `theorem` | [natDegree_sub_le_iff_left](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-sub-le-iff-left.md) | 304 | `result-track:d4cd539791b329ec611ee85061b699202b9fcd02dd81a7e0ab7a9ed855d37c60` |
| 29 | `theorem` | [natDegree_sub_le_iff_right](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-sub-le-iff-right.md) | 310 | `result-track:c237a76de6772d074cca4bc149c907e7aea79fb1092088d5906f881a849e0bda` |
| 30 | `theorem` | [coeff_sub_eq_left_of_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/coeff-sub-eq-left-of-lt.md) | 314 | `result-track:2cc2ac309f0c2047ca7f123395efb5038bf222c1969ff036720891c8c33aed57` |
| 31 | `theorem` | [coeff_sub_eq_neg_right_of_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/coeff-sub-eq-neg-right-of-lt.md) | 319 | `result-track:689fbd37e23c0dad25d8bff9261446a5e5c90350d3c7a9fb753fc7bf7caec7da` |
| 32 | `theorem` | [degree_mul_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/degree-mul-c.md) | 329 | `result-track:5c5f1a3986d6920fcc885f18359a6eac195211ab173d3ad9167f145dc861b7b6` |
| 33 | `theorem` | [degree_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/degree-c-mul.md) | 334 | `result-track:8fc5b0088651e6fdc73025f7aafa7a5b281f661a48613842cc10d1971e6b174e` |
| 34 | `theorem` | [natDegree_mul_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-mul-c.md) | 339 | `result-track:6f86ba5dc966d63d584dcbc9babb763ac5ab9ce4b5156cdf210b88b4fa1077df` |
| 35 | `theorem` | [natDegree_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-c-mul.md) | 344 | `result-track:06ca5f7bc9bdd2b6b77a495ea69ba907ad56b3014e9a6f0246e9218ebf1c8987` |
| 36 | `theorem` | [natDegree_comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-comp.md) | 349 | `result-track:9f27f77a67132d467c888fa92bbe62f4933bd690f5dd5ef41b9974044549a06a` |
| 37 | `theorem` | [natDegree_iterate_comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/natdegree-iterate-comp.md) | 361 | `result-track:5e6707ea67add836cbaa15cf3d8f1f98213994ce1a98aeb950f2909a7f42d1f8` |
| 38 | `theorem` | [leadingCoeff_comp](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialDegreeLemmas.lean/declarations/leadingcoeff-comp.md) | 368 | `result-track:dea6a2f3f62411f5102ca77a10640813ad9f3380e8c198d0d0223ca8f8ebf35d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f96cb755d8e13e53d59bf769d580d3c8ceaefe40cef615949cc3e1afbb82e799 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Lemmas/Variant3fae922602e8b224cb8809af2cdb77ce26d7f70f7520e7d6c1fdba45d061824d.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Lemmas/Variant3fae922602e8b224cb8809af2cdb77ce26d7f70f7520e7d6c1fdba45d061824d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
