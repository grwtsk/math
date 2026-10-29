# Verification target: Elliptic Curve Point Point Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7b67734d608785a00d88534c3c239e7a79cd2f8",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7b67734d608785a00d88534c3c239e7a79cd2f8`.

Source path: `GRWTSK/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.Weierstrass` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FreeModule.Norm` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.ClassGroup` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/macro-source-edition-3.md) | 81 | `declaration-track:a3c51b36f6bf9cdff5358bef5262318b541721f838502dee785e1b9d165f85f2` |
| 2 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/macro-source-edition-4.md) | 91 | `declaration-track:caa5eb9d43c6acd0b2f114a51b1aa584c487a1e004c042f745b87c927a25f6b2` |
| 3 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/macro-source-edition-2.md) | 95 | `declaration-track:77723c8841b8d8705297e1afdf1dc76524b8df5e6c2f4e81703908874aea5fad` |
| 4 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/macro.md) | 99 | `declaration-track:1a95837df9db12211ee79347b58661210897ecfb66f9e8fecfeeef3507fbf818` |
| 5 | `def` | [negPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/negpolynomial.md) | 113 | `declaration-track:03625bbf71dde100f36ad58666b0c6b0b3ce9dd96a612a6e5fded8ba7690e480` |
| 6 | `def` | [negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/negy.md) | 121 | `declaration-track:ddb3d4d4f042d5f5112f5d809785b4243d380645da6bb7337976693ff7ad8958` |
| 7 | `lemma` | [negY_negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/negy-negy.md) | 126 | `result-track:d7e7e4a1905dbe90781cb4b903e643bb408158ed77f23cc623507902740a6ee9` |
| 8 | `lemma` | [baseChange_negY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/basechange-negy.md) | 132 | `result-track:f2fdce45c49f572d8ec32ae51639387743d4de995f47e0d6d326039ea49203ec` |
| 9 | `lemma` | [baseChange_negY_of_baseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/basechange-negy-of-basechange.md) | 141 | `result-track:d8ed5377247cd8e8e8c806f4f75d7468d41f69923046e6769deab6c2cbc77bcd` |
| 10 | `lemma` | [eval_negPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/eval-negpolynomial.md) | 149 | `result-track:e105feabdd8ae59b3ab541a10feb5287401d472675698f3174bd337dd3e16261` |
| 11 | `def` | [linePolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/linepolynomial.md) | 158 | `declaration-track:f6780d50d97a6ebe48f7e19fbc5699ac000cd48c6f4192f46900cc20263d8a3a` |
| 12 | `lemma` | [XYIdeal_eq₁](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/xyideal-eq-source-edition-2.md) | 162 | `result-track:8e241da739bbfc95395020aa6d1ad36b0c3c5f25e10e2475efb3c4bcbe0a29ef` |
| 13 | `def` | [addPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/addpolynomial.md) | 177 | `declaration-track:f5fed8ee4c418c630aa7d317b06334b55c4552332f0c40deccefd7f95ebd796b` |
| 14 | `lemma` | [C_addPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/c-addpolynomial.md) | 181 | `result-track:2ebe4b141fbedfe9a902ce25aa13b39bf9a4b774235db82ef220a6865c3cf763` |
| 15 | `lemma` | [CoordinateRing.C_addPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/coordinatering-c-addpolynomial.md) | 192 | `result-track:096cd037c74e9abf16c1bcc3edcce7134cc063ce50dd792d4bedf62d26ac5ca0` |
| 16 | `lemma` | [addPolynomial_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/addpolynomial-eq.md) | 200 | `result-track:5e19e15cbf1bb659d7cff9401b5ddf8b5c0ba8f15f2729d134548988b3d9bcbf` |
| 17 | `def` | [addX](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/addx.md) | 217 | `declaration-track:6423a518d2a0aa85cca92baf48373c80280e0a8f63e904190c70a880dfe5c0c1` |
| 18 | `lemma` | [baseChange_addX](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/basechange-addx.md) | 222 | `result-track:c2cd665494456f184e0643b6849581c34b1de26e577600f1c9fd3f2d8bd3010d` |
| 19 | `lemma` | [baseChange_addX_of_baseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/basechange-addx-of-basechange.md) | 231 | `result-track:7f20402c04b94e936698b507e8fe78546fb46ff2371f5c05d9e79765142fa766` |
| 20 | `def` | [addY'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/addy.md) | 243 | `declaration-track:4bed98d9c70229ebdf890dee792820ec3bf3c7c6b4406b314b02a8ebe7401587` |
| 21 | `lemma` | [baseChange_addY'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/basechange-addy.md) | 248 | `result-track:785cd95f988659e9e8968d788b2debc5b46246df6a37f6014c891d379eb8352c` |
| 22 | `lemma` | [baseChange_addY'_of_baseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/basechange-addy-of-basechange.md) | 257 | `result-track:89837abd0fc7cd6b539d501192d2ddb8ad1691d93abc38672914eab508135137` |
| 23 | `def` | [addY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/addy-source-edition-2.md) | 270 | `declaration-track:abfc54a25ad13b4a9ccf9a5e0c16a2ba836ae59b2041da856810f1cae46ddb74` |
| 24 | `lemma` | [baseChange_addY](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/basechange-addy-source-edition-2.md) | 275 | `result-track:e36a2cd6a673db8ea2f346203c9f5c499af1d94ec98aaf09f49b21136a850cda` |
| 25 | `lemma` | [baseChange_addY_of_baseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/basechange-addy-of-basechange-source-edition-2.md) | 283 | `result-track:8da61adb0b0fc613051a9900a32dcf7ebd6d3e80a93a963cce9ca172fc71604f` |
| 26 | `lemma` | [XYIdeal_add_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/xyideal-add-eq.md) | 291 | `result-track:55ec8ead3ca0ce0fde9b1cd85d757ed6bfffc3c77910f68dc6bb8bbc4877d2ac` |
| 27 | `lemma` | [equation_add_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/equation-add-iff.md) | 305 | `result-track:fe802dad1ffdae5e84f9a3fd187a23a2c67dd3df449512560554d91427a32d91` |
| 28 | `lemma` | [nonsingular_add_of_eval_derivative_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/nonsingular-add-of-eval-derivative-ne-zero.md) | 312 | `result-track:1cdb77a57a0cded410ce59508cc5de3e47a65792f25238de6c2faf50a54fcf6f` |
| 29 | `inductive` | [Point](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/point.md) | 333 | `declaration-track:115a9f674d64297ee67039d9e17d9be3c628df92bc4a291a2b3026254243ae8b` |
| 30 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/instance-source-edition-4.md) | 343 | `declaration-track:b496d2807c2fb3b7804837358cdc9debc4ff8d2f582bf1ca228806d71caea549` |
| 31 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/instance-source-edition-3.md) | 346 | `declaration-track:7fbcb862966c499d9f59e2ad03b5f3cd5f38d314cb45f8e22121a281cdee6b7d` |
| 32 | `lemma` | [zero_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/zero-def.md) | 350 | `result-track:d48b997bf2e115c57f970aeade7a00b2e3b0176ad661dfec059c23d25badd402` |
| 33 | `lemma` | [equation_neg_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/equation-neg-iff.md) | 358 | `result-track:707be1c7283bc5386b4f61dc55377a264f93763f8f9a24bfad1eeab94db5dd94` |
| 34 | `lemma` | [equation_neg_of](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/equation-neg-of.md) | 364 | `result-track:3c879712c9bc6dbbe8ba7e2c37f5f07ab10ea12fbc89c13eb5bd92c7e25af5ff` |
| 35 | `lemma` | [equation_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/equation-neg.md) | 369 | `result-track:951fe9246c4d62ca588ed75e50f3069e5abbe212d38eabb09844214dfc6c40be` |
| 36 | `lemma` | [nonsingular_neg_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/nonsingular-neg-iff.md) | 373 | `result-track:c4d0efb870a752b07f31fe185e2e39a7e96a8ea1b6bd291c7d1bff9893f17e0b` |
| 37 | `lemma` | [nonsingular_neg_of](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/nonsingular-neg-of.md) | 379 | `result-track:56a8fa36821573dd3be6f3e3f121ec6f09ff5c2c4ab46c7166b5ac0a37bd303b` |
| 38 | `lemma` | [nonsingular_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/nonsingular-neg.md) | 384 | `result-track:9cfada037f621de0b356eb1b5e1dcc72bc53481584e49686f53231f5b4da665a` |
| 39 | `def` | [neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/neg.md) | 393 | `declaration-track:9fbc8b10f5ab9f1216ad05c59d356e8518cd93e6c8f472f1de55e04c6b33d19a` |
| 40 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/instance.md) | 398 | `declaration-track:07e113528c3e9a241a42fefadab8106d14346eb2021570bd1d12338afac653e2` |
| 41 | `lemma` | [neg_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/neg-def.md) | 402 | `result-track:3ca47c5ec60c652ec67f1b17436b32e3ff97919f3ceeff1d40fdfb03da916e63` |
| 42 | `lemma` | [neg_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/neg-zero.md) | 407 | `result-track:7b4b3193ac03494221401a29472bc3793e27743762eb495dae7d494d5678f804` |
| 43 | `lemma` | [neg_some](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/neg-some.md) | 412 | `result-track:7f09809d2c8a05a9a978417b3ee8f1a5080435712cfb995ab12c8a833926f8b8` |
| 44 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/instance-source-edition-2.md) | 416 | `declaration-track:6ec31535019eb63c5e44d4434afb11c01ee0c3698bb634c16f5ca046d82780cb` |
| 45 | `def` | [slope](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/slope.md) | 440 | `declaration-track:bf9cd642c98e32ea8580b3a969cf7c0f2eeca4878ee2d609c637a2d4f0098d21` |
| 46 | `lemma` | [slope_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/slope-of-y-eq.md) | 451 | `result-track:98f56f6a178b4512521aaabd61b32cc674f010df5a60befd2174565eec605f2d` |
| 47 | `lemma` | [slope_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/slope-of-y-ne.md) | 457 | `result-track:7cbdc83a4c120c3be3462611a212ab8b1a91cdd328cf90fa1974caea1c1fbe09` |
| 48 | `lemma` | [slope_of_X_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/slope-of-x-ne.md) | 465 | `result-track:d7f1785d5c27757949335e7959c181799966be966bd03b43fe7347356dc45a4e` |
| 49 | `lemma` | [slope_of_Y_ne_eq_eval](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/slope-of-y-ne-eq-eval.md) | 470 | `result-track:07150576d4c6f0811445ba421ea6619bbf6439edf1583fef39e545200c8202d7` |
| 50 | `lemma` | [baseChange_slope](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/basechange-slope.md) | 480 | `result-track:ff444dab0172662e649c323850b03e2881587c5f9618feee9bf1f28da904f5fd` |
| 51 | `lemma` | [baseChange_slope_of_baseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/basechange-slope-of-basechange.md) | 501 | `result-track:b9bbe210d95e1d8af431c7e6d238bc3cd07b8e842546d998ed24a3f576e11b18` |
| 52 | `lemma` | [Y_eq_of_X_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/y-eq-of-x-eq.md) | 510 | `result-track:0336bd3786c897bc5c8fc3892c4b8d7e01ad93acedf47d8ee7121b8549e4faff` |
| 53 | `lemma` | [Y_eq_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/y-eq-of-y-ne.md) | 517 | `result-track:6839daec6f032c338365fe5dc6d97dc4b36a3cdaf3dc3e1bf4c33e4b766da9f0` |
| 54 | `lemma` | [XYIdeal_eq₂](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/xyideal-eq.md) | 524 | `result-track:27f7f7ac54a2dcc4c669b742821928ac67cf2e6ff0624cddbafed7e2d20f6181` |
| 55 | `lemma` | [addPolynomial_slope](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/addpolynomial-slope.md) | 545 | `result-track:67567bda884191e9d9f166a5f31954ce09768ae39e7da1cd25b9861bc0938e89` |
| 56 | `lemma` | [CoordinateRing.C_addPolynomial_slope](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/coordinatering-c-addpolynomial-slope.md) | 576 | `result-track:6075579424b2864c69ed72d79c4e597cd9f13d2ede14b14def2db5fb8253c583` |
| 57 | `lemma` | [derivative_addPolynomial_slope](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/derivative-addpolynomial-slope.md) | 584 | `result-track:1e815e7620092f3da820a496e81cb2c28ca4af27ee130c671b4176a536139f73` |
| 58 | `lemma` | [equation_add'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/equation-add.md) | 597 | `result-track:9ddda4febb1a0ede89d72476ac9d8f573c60ccdaf5b8e772774751ac7aa3e4f8` |
| 59 | `lemma` | [equation_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/equation-add-source-edition-2.md) | 605 | `result-track:dc1cb6572fdf3c6e973ace462953def68914f631a6c4d1a112c4e8c8de30a0fc` |
| 60 | `lemma` | [nonsingular_add'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/nonsingular-add-source-edition-2.md) | 612 | `result-track:ed055a2a4c7846ba61355f3330c1850a78ae78bb6d790c968dd750b06f6b5ace` |
| 61 | `lemma` | [nonsingular_add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/nonsingular-add.md) | 633 | `result-track:cbcde7e8b1a7c76d11354490da7b862e106dce4faa2c2e1c8b8326e1b7b333f7` |
| 62 | `def` | [add](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/add.md) | 645 | `declaration-track:7ece65fc3d49f7e1b1264c35ae018b02bce81516db1f570a977d327255784c7e` |
| 63 | `instance` | [instAddPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/instaddpoint.md) | 654 | `declaration-track:ba5bb0dc7175f6eaf467525a5a4630cbb490bdea1cd502a726ba237f95949815` |
| 64 | `lemma` | [add_def](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/add-def.md) | 658 | `result-track:798ef36201ddbaa1987b9d5d0d3e6b98e458176a1b40985ef3c9d7022b2a1e71` |
| 65 | `instance` | [instAddZeroClassPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/instaddzeroclasspoint.md) | 662 | `declaration-track:086dfc2d023a2e69018f2a981741f3c681e85379e7b414b6405da735f6fe4f10` |
| 66 | `lemma` | [some_add_some_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/some-add-some-of-y-eq.md) | 666 | `result-track:f72bc884073f8d52901370330b32cdc78938d0b180e7591ac76bd6d501d0e661` |
| 67 | `lemma` | [some_add_self_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/some-add-self-of-y-eq.md) | 672 | `result-track:02889670eff04d8ea6fda907870d19d25b24e78bb483ae03245ddd44612ed736` |
| 68 | `lemma` | [some_add_some_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/some-add-some-of-y-ne.md) | 678 | `result-track:d3696b77a9b4cdfb7d5ffda9e89db2e87a8dc940cf45fde5697a7aebf9c3f848` |
| 69 | `lemma` | [some_add_some_of_Y_ne'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/some-add-some-of-y-ne-source-edition-2.md) | 684 | `result-track:ffacaedb3a3abc4b7d1e6928be7f0b5b4c7ea199a27ee91443f40a14f11a11e9` |
| 70 | `lemma` | [some_add_self_of_Y_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/some-add-self-of-y-ne-source-edition-2.md) | 691 | `result-track:7c2f4c376cfaa35ac4b2f5a83a8b23365e5dc8e7d029f524c1654e94e040d019` |
| 71 | `lemma` | [some_add_self_of_Y_ne'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/some-add-self-of-y-ne.md) | 697 | `result-track:6d15d03ed7609c68a10a948a1c27931456579d8d0edb0912d545e824b9e4b4a2` |
| 72 | `lemma` | [some_add_some_of_X_ne](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/some-add-some-of-x-ne-source-edition-2.md) | 704 | `result-track:c263c2f80f3ebd14ff87e92b05f101397501f7429899ad871645020de08164a6` |
| 73 | `lemma` | [some_add_some_of_X_ne'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/some-add-some-of-x-ne.md) | 710 | `result-track:30ae976162fef704f3da791785417df77908be36c41f2b27fa305e8090fc7e45` |
| 74 | `lemma` | [XYIdeal_neg_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/xyideal-neg-mul.md) | 730 | `result-track:6ed0d2b90dc392551c72a05625c5c231848b62ea74fd802f7bf1c64fcc0d7c0c` |
| 75 | `lemma` | [XYIdeal'_mul_inv](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/xyideal-mul-inv.md) | 763 | `result-track:f1e3b0a10fae5d57efe9ff48eb5fa479b90250ae76fd7ac9c460d7fef8011912` |
| 76 | `lemma` | [XYIdeal_mul_XYIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/xyideal-mul-xyideal.md) | 774 | `result-track:6a24e329ea67ba3ff5dd9b2298d07c04288fe91de03282f36420b52bba5e7209` |
| 77 | `def` | [XYIdeal'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/xyideal.md) | 824 | `declaration-track:fd5d3e7611d1bf04320fd13928c419895dea247640928f8fab00b3fd9f38a8a2` |
| 78 | `lemma` | [XYIdeal'_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/xyideal-eq-source-edition-3.md) | 829 | `result-track:cc78bdc28c8b391c885ff41388b2421e711dd764a747db17b10bb7b6c53dac03` |
| 79 | `lemma` | [mk_XYIdeal'_mul_mk_XYIdeal'_of_Y_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/mk-xyideal-mul-mk-xyideal-of-y-eq.md) | 835 | `result-track:cedd27f511b88e3a9985dbcaf0b497e79680cdd09461c109b72f74f9ede78d3f` |
| 80 | `lemma` | [mk_XYIdeal'_mul_mk_XYIdeal'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/mk-xyideal-mul-mk-xyideal.md) | 844 | `result-track:b33e4c8620254e505a94f4a99b9137437f25cf422db1de4c1c6c58c75b17bfee` |
| 81 | `def` | [toClassFun](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/toclassfun.md) | 860 | `declaration-track:6ca1d6b7cf7f32540a0c00fc9b6279f63273bd688c418f3e3d6c8cc17d54d74c` |
| 82 | `def` | [toClass](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/toclass.md) | 868 | `declaration-track:e751317f0fdbdea635fcef10352b612938186e03d306145a9ef513515716b877` |
| 83 | `lemma` | [toClass_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/toclass-zero.md) | 886 | `result-track:6dff25f8981d779ee57dda07ac4ced79a69486b23a2016f46399ee04e2f69226` |
| 84 | `lemma` | [toClass_some](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/toclass-some.md) | 890 | `result-track:ff692c790d6a1e0181e04bb93236af8ea7584f5f9b44b1f830adb2359275d32c` |
| 85 | `lemma` | [add_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/add-eq-zero.md) | 895 | `result-track:619149fe84ae689e2cb651c8ef5cf2b75f65e64b8fae27182e5d9a4e0c01941c` |
| 86 | `lemma` | [add_left_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/add-left-neg.md) | 913 | `result-track:ea28b05e6f5a48beae273626d06d9df0737e69d406a1a6dbf2516c842b5fcf82` |
| 87 | `lemma` | [neg_add_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/neg-add-eq-zero.md) | 918 | `result-track:ce16fe27e1944aec68f151a8e216acb48a105aff5b6444ded86facbb7d1ed46c` |
| 88 | `lemma` | [toClass_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/toclass-eq-zero.md) | 922 | `result-track:046140c732327f4fdb9e4f2946fb134478247aa779d9d91a2410fff806438291` |
| 89 | `lemma` | [toClass_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/toclass-injective.md) | 935 | `result-track:54e325113ae8fb25ed01292636a9db240ad432a159138f9a67cb17be2364a580` |
| 90 | `lemma` | [add_comm](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/add-comm.md) | 942 | `result-track:e63cdbbec99dda7cd3d7fbb04886626241a3ea3886c3ffdc2fad652bb9bd47b5` |
| 91 | `lemma` | [add_assoc](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/add-assoc.md) | 946 | `result-track:61c0795a195258c894074d2e93585214c993649f289f9ca1e30d10a1710122f6` |
| 92 | `instance` | [instAddCommGroupPoint](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/instaddcommgrouppoint.md) | 950 | `declaration-track:bce6d05f17e195cb05caf911e8b5d587f944c0cfd85eb8150259fa3b34cd6f63` |
| 93 | `def` | [ofBaseChangeFun](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/ofbasechangefun.md) | 976 | `declaration-track:fe196b349fdcff38581cff7e08fe73224a0157f7f70eae2eb88d8c294567eab3` |
| 94 | `def` | [ofBaseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/ofbasechange.md) | 983 | `declaration-track:852ac1252b74ba8a7cb6b9ed4d64a3c5d610f47af653a018e31641dafedb2b77` |
| 95 | `lemma` | [ofBaseChange_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/ofbasechange-injective.md) | 1009 | `result-track:ae4e428257952ed1f47fdc735bcb8378dad18b14b4ea2c25332e15a613e836fc` |
| 96 | `def` | [mk](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurvePointPointNamespaced.lean/declarations/mk.md) | 1034 | `declaration-track:e706813fd7c7d4715409d5a81460ec69de52b5166056b4f746581f049957894e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=fef45ab0d9b04c0ff71d7d25676a52a1af2a192fce6cdc4635fcf69764c57003 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean","GRWTSK/_verification/specifications/Algebra/Point/Variant3205093d013c1f9bb2ae64d25f5335c4ba6310ac23771293a961500903104376.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
