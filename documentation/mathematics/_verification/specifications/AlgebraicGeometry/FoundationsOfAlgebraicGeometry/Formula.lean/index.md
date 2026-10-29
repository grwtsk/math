# Verification target: Formula

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6716181c817363552d3c7a08e54663163a935b5c",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6716181c817363552d3c7a08e54663163a935b5c`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/macro-source-edition-3.md) | 62 | `declaration-track:d19bddd963633d2a70b1ded7faae64588578919963f16e3efb7c9d577a9fa662` |
| 2 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/macro-source-edition-4.md) | 65 | `declaration-track:ef8bf62f322ae56849fa06088fea69958d6e0689c07792a2f04b6d945d74ead7` |
| 3 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/macro.md) | 69 | `declaration-track:181fd771fba58a20b9a497c5e036d64dbeea079666dc191f4e680f27c53f9dae` |
| 4 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/macro-source-edition-2.md) | 72 | `declaration-track:8bc63452a305dd3b5bbc593b36397e97b6e4a246005b762d888170977f84bc94` |
| 5 | `def` | [negPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/negpolynomial.md) | 92 | `declaration-track:64f708e5d375b21d746d36c7a419fdd8379fdcab5aab8d1556ab4474279a83bf` |
| 6 | `lemma` | [Y_sub_polynomialY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/y-sub-polynomialy.md) | 95 | `result-track:a79a4f462d41d33b8ca8bcd25f6f63aef20631b3e08925132b048df7b1122ba6` |
| 7 | `lemma` | [Y_sub_negPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/y-sub-negpolynomial.md) | 100 | `result-track:13fef2b7b572eb478cff0e703afa7c79b4be8fc13614ae3aed091318561d861c` |
| 8 | `def` | [negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/negy.md) | 109 | `declaration-track:195b10b2e51890777c51e962caf904610c5b64653192b49f1693d675c63dc80a` |
| 9 | `lemma` | [negY_negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/negy-negy.md) | 112 | `result-track:def48f3269499d9bb917d07cb854ac69fa191639ccef88c1747c8fd062cb0bac` |
| 10 | `lemma` | [evalEval_negPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/evaleval-negpolynomial.md) | 116 | `result-track:b5bda0dc279de61b9814a44c3614e52a5cfd1db74b16c23e7c9ff2cf8ad69cba` |
| 11 | `lemma` | [Y_eq_of_X_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/y-eq-of-x-eq.md) | 122 | `result-track:165cad41c4343f81e92ac8cc9de23dcd27c286310219f4e5577fc7f5542b2baf` |
| 12 | `lemma` | [Y_eq_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/y-eq-of-y-ne.md) | 128 | `result-track:c0e337e6073f59ce559272644990366c200b049659561b67d247d54bb1579421` |
| 13 | `lemma` | [equation_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/equation-neg.md) | 132 | `result-track:308bde16311ba6e2913a2f817ac18f6d9d6c681c784b187dfc47e16805df8199` |
| 14 | `lemma` | [nonsingular_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/nonsingular-neg.md) | 140 | `result-track:ab12934deb5fc3c1e1685dbf1c2758bfbcc28d8eb025439c280305b52b0fdc9a` |
| 15 | `def` | [linePolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/linepolynomial.md) | 155 | `declaration-track:4ef2c6e78a499144bc6448ef9a91b4dc903d1dd94049f7aba1278cee5bf91243` |
| 16 | `def` | [slope](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/slope.md) | 169 | `declaration-track:b2b545424a62da52c8ff06050856eab51548b869d7e65a806634fed694dfac83` |
| 17 | `lemma` | [slope_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/slope-of-y-eq.md) | 175 | `result-track:5f4a61182952a567f6ace0f37a75a314f1d6ddf8c6d9e00ed0e9822459c21422` |
| 18 | `lemma` | [slope_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/slope-of-y-ne.md) | 180 | `result-track:4410b8b13127ca68533312d175bd158373aede2168babcc0a9cf00dda1c50726` |
| 19 | `lemma` | [slope_of_X_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/slope-of-x-ne.md) | 186 | `result-track:df1fbe497b1edea457b6b5bfdf54fa597eba76e734738a7091baa2cffa9eb914` |
| 20 | `lemma` | [slope_of_Y_ne_eq_evalEval](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/slope-of-y-ne-eq-evaleval.md) | 190 | `result-track:52f9586996c45fc56b16364dbdeb8a2931c92f4f5d0e59f40bc0e74ca96c4369` |
| 21 | `def` | [addPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/addpolynomial.md) | 208 | `declaration-track:a7a03544c57d45c2047e53aa7783a931d18c9039eee103606b13607178a37e9d` |
| 22 | `lemma` | [C_addPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/c-addpolynomial.md) | 211 | `result-track:347617b97bb37841d19732a963d729159308b886544e57a6c144d0ac45a537bd` |
| 23 | `lemma` | [addPolynomial_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/addpolynomial-eq.md) | 219 | `result-track:d6059454163c91156fd1a5fc2ad21992f31dd1e7cb669de4756252f39c8d9a16` |
| 24 | `def` | [addX](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/addx.md) | 234 | `declaration-track:c5cd9905337173b8fe4fd82238b66b0cd0a46490282e87231f021dfc6f214872` |
| 25 | `def` | [negAddY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/negaddy.md) | 243 | `declaration-track:70ac4ae1a2ffcbb17338a42e31882c458e9237d0604b871709c57c749bbf8c94` |
| 26 | `def` | [addY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/addy.md) | 252 | `declaration-track:39d403e7609e7fda1269400c264cc2e7de9da53761c5a5eddaad19ac5a7a71f2` |
| 27 | `lemma` | [addPolynomial_slope](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/addpolynomial-slope.md) | 255 | `result-track:b00f6be6a6214078a59e9c579841848b593c04622c39b184893fd45c5c1c97ad` |
| 28 | `lemma` | [C_addPolynomial_slope](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/c-addpolynomial-slope.md) | 284 | `result-track:14184831e2a56293e66869a25cfec72d02750659a588183956331189618f3191` |
| 29 | `lemma` | [derivative_addPolynomial_slope](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/derivative-addpolynomial-slope.md) | 290 | `result-track:830897af60a63cbe108799587ad556dcfce2ddb6e13d0a2eb3c0af936f4398e4` |
| 30 | `lemma` | [nonsingular_negAdd_of_eval_derivative_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/nonsingular-negadd-of-eval-derivative-ne-zero.md) | 299 | `result-track:c999098e3e4b53b5ea95f933feb963ef995d662dd99bff1702e30a8130c0984a` |
| 31 | `lemma` | [equation_add_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/equation-add-iff.md) | 313 | `result-track:8bc9c5d3e28ac9f894288152c87e6e8c6a7b6847c8a6be9af67a53fc377882e1` |
| 32 | `lemma` | [equation_negAdd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/equation-negadd.md) | 318 | `result-track:09f6188454feb362d8228e42ea0e71b3e29d1f00ed14b364d4b563a263998587` |
| 33 | `lemma` | [equation_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/equation-add.md) | 325 | `result-track:c787af58cd0ed43948edee2feb09e363f10fc887d127907b387e86e89d96dc9a` |
| 34 | `lemma` | [nonsingular_negAdd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/nonsingular-negadd.md) | 330 | `result-track:d83bfc387a3f9211d63bbbaf74f4eb5b0944180aacffcceb4ed4c0617317a965` |
| 35 | `lemma` | [nonsingular_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/nonsingular-add.md) | 347 | `result-track:06b806e2ed0e63bbcec6d56a8e0efe73b5e5efa7dc9dcbbedb12096751320bc2` |
| 36 | `lemma` | [addX_eq_addX_negY_sub](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/addx-eq-addx-negy-sub.md) | 354 | `result-track:9dbc4cf1004f724f4d8775609f7f218df3822ac0744ba22222cfcccb2a4bfb90` |
| 37 | `lemma` | [cyclic_sum_Y_mul_X_sub_X](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/cyclic-sum-y-mul-x-sub-x.md) | 363 | `result-track:39dab3bcae52e8c6b1a08a79aca2d3c00027b9ad09ebca6e10ec24aa66ae5e5d` |
| 38 | `lemma` | [addY_sub_negY_addY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/addy-sub-negy-addy.md) | 372 | `result-track:7f2245ffadb19572bd3baf738d1436b6123a5331cec00ab5d3219df8fa4f7420` |
| 39 | `lemma` | [map_negPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/map-negpolynomial.md) | 384 | `result-track:78669048c11b9ceb7aa4ade976daebfaa9cd974c3f822c36dac62f96c1d34c55` |
| 40 | `lemma` | [map_negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/map-negy.md) | 389 | `result-track:53c46e39924c8922fb80f3a4574bccfdbb17c2333768393b9ca036f4ac12cb25` |
| 41 | `lemma` | [map_linePolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/map-linepolynomial.md) | 393 | `result-track:8d09d0744bb78e62ed4b3b59c3d1bf1420ce284bda5bc1610980095f744932c2` |
| 42 | `lemma` | [map_addPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/map-addpolynomial.md) | 397 | `result-track:d4c1cb8fa8c9bb4f781aa0c169347b3ffbf17e07817509f3f8f759d1c076896e` |
| 43 | `lemma` | [map_addX](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/map-addx.md) | 403 | `result-track:a50cd3feba28f27486fc2b1ffdc621cbeec116365edd6816c7bfe8b9fd996f5f` |
| 44 | `lemma` | [map_negAddY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/map-negaddy.md) | 407 | `result-track:e22e9289c451484289e8f487dbe0d0a25db14872733b427c0e9a388935e999af` |
| 45 | `lemma` | [map_addY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/map-addy.md) | 412 | `result-track:d15ec8b93e5db803b42657e9a0c05f983be299169c405e4587143faeefda11b5` |
| 46 | `lemma` | [map_slope](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/map-slope.md) | 416 | `result-track:277be27372c2930f3c7b92c7cadf134d975c4617b1409c6789e57e2ceae23b79` |
| 47 | `lemma` | [baseChange_negPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/basechange-negpolynomial.md) | 430 | `result-track:109236ff1fa3864a5c69df9430fb44f4ad74d8b89fb51c705a59d6476f5ce0cd` |
| 48 | `lemma` | [baseChange_negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/basechange-negy.md) | 434 | `result-track:a7258d552a615992b952b078be4ff03f8222a3d728dda55ba58afa5fc2f62741` |
| 49 | `lemma` | [baseChange_addPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/basechange-addpolynomial.md) | 438 | `result-track:5c28f776af9207c8d75fc66196bdd8b505fafc47ed00feafd24281a0d79262a1` |
| 50 | `lemma` | [baseChange_addX](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/basechange-addx.md) | 442 | `result-track:f3bc9121ba9827473f1d5ab5d8592fcd53547cfc0de1b1cf17e1397c3a50de41` |
| 51 | `lemma` | [baseChange_negAddY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/basechange-negaddy.md) | 446 | `result-track:2fe3cd6625960a24c741e3f2694b9bd653b65556bc8bc05e0637d3279ceb6bea` |
| 52 | `lemma` | [baseChange_addY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/basechange-addy.md) | 450 | `result-track:e58b5bd3894ce677805d65be544198eae69729380e7b61b74e6effd0824fac3b` |
| 53 | `lemma` | [baseChange_slope](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/Formula.lean/declarations/basechange-slope.md) | 454 | `result-track:36ce6c6feaf2e37ee0187253300c333ea1d11865f4890d33e8608b1ae1c9af7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a9b8aaa647a4581a9a40d756a06dbdc35253dd388d3c68b55bd38b1ecbb0ed6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Formula/Variant39d6ae54ad1374567e223d16e2546739576233c73605bd228186b1c44df02e0a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
