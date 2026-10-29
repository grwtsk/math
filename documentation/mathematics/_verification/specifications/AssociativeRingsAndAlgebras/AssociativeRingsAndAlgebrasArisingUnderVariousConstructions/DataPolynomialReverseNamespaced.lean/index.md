# Verification target: Data Polynomial Reverse Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "edacf05b459e5801871e2b87895ec20d2d24d06e",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant2c1c512a87a4a97d4e757b889f856248f6abac2d7d7bf59e67b2c1cf3a8313bb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/index.md) · [Full source](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `edacf05b459e5801871e2b87895ec20d2d24d06e`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant2c1c512a87a4a97d4e757b889f856248f6abac2d7d7bf59e67b2c1cf3a8313bb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Reverse/Variant2c1c512a87a4a97d4e757b889f856248f6abac2d7d7bf59e67b2c1cf3a8313bb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Polynomial.Degree.TrailingDegree` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.EraseLead` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Polynomial.Eval` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [revAtFun](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/revatfun.md) | 44 | `declaration-track:c514fd015744ce2a19e4583bad8b7d7070b228547c655fcda42cd7c610801ae4` |
| 2 | `theorem` | [revAtFun_invol](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/revatfun-invol.md) | 48 | `result-track:376e03618dcc3a12611bcb7226567449fe291bdb2937e43068d0382b771b36d5` |
| 3 | `theorem` | [revAtFun_inj](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/revatfun-inj.md) | 58 | `result-track:8fbe92dff2690bd454c2eb9390bc568f283be343e7484bcf5246b2097ef416c1` |
| 4 | `def` | [revAt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/revat.md) | 67 | `declaration-track:e564cfccfd79f4b295fbbb2b5a5d44d638be684a81f92be4440535ef8603f257` |
| 5 | `theorem` | [revAtFun_eq](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/revatfun-eq.md) | 75 | `result-track:e8b9edb0ae36d1aae7ae18a7ba9052bb6c2fc947accd87aa86acaff4dd870106` |
| 6 | `theorem` | [revAt_invol](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/revat-invol.md) | 80 | `result-track:4d46b125311fd985381b2c0ad15877ca224fe8b68760c4f92d8c342003ab9692` |
| 7 | `theorem` | [revAt_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/revat-le.md) | 85 | `result-track:5860ebf0c12097b771c7025d8b3ad52eb6367adfc54fd6f741e07e55cb3d3001` |
| 8 | `lemma` | [revAt_eq_self_of_lt](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/revat-eq-self-of-lt.md) | 89 | `result-track:5bae59e204302a608544bc591276093e5aa0283d10e526d1fd64f6064b925059` |
| 9 | `theorem` | [revAt_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/revat-add.md) | 91 | `result-track:f096b5c3e8d2772029e056a0feee5f3b2eaaf3461a9577a3b3c7454de9b2f124` |
| 10 | `theorem` | [revAt_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/revat-zero.md) | 101 | `result-track:32998fe54fa569a8a37be181601ddd52ba1b1c05fa97d22e101451496068f610` |
| 11 | `def` | [reflect](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect.md) | 110 | `declaration-track:9d1b1a877a432d5ecc132b9985244bc0affe346cd79ae73f060cc7ad8c5ee95b` |
| 12 | `theorem` | [reflect_support](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-support.md) | 114 | `result-track:e04d4530750f7ecd4c8ba03f254ce9018c2fc78e12a0ed6c87e96b9cc49ad9fc` |
| 13 | `theorem` | [coeff_reflect](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/coeff-reflect.md) | 122 | `result-track:f1ae710e372ed1c922a60f0987f5ae94988a6866ddbc8bf7accf7ffd89ce764f` |
| 14 | `theorem` | [reflect_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-zero.md) | 132 | `result-track:924c1faa4b1d806157af3b69f26784b603e426fd28c4470ba95a94cd2f2b3df7` |
| 15 | `theorem` | [reflect_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-eq-zero-iff.md) | 137 | `result-track:908000e6bb545637ae9af8fcaab81d40a60303cf2af74912f2d8cd4c15ca3279` |
| 16 | `theorem` | [reflect_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-add.md) | 142 | `result-track:db336524b566ad6b22fc5b22b58fef47fd60ebe635ad5efe32c54087e5abc5cf` |
| 17 | `theorem` | [reflect_C_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-c-mul.md) | 148 | `result-track:5df12b591a07967bd70f9ed07e9f69c365abdad71eb32d98df24b9fa3cba1cb9` |
| 18 | `theorem` | [reflect_C_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-c-mul-x-pow.md) | 155 | `result-track:bd4e865abbc928f76a3bd15235af86b79aac9326b9265e0b0be6ff85cfc64258` |
| 19 | `theorem` | [reflect_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-c.md) | 169 | `result-track:b83c1a14e7b667476eb149a88db3718eb408c0431a6040797aad4fdc3faeddfc` |
| 20 | `theorem` | [reflect_monomial](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-monomial.md) | 175 | `result-track:f5044bf482cc8fd07b357445597dcc49bb725598ee06a83af39011389dfe66ff` |
| 21 | `lemma` | [reflect_one_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-one-x.md) | 179 | `result-track:c527fd5f21a66deba46cb6ac09fae75663aedd022c0dfcc3f31b033c75e862d6` |
| 22 | `theorem` | [reflect_mul_induction](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-mul-induction.md) | 182 | `result-track:62bb65e2ab450b5906dc0df0743693da6031501ce6817f3f21b49beaf006b546` |
| 23 | `theorem` | [reflect_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-mul.md) | 221 | `result-track:6e5847059d210706037222b5c6ed545258877a9e32db2ae295175701ab796f81` |
| 24 | `theorem` | [eval₂_reflect_mul_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/eval-reflect-mul-pow.md) | 230 | `result-track:22457405c3e5fc878628642a213c03c227eb5f9b04f18d465af1510f97745a65` |
| 25 | `theorem` | [eval₂_reflect_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/eval-reflect-eq-zero-iff.md) | 244 | `result-track:7f5df5d453fad4a43a51118b7919c08c35c50cb9be765fd46535d806c72ba160` |
| 26 | `def` | [reverse](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse.md) | 259 | `declaration-track:2d26db6161657cc7383caada2ecf1ada77e3435cccdfb03b097f7b3fe7bd6070` |
| 27 | `theorem` | [coeff_reverse](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/coeff-reverse.md) | 263 | `result-track:c84f1f7b8b2ddce17448bf42c8beb0ea534c1d09df5af7e87877ae5fd37ded3c` |
| 28 | `theorem` | [coeff_zero_reverse](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/coeff-zero-reverse.md) | 268 | `result-track:d15d4a65d7f39f23dc3d0413db5359d52551e9fb3da26cfca99621e7f9c622f1` |
| 29 | `theorem` | [reverse_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-zero.md) | 273 | `result-track:62e34b79be02251ac802660310aca343e0348188cac344965c8cb1b214d23f01` |
| 30 | `theorem` | [reverse_eq_zero](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-eq-zero.md) | 278 | `result-track:bba67acee4bb0c722c8cfc1fde3dd0115767fa1a789d081504e1c7c2e87bc534` |
| 31 | `theorem` | [reverse_natDegree_le](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-natdegree-le.md) | 281 | `result-track:12354866684f164be3d26ca1951106f09d5b2289221b657431c208d6d1c6e516` |
| 32 | `theorem` | [natDegree_eq_reverse_natDegree_add_natTrailingDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/natdegree-eq-reverse-natdegree-add-nattrailingdegree.md) | 289 | `result-track:0e9545afb55fa2733a7f774b215fc89368e03eba02c818e5a4b6cd60a509b645` |
| 33 | `theorem` | [reverse_natDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-natdegree.md) | 304 | `result-track:48ef6fd4c7b5ea08b7c179d262e372f525795450947fef658b9773b73015f7c5` |
| 34 | `theorem` | [reverse_leadingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-leadingcoeff.md) | 308 | `result-track:47b477e21ec02f85377f22cb7ced3336f70f05922333191242e473ab21488eaf` |
| 35 | `theorem` | [reverse_natTrailingDegree](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-nattrailingdegree.md) | 313 | `result-track:181f4ad26e0384c26c7bb6fb1851360e11c2febd7aa512cc37ba07c03799a813` |
| 36 | `theorem` | [reverse_trailingCoeff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-trailingcoeff.md) | 322 | `result-track:697497e6e587af6c981a73de3c35eb336511234e383f6b0c19e689c8e9a033f3` |
| 37 | `theorem` | [reverse_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-mul.md) | 326 | `result-track:1106e330a305e47f9867011dbe59eee3a02e98fe9151c319b1b20f8e45913d89` |
| 38 | `theorem` | [reverse_mul_of_domain](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-mul-of-domain.md) | 333 | `result-track:0c7c5f1e275f96364c191082959991e549fe1d503a62a95f002d66f18bdfc305` |
| 39 | `theorem` | [trailingCoeff_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/trailingcoeff-mul.md) | 342 | `result-track:ab5603f155ecd4e2418af3b4727d92088c64050215a190af13c3ce05cc79ddda` |
| 40 | `theorem` | [coeff_one_reverse](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/coeff-one-reverse.md) | 349 | `result-track:aa298ec7c947561776cd40843225766791c119103071f28715cc8a4ee1be0d1b` |
| 41 | `lemma` | [reverse_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-c.md) | 358 | `result-track:6218e2b9a0df0a6d0e2a701dee5e16ecbc52e8d7af8048f075a305c59d64621b` |
| 42 | `lemma` | [reverse_mul_X](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-mul-x.md) | 362 | `result-track:fcd7808b2468fbc4bb58a290b039493db354ddc194c125da0de50812e2a027ca` |
| 43 | `lemma` | [reverse_X_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-x-mul.md) | 368 | `result-track:68edad4b404ffa9ff1d77ba688d6a32af12839d0ab0e606fbf628a67fc3220c5` |
| 44 | `lemma` | [reverse_mul_X_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-mul-x-pow.md) | 371 | `result-track:3a5989ffb604f16b1e1f3fa1ae6199800980b76a0bccf9ed197e91b6515b16ed` |
| 45 | `lemma` | [reverse_X_pow_mul](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-x-pow-mul.md) | 375 | `result-track:f8b4bacf56d9a9525b3c1dec5ccd765b5cbf23cfe2ceaa949054bfd1f8b43e69` |
| 46 | `lemma` | [reverse_add_C](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-add-c.md) | 378 | `result-track:e33b78791a5984a6fb22bfcca61b5515c8e89f93cf46efdc31a5653fad399826` |
| 47 | `lemma` | [reverse_C_add](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-c-add.md) | 382 | `result-track:99d83a258baa6bfe827899063868722f8200cb42097afcd6e1d7032734625cc7` |
| 48 | `theorem` | [eval₂_reverse_mul_pow](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/eval-reverse-mul-pow.md) | 390 | `result-track:736f538920fc36ed9de432a4fb1f0f91cdbbc1265a09f64ed2fa6900639a79b4` |
| 49 | `theorem` | [eval₂_reverse_eq_zero_iff](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/eval-reverse-eq-zero-iff.md) | 396 | `result-track:a56603f22dfbfdff81ecb84c42e003c53951cdf8e5d3aae945c08f45c9490619` |
| 50 | `theorem` | [reflect_neg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-neg.md) | 410 | `result-track:971b3c32c1c5592af0271fd9d53ecfba71c6a08ac4483afec846a7ffe8bf2013` |
| 51 | `theorem` | [reflect_sub](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reflect-sub.md) | 415 | `result-track:24d891bf8b4fa1627f6e5f01dc7dc28fd374eea18443033f71ec985ae14531c1` |
| 52 | `theorem` | [reverse_neg](../../../../../AssociativeRingsAndAlgebras/AssociativeRingsAndAlgebrasArisingUnderVariousConstructions/DataPolynomialReverseNamespaced.lean/declarations/reverse-neg.md) | 420 | `result-track:c25b3b7d32dc94ac743aff8460548cbe7b1db3f28308a0e996e8c51bcbc0e412` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1edce9e9447c2640a8cad0c02e03efa7ec68c25df692cf1b1700f2a19e4fafe5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Reverse/Variant2c1c512a87a4a97d4e757b889f856248f6abac2d7d7bf59e67b2c1cf3a8313bb.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Reverse/Variant2c1c512a87a4a97d4e757b889f856248f6abac2d7d7bf59e67b2c1cf3a8313bb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
