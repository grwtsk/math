# Verification target: Degree LTPublic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8715ce3b0e0d6807062d40b3ee0c18a4a751f15d",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/index.md) · [Full source](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8715ce3b0e0d6807062d40b3ee0c18a4a751f15d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [basis](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/basis.md) | 52 | `declaration-track:518b99b4209ea10c12947c19ab5434d397409757844002eee7d04f838d89b106` |
| 2 | `instance` | [(anonymous)](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/instance-source-edition-2.md) | 55 | `declaration-track:643552d8a5faa1372555d3acb67441a3fc56be72f88b3ffe3f33af688d75ec68` |
| 3 | `instance` | [(anonymous)](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/instance.md) | 56 | `declaration-track:3e5e9e331aefa75923cf2a44b407048e48f4d53d94bc50c01728fc9ab08b787b` |
| 4 | `lemma` | [basis_repr](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/basis-repr.md) | 58 | `result-track:73a5e06072395dca5412a87a11bf3725aa3dff483acfcc8a54d84c1b2151c2ad` |
| 5 | `lemma` | [basis_val](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/basis-val.md) | 61 | `result-track:e3c9b4de508eed8bba767d004acb8425932961a61de540744493c89e9931447f` |
| 6 | `def` | [basisProd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/basisprod.md) | 69 | `declaration-track:4691ec98f53c453fe2dfca69bebbb802d839d64ab74c3fcc85669898125aa483` |
| 7 | `lemma` | [basisProd_castAdd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/basisprod-castadd.md) | 72 | `result-track:12efa260db6564f38c59aaaeb7c4e68b50f805dc4ab6fe35106e97b7d778a39a` |
| 8 | `lemma` | [basisProd_natAdd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/basisprod-natadd.md) | 77 | `result-track:e201c6cb912920ad579fd75dc8816038c60655f4b8579d638cb5f148165f3a3a` |
| 9 | `def` | [addLinearEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv.md) | 85 | `declaration-track:058f5f5289c24ac52c558e28a51b970811128f78b26012e8f36bab9608cd28b1` |
| 10 | `lemma` | [addLinearEquiv_castAdd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv-castadd.md) | 89 | `result-track:a7ad9c55df6af97eb7600f5555670b0e090236092f6369c61f0afc5710102a5b` |
| 11 | `lemma` | [addLinearEquiv_natAdd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv-natadd.md) | 93 | `result-track:14f40a7c8c37f0bb9efad492bebc94fb7526f1fc158eeed4b0d7434b50c66201` |
| 12 | `lemma` | [addLinearEquiv_symm_apply_inl_basis](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv-symm-apply-inl-basis.md) | 97 | `result-track:f7a1d461188f178ca319ace92d99f93b330716b449c2721a4310f48f1c791f9e` |
| 13 | `lemma` | [addLinearEquiv_symm_apply_inr_basis](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv-symm-apply-inr-basis.md) | 102 | `result-track:2a52ca93dd15f400ba99deac880c78bea620bed47d9017c0a9cad28c7b0b9759` |
| 14 | `lemma` | [addLinearEquiv_symm_apply_inl](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv-symm-apply-inl.md) | 107 | `result-track:d467b8141e3bd0cc7af4d0636e8768eb7ef041fa9944f0e70841a99fd9abf4d7` |
| 15 | `lemma` | [addLinearEquiv_symm_apply_inr](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv-symm-apply-inr.md) | 112 | `result-track:a92ffb723cc879176ae06ce5196730b19277753537a470553ecc28fa963e6398` |
| 16 | `lemma` | [addLinearEquiv_symm_apply](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv-symm-apply-source-edition-2.md) | 118 | `result-track:ab4aa82272e24de93de6e51eb02522e01239294ef64fbc9350c07733ab5da7a4` |
| 17 | `lemma` | [addLinearEquiv_symm_apply'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv-symm-apply.md) | 126 | `result-track:3d01eb804fde6064936ac0df7b188e1f831d46a451dc4ba82391449c83bd0ce0` |
| 18 | `lemma` | [addLinearEquiv_apply'](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv-apply.md) | 130 | `result-track:865de6e398a10727e9e7373d49d236c339f1116235c7858d71e58b6202d33a16` |
| 19 | `lemma` | [addLinearEquiv_apply_fst](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv-apply-fst.md) | 138 | `result-track:9604a36face8186ba21051a86c0d6a4ad6a9207825884be91b9bf7e647f2e60e` |
| 20 | `lemma` | [addLinearEquiv_apply_snd](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv-apply-snd.md) | 142 | `result-track:50955ab51a6841b98d394175d9ac0eb44cfd6d760348cafae83cc132fb8a89e6` |
| 21 | `lemma` | [addLinearEquiv_apply](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/addlinearequiv-apply-source-edition-2.md) | 146 | `result-track:b2da880c65cb4444741efe27d4f8e5df57ae9a92cb56ff42d28f289c2ba00c32` |
| 22 | `lemma` | [taylor_mem_degreeLT](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/taylor-mem-degreelt.md) | 159 | `result-track:355e32990cede86e26626242e107b79298303c109efc2f2fb579233983d42453` |
| 23 | `lemma` | [comap_taylorEquiv_degreeLT](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/comap-taylorequiv-degreelt.md) | 161 | `result-track:a61104e3a0f17cb92acd1b7be8f3da7db45294c504751218b02bb3f6ecea160e` |
| 24 | `lemma` | [map_taylorEquiv_degreeLT](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/map-taylorequiv-degreelt.md) | 164 | `result-track:ccf30ab64cfebd95d30c3e3967ef2623437ebe24edc6a81df598aaebb4decc28` |
| 25 | `def` | [taylorLinearEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/taylorlinearequiv.md) | 171 | `declaration-track:0973650a4a5adcc2a34af69864b5477f0b72e9f44b69d18782932f89adae1586` |
| 26 | `lemma` | [taylorLinearEquiv_symm](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/taylorlinearequiv-symm.md) | 174 | `result-track:48d0713f68e9e136e780bd4aa41592341f6adcb0acdf473bbad18fedaacb0fdb` |
| 27 | `theorem` | [det_taylorLinearEquiv_toLinearMap](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/det-taylorlinearequiv-tolinearmap.md) | 178 | `result-track:b0d1a80ffab1dad8730223b36fecbb6af2107da08a54903007fe6e2d5ff47e7a` |
| 28 | `theorem` | [det_taylorLinearEquiv](../../../../../../CommutativeAlgebra/ArithmeticRingsAndOtherSpecialCommutativeRings/PolynomialRingsAndIdealsRingsOfIntegerValuedPolynomials/DegreeLTPublic.lean/declarations/det-taylorlinearequiv.md) | 192 | `result-track:73bbd7d6281920fb22cc90a5e1011503fc96aacc1516322a24c128462fe13085` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=892e0039f00bfac6a8f229ab9487204ccb0e00a0b192ffe6363a27d0ea31591c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/DegreeLT/Variant280b9271880082fb771af3935b841996aacca2cfdad6abbac6c35e68295038b3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
