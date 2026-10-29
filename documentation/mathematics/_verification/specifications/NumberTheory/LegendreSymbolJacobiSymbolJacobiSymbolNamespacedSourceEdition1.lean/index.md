# Verification target: Legendre Symbol Jacobi Symbol Jacobi Symbol Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "49f7e6056ff97178a0913ba5b0fbc6c18ebd0525",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant953bd86aaa271c86da15e5f718d3c4433db0a716e42aba8bf8103e548c9bafe4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `49f7e6056ff97178a0913ba5b0fbc6c18ebd0525`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant953bd86aaa271c86da15e5f718d3c4433db0a716e42aba8bf8103e548c9bafe4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant953bd86aaa271c86da15e5f718d3c4433db0a716e42aba8bf8103e548c9bafe4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.LegendreSymbol.QuadraticReciprocity` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [jacobiSym](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/jacobisym.md) | 90 | `declaration-track:33e1fb9bb9b70318f61aa6cebc5fc8373d9ce59e5fd7fc641a1aa1878dff7c01` |
| 2 | `theorem` | [zero_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/zero-right.md) | 109 | `result-track:e50c2f47c37b137b43f02cf2b893fdb332b4067af91e6a8d9414f8b538bdc56e` |
| 3 | `theorem` | [one_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/one-right.md) | 114 | `result-track:e92730f47fd755da12940c576f7ecc828dbe9877c75d2cbde49ad264ed0e979f` |
| 4 | `theorem` | [legendreSym.to_jacobiSym](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/legendresym-to-jacobisym.md) | 119 | `result-track:1282aa1c22ef559acaa1954dad16cf91f193d6acd2be474d99b3f800eb3a9654` |
| 5 | `theorem` | [mul_right'](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/mul-right-source-edition-3.md) | 125 | `result-track:fcf5a54bada89ce95bfb8522c32cd1d426209acbddef4de5e656419482ddb0c7` |
| 6 | `theorem` | [mul_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/mul-right.md) | 135 | `result-track:e3cd932501d2e67b284b484a6bbf5481c0d8cadefe317d32b9020b8f9e9e8ccd` |
| 7 | `theorem` | [trichotomy](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/trichotomy.md) | 140 | `result-track:c04814067b1b7bdb176c087e3f85b9f98d73290c514b4dba1ea67984d7d4ad24` |
| 8 | `theorem` | [one_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/one-left.md) | 152 | `result-track:1936168a84ac0e0295ddd29aba3d03535500fb7d96075fe428e5315081681a8b` |
| 9 | `theorem` | [mul_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/mul-left.md) | 158 | `result-track:1bd826e9805ebe25c53f679bcc3800a64f28b77d90f9d2953416ba8bd680500b` |
| 10 | `theorem` | [eq_zero_iff_not_coprime](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/eq-zero-iff-not-coprime.md) | 165 | `result-track:5cafaf9770d2b8fac73711ecca2c3a15b65118cddd05bcd8c94026baf530de69` |
| 11 | `theorem` | [ne_zero](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/ne-zero.md) | 174 | `result-track:8ed4bada61c509938e0876cad21f2207ccc52f64283b9dd5b2b4f51502315a6b` |
| 12 | `theorem` | [eq_zero_iff](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/eq-zero-iff.md) | 181 | `result-track:261f462736f69d9512bfef067e00a3c54c7012d472cfd515a4f51d4555e9d763` |
| 13 | `theorem` | [zero_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/zero-left.md) | 189 | `result-track:9bc416df47be6f7c3b7018a2a86a0ba8d00326592871ecaa8af8d8facb8e21c1` |
| 14 | `theorem` | [eq_one_or_neg_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/eq-one-or-neg-one.md) | 194 | `result-track:7daf9f10ff39d0cc855f3fabaa3d7d163850e1a9f9c71650102c8aa7b6b84ede` |
| 15 | `theorem` | [pow_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/pow-left.md) | 198 | `result-track:cf9f16e1b3d186f43610a9df3af808828f279e1274fc639256db064ad097e78e` |
| 16 | `theorem` | [pow_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/pow-right.md) | 203 | `result-track:404fd512441940c398da356659aa367646d764df921251dae843382916e3b6e7` |
| 17 | `theorem` | [sq_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/sq-one-source-edition-2.md) | 212 | `result-track:c1e0823e9594e1a262c429358ebb0db03b5246150036abddd3fcd8a0f95b5f0e` |
| 18 | `theorem` | [sq_one'](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/sq-one.md) | 216 | `result-track:b89e58b9b4d46ec1f769ffaa732f8c6bb95f0a70ee7072af6fabddbd1e668ad0` |
| 19 | `theorem` | [mod_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/mod-left-source-edition-2.md) | 219 | `result-track:f5bc41e8a34107764df189ddeabe5aec37bbb15f04c18b0a893c2720e9e1db03` |
| 20 | `theorem` | [mod_left'](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/mod-left.md) | 229 | `result-track:b412baaa55381407dbae4a2a6dcf44fe46535a21ae1455bf9e5d783d7a24443e` |
| 21 | `theorem` | [prime_dvd_of_eq_neg_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/prime-dvd-of-eq-neg-one.md) | 234 | `result-track:87ac0e2cbec8f0fbbf4e4c3d8b617dda0a7909acee9332c965346b37c94431bf` |
| 22 | `theorem` | [list_prod_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/list-prod-left.md) | 240 | `result-track:cc6866a9c1d50e8ded7b712ee947361e9edfd3103c666eaffb4e1c64366ea2f0` |
| 23 | `theorem` | [list_prod_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/list-prod-right.md) | 246 | `result-track:8e1e40c511178072b59a5d2b5b751b796a91a09dc0693f3d355383f0a54d42af` |
| 24 | `theorem` | [eq_neg_one_at_prime_divisor_of_eq_neg_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/eq-neg-one-at-prime-divisor-of-eq-neg-one.md) | 260 | `result-track:6a772b0a475df967bceecf863603affd1d8a61a7c1004f6ea86de7087f87ab94` |
| 25 | `theorem` | [nonsquare_of_jacobiSym_eq_neg_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/nonsquare-of-jacobisym-eq-neg-one.md) | 278 | `result-track:07e927228c5538b9293d86b7813435d9f5573b21bd28f2bddcec8e44d661ad5b` |
| 26 | `theorem` | [nonsquare_iff_jacobiSym_eq_neg_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/nonsquare-iff-jacobisym-eq-neg-one.md) | 286 | `result-track:c3714eac57602d102c48115c112f5705b5652ab10ba3542e1566cf15f7f0e028` |
| 27 | `theorem` | [isSquare_of_jacobiSym_eq_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/issquare-of-jacobisym-eq-one.md) | 292 | `result-track:e812230492bd5663379ba1e39ee4555bbfe08d02776af4dd4021d3fb10868148` |
| 28 | `theorem` | [value_at](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/value-at.md) | 307 | `result-track:d712478a7dbab758756adf58411a9b68f0bf85ad7070933a0577cc1b0f61eab5` |
| 29 | `theorem` | [at_neg_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/at-neg-one.md) | 317 | `result-track:c191f710952754e328f2bf8f0c2d39118f2f8e35158eccb949f4adc110d9c42e` |
| 30 | `theorem` | [neg](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/neg.md) | 323 | `result-track:b55e5e873fc0746ca8fe63b50e5803228ced4b354c0c22d5c432fcfced560feb` |
| 31 | `theorem` | [at_two](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/at-two.md) | 327 | `result-track:0859dcebd196c53c73e67d1c16277cd635053ef74ad16290aecdf15580c0848f` |
| 32 | `theorem` | [at_neg_two](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/at-neg-two.md) | 331 | `result-track:8d5de7f21f7af03029e2d5440fcef4d63680619660562f83970627d0d5562ff0` |
| 33 | `theorem` | [div_four_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/div-four-left.md) | 334 | `result-track:018ea8b23189a51d1cc23be20aa7d8aee7d7f68381bf6cde18c1a61b0676924f` |
| 34 | `theorem` | [even_odd](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/even-odd.md) | 343 | `result-track:6df4ef733b7e96047319d9a951db670b1d3516d2239ccdce6a4565fbd3b9353e` |
| 35 | `def` | [qrSign](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/qrsign.md) | 362 | `declaration-track:6cf29782e24638dbe1383d170a9ae747c61c512f4fc9aec24d6e5e519f310f35` |
| 36 | `theorem` | [neg_one_pow](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/neg-one-pow.md) | 368 | `result-track:6ef0791c4e9e9f15cb596f600d110a9fb327c8ef8f00b588df0b583663b5874d` |
| 37 | `theorem` | [sq_eq_one](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/sq-eq-one.md) | 376 | `result-track:64af3f2961de412459eb329918b2cbf5bc3220649b52116c80d02953399a342a` |
| 38 | `theorem` | [mul_left](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/mul-left-source-edition-2.md) | 380 | `result-track:3a439a1b6dcc74a183a7d3919ae6f2a7f24d497ff38587d6b53b31d43a34f4bf` |
| 39 | `theorem` | [mul_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/mul-right-source-edition-2.md) | 384 | `result-track:ee9a9cdef34a29ea53151d4bea1e8e04cfe99eea98ffedcaf7510835effd44cd` |
| 40 | `theorem` | [symm](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/symm.md) | 389 | `result-track:86eaf314a48a448f7222c22273080657fab449c0bd2cd60131cd4760b2a8edff` |
| 41 | `theorem` | [eq_iff_eq](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/eq-iff-eq.md) | 393 | `result-track:7e0b7fc893b0cd3dc0427f6b17636cb39e7bb9d19051be53c6d2e5f40f19aa29` |
| 42 | `theorem` | [quadratic_reciprocity'](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/quadratic-reciprocity-source-edition-2.md) | 407 | `result-track:661eabe0320a97f0094fa9f29ab15c4e2f16e2136f97c61a7ba22ec7dcfdf7f1` |
| 43 | `theorem` | [quadratic_reciprocity](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/quadratic-reciprocity.md) | 426 | `result-track:406ddbac9b627d94c0c24351b6fef106870f83394fb6796471e2baf6809fe9ad` |
| 44 | `theorem` | [quadratic_reciprocity_one_mod_four](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/quadratic-reciprocity-one-mod-four.md) | 432 | `result-track:7c98b38e1c72bb49113262c218f007b7f385f81be33bd47e807a8a5669facb26` |
| 45 | `theorem` | [quadratic_reciprocity_one_mod_four'](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/quadratic-reciprocity-one-mod-four-source-edition-2.md) | 439 | `result-track:8540ca0fa8f821c6a0771ee4bb2b691d6ca0364137015e11e9e7557e2d949b8d` |
| 46 | `theorem` | [quadratic_reciprocity_three_mod_four](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/quadratic-reciprocity-three-mod-four.md) | 445 | `result-track:5f6fe85a03628635084e79ce47c7caffaf971727e12794568bc3234e916015d9` |
| 47 | `theorem` | [quadratic_reciprocity_if](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/quadratic-reciprocity-if.md) | 451 | `result-track:ddf24dd7eb47d22bfad7b98320e413a77a82f807b60bc925d5904a01040bba47` |
| 48 | `theorem` | [mod_right'](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/mod-right.md) | 460 | `result-track:147899dd883fe682947f6e0bca8359bd356257b98ee32eb56f5b5fa4da1d22ce` |
| 49 | `theorem` | [mod_right](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/mod-right-source-edition-2.md) | 482 | `result-track:7387e38ad120bd8b8adb1a1774720e105ffad2e952239174af4befc3ae0db027` |
| 50 | `def` | [fastJacobiSymAux](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/fastjacobisymaux.md) | 506 | `declaration-track:3616f2c92cf6f7b4e7b58f91c499bde2e38443c16672b746eefbf9776ae6252a` |
| 51 | `theorem` | [fastJacobiSymAux.eq_jacobiSym](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/fastjacobisymaux-eq-jacobisym.md) | 525 | `result-track:7b07c37d8d49e618a18033c0b67e2919246dbff539329fba263adac2fb36fb44` |
| 52 | `def` | [fastJacobiSym](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/fastjacobisym.md) | 550 | `declaration-track:7f78649da02594df4e5481eaef8b51d6dbe6d872981385146dba603658a1324e` |
| 53 | `theorem` | [fastJacobiSym.eq](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/fastjacobisym-eq.md) | 566 | `result-track:bcb7f59e2f8692403a1140f41f69035d1e0be526ded55c93fead5369f7204208` |
| 54 | `def` | [fastLegendreSym](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/fastlegendresym.md) | 591 | `declaration-track:bdb609ecc48e25a33f2b2525a95e11f6e88d8b5d06a8379a821af0a742f9ddf4` |
| 55 | `theorem` | [fastLegendreSym.eq](../../../../NumberTheory/LegendreSymbolJacobiSymbolJacobiSymbolNamespacedSourceEdition1.lean/declarations/fastlegendresym-eq.md) | 593 | `result-track:b5b77c1f26c84abd50b2b36edf15af3c64b7253cc1e40951355c46b5265a7266` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8f09809cbdbfe995d688ff2162dc0eca269e4047f64b4ec7bb54391598ab2815 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant953bd86aaa271c86da15e5f718d3c4433db0a716e42aba8bf8103e548c9bafe4.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/JacobiSymbol/Variant953bd86aaa271c86da15e5f718d3c4433db0a716e42aba8bf8103e548c9bafe4.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
