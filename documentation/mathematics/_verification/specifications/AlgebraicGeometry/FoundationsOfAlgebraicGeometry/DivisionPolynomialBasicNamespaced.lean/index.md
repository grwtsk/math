# Verification target: Division Polynomial Basic Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "deaf84f035f9a609334ae5561fcb0c233e5ef4be",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `deaf84f035f9a609334ae5561fcb0c233e5ef4be`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EllipticDivisibilitySequence` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/macro.md) | 103 | `declaration-track:0c3aca22c06ea3e3c1fcb0f895f27a03fd5a572b439253ad6e8fb8bc868655ae` |
| 2 | `def` | [ψ₂](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/anonymous-source-edition-2.md) | 117 | `declaration-track:9da3a27d2de6215fe3334a0a301210264f701eb6a2e9c3ebc05de68a4129730d` |
| 3 | `def` | [Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq-source-edition-3.md) | 121 | `declaration-track:784d1d02fd6cb70fa2577a0465966bb3e6cf113fd0d6d551207504ebbc20a254` |
| 4 | `lemma` | [C_Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/c-sq.md) | 124 | `result-track:64e47423473ace473c419a64d64b1a9012d7a554706c7df57dc2cd0879f1a8cf` |
| 5 | `lemma` | [ψ₂_sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq-source-edition-2.md) | 129 | `result-track:550e1314a78e8958823efe1f60c165d122255ae30ffa2bd02823363785ba57ce` |
| 6 | `lemma` | [Affine.CoordinateRing.mk_ψ₂_sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/affine-coordinatering-mk-sq-source-edition-2.md) | 132 | `result-track:fe94c5af783d72e80765ee26e63464951c9e539f4dd69526273f4b1e320e2420` |
| 7 | `lemma` | [Ψ₂Sq_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq-eq.md) | 136 | `result-track:61bc97d6fec026788d04459d4fa77453490a425151f881d7b97971f7a5cf4d7d` |
| 8 | `def` | [Ψ₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/anonymous-source-edition-3.md) | 146 | `declaration-track:bc1e72584c6729f727c0739bb4faed93109ab34b19824ebb22936213c02aefd9` |
| 9 | `def` | [preΨ₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre.md) | 151 | `declaration-track:355fe9dda9efdb7f95d92fdbf70b9aad2ebf085d294352e88a0c5b76bceab534` |
| 10 | `def` | [preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-source-edition-2.md) | 157 | `declaration-track:62d08212fade4ed489a6848036bac078b2574153083b81c7b51444fe6d911b58` |
| 11 | `lemma` | [preΨ'_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-zero-source-edition-2.md) | 161 | `result-track:f18c065e3a2b263aa188ce3c7f04d9390e4796a3c4d8c7f2c277e097b6e434b3` |
| 12 | `lemma` | [preΨ'_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-one.md) | 165 | `result-track:b265922accf64feb6de205330a7583ecd462a908d6f5f8ca4e4037d18be7004d` |
| 13 | `lemma` | [preΨ'_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-two-source-edition-2.md) | 169 | `result-track:c475f7498bb870e723f4c4fddcdfc74e0851e52dca1f92e880df965890608bdf` |
| 14 | `lemma` | [preΨ'_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-three-source-edition-2.md) | 173 | `result-track:9439c45bb51fae3aaa9fcaaa0a2db97235cbc1eb1a53e25f5f2e98f208250863` |
| 15 | `lemma` | [preΨ'_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-four.md) | 177 | `result-track:3f20e4f7c8801a2eee6c6eaedfc29ffe6d31d6eb9a0a76236de5c7f303ef9282` |
| 16 | `lemma` | [preΨ'_even](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-even.md) | 180 | `result-track:4424965bacdcca080a9d51ee429c843b15e471ee6ec117bf42f93dcc92d3eb3c` |
| 17 | `lemma` | [preΨ'_odd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-odd-source-edition-2.md) | 185 | `result-track:d4dd2fca35362467f5c0c49e2b1bf88ebc0499cdb7e08dfe278206912a5f1569` |
| 18 | `def` | [preΨ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-source-edition-3.md) | 198 | `declaration-track:df39256d3dcb37e25411b5ba13c91f83902cf7da7d454d90f29a8af760cb5959` |
| 19 | `lemma` | [preΨ_ofNat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-ofnat.md) | 202 | `result-track:bac7f967256d697d44ff2f149ec5f67ee580c49e3909124c08de610d43450c1d` |
| 20 | `lemma` | [preΨ_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-zero.md) | 206 | `result-track:43dfd9050157f9b5bf6e743e309d45487a61f01d91e452ba587e14c7e54e0d78` |
| 21 | `lemma` | [preΨ_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-one-source-edition-2.md) | 210 | `result-track:c35f95237783797494bd0a6375658a30edc6f2619f0123d594996bc5967f3693` |
| 22 | `lemma` | [preΨ_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-two.md) | 214 | `result-track:014fd5b6bd6fd6516e378de699b973319a6bf266b3c09292482d2eaad0833c1b` |
| 23 | `lemma` | [preΨ_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-three.md) | 218 | `result-track:114457ee53ecc6c4d7c651b4a9921fbf758b6429ed85824bfe1be89a64f4f32b` |
| 24 | `lemma` | [preΨ_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-four-source-edition-2.md) | 222 | `result-track:49a93e7006739de2876f07d839e491875aa75d1ae36dd5a951edea166418000b` |
| 25 | `lemma` | [preΨ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-neg.md) | 226 | `result-track:9818022dfc17bdfe3f42cf8e8dae192bcfd9115804027153dee98a04657091b3` |
| 26 | `lemma` | [preΨ_even](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-even-source-edition-2.md) | 229 | `result-track:4e36f0392816df1805f6531daf0473eeb76ad848ad48a9efc5cbe2163a53e407` |
| 27 | `lemma` | [preΨ_odd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/pre-odd.md) | 236 | `result-track:c1af0c301cba8c434d65ee5b8e43ba2b671be8a8bb01e14671bb6706949a77c5` |
| 28 | `def` | [ΨSq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq.md) | 250 | `declaration-track:36e619810d6392b2237b2e2685a323a9ff4672a42100ad0f97cae36fb2d16446` |
| 29 | `lemma` | [ΨSq_ofNat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq-ofnat.md) | 254 | `result-track:10a22642ab395b7630b0b7b4e678c7cbaba81d7078aaaa4c07dd04f323a0b4a3` |
| 30 | `lemma` | [ΨSq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq-zero.md) | 258 | `result-track:3b98bfb7a32f1161ef7412b9cb8be44a2ef5e12d2bbbb0b3b325452144da91e0` |
| 31 | `lemma` | [ΨSq_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq-one.md) | 262 | `result-track:099bdaa1909ab57e73570d508dc8e10d42a101ce1a2a4cf3d5bf4eeb65ac78ea` |
| 32 | `lemma` | [ΨSq_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq-two.md) | 266 | `result-track:b616645b0275552eac18869ade9ce3e2223828889fd578ec596833cd1b93f0c4` |
| 33 | `lemma` | [ΨSq_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq-three.md) | 270 | `result-track:b32519ca06a2557e5ac604dff77d9c8b593a70c45eeabb55191664a3bddde772` |
| 34 | `lemma` | [ΨSq_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq-four.md) | 274 | `result-track:d09a335899aa973f150d372e5ad19a7f3bd6f1781d15e51fa2b461af92249547` |
| 35 | `lemma` | [ΨSq_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq-neg.md) | 278 | `result-track:a6d94fbd8f76099f3c46456ff733e4757553a82993a23783176e66aa6abe97c3` |
| 36 | `lemma` | [ΨSq_even](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq-even.md) | 281 | `result-track:80ac62a716f64c8c5b0943d02c6fa9760d2192d056308681c29ed1c99e1c1f4f` |
| 37 | `lemma` | [ΨSq_odd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/sq-odd.md) | 288 | `result-track:797e1ad17d62fe763c201be476d9678dcf08392cf1f93b69be58c1b7e901c259` |
| 38 | `def` | [Ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/anonymous-source-edition-6.md) | 302 | `declaration-track:fbe7262847f010ad19f633ee92bc82029f89b99053cd508271b7ac57905695ec` |
| 39 | `lemma` | [Ψ_ofNat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/ofnat-source-edition-2.md) | 308 | `result-track:6989f81a2dbc1e740bc31abd1375ac2847a8be140d38fbebe7b0cebe003831de` |
| 40 | `lemma` | [Ψ_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/zero.md) | 312 | `result-track:3215047519274311c9dce3c653e0e3524becadc8d20864e63e85e3c5449dae06` |
| 41 | `lemma` | [Ψ_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/one.md) | 316 | `result-track:06c4e7f51776c4c570ba612552e39bcf6f04e3c01764ae4e1ce50052d5738f14` |
| 42 | `lemma` | [Ψ_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/two-source-edition-2.md) | 320 | `result-track:8de2d0d604c2febd0beda70fe9453839544b2a386c6d0be4c96d1ea68b10f8e6` |
| 43 | `lemma` | [Ψ_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/three-source-edition-3.md) | 324 | `result-track:891d4c75fa895978e5ed265b05c4f35d6a9d4d2dcd2cde2857621463fa0b5274` |
| 44 | `lemma` | [Ψ_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/four-source-edition-4.md) | 328 | `result-track:e934fd599ada7ff764b8862b07685abf79c3faa4504e54fbf1e2ac57351fa653` |
| 45 | `lemma` | [Ψ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/neg-source-edition-2.md) | 332 | `result-track:669c2def052fd23c4dd7380519c074005b9c604f42c42d04402352cf315f9c2b` |
| 46 | `lemma` | [Ψ_even](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/even.md) | 335 | `result-track:65bef95523b2e97c545eb818a5b87301b64cb07d8299557342e5a6b7f871a70b` |
| 47 | `lemma` | [Ψ_odd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/odd-source-edition-2.md) | 343 | `result-track:d66d13ceeebb3a89ff8d4b03c9db54e17e4b855308ee531ffc8bf5dff1665450` |
| 48 | `lemma` | [Affine.CoordinateRing.mk_Ψ_sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/affine-coordinatering-mk-sq.md) | 354 | `result-track:2b3cd4257e63882ceae792a3b285b285ebaaa5c88f6879d1f32e35b2631225ef` |
| 49 | `def` | [Φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/anonymous-source-edition-4.md) | 365 | `declaration-track:c5c92be6874a3eaad0576b6d0aee0977db6a8a6a3f1b664becc71bd4a4837708` |
| 50 | `lemma` | [Φ_ofNat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/ofnat.md) | 371 | `result-track:18a212023a38e4ea9f27d8b8bd9324231400830cd3a6014e37e771c03565f527` |
| 51 | `lemma` | [Φ_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/zero-source-edition-2.md) | 379 | `result-track:6d6193c4abe2687f34c21bd25a2aeb5666466b6cba5c86488ea4dd24c69764d3` |
| 52 | `lemma` | [Φ_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/one-source-edition-4.md) | 383 | `result-track:ed178becd329388ba0ddfeef350fd4a42c16b7ffc64bdf4a7082c3673ba860d4` |
| 53 | `lemma` | [Φ_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/two-source-edition-4.md) | 387 | `result-track:c3233df4da2e1d078409effd6cc0e2ba872a2afd5a6b0e84e0285970876fc15d` |
| 54 | `lemma` | [Φ_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/three-source-edition-2.md) | 394 | `result-track:65fbc4056b94e30cb8d2a5542aa18b2816e37715dddaf6cc0eb4a3a11435f309` |
| 55 | `lemma` | [Φ_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/four-source-edition-2.md) | 399 | `result-track:5d31bb285b612f0be2abeb050067bf2261cf232cba2f2d62f2c4930e00c9b353` |
| 56 | `lemma` | [Φ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/neg-source-edition-4.md) | 406 | `result-track:ea9d7202985444f73f00453cc7a0bba85e72feaf16dddf45f59f5c68c82e4fce` |
| 57 | `def` | [ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/anonymous-source-edition-5.md) | 417 | `declaration-track:e60d63e0571c40c6fbca6c224dce5206edc8aae07b30e30c03327bb870c73ba0` |
| 58 | `lemma` | [ψ_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/zero-source-edition-4.md) | 423 | `result-track:f7f4f17b843a8a0a66c914853df22c5777c6042047f2acfa650fe4356e734418` |
| 59 | `lemma` | [ψ_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/one-source-edition-3.md) | 427 | `result-track:aee1b440e9e86d0c6c02f74b805e48370693a0e87f2d905015aee2f8e8bc33a3` |
| 60 | `lemma` | [ψ_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/two-source-edition-3.md) | 431 | `result-track:a8f77f7c0b4a800fff7b299807a875d78eba775b8fb4c8a3f6a17fbfc9734486` |
| 61 | `lemma` | [ψ_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/three.md) | 435 | `result-track:2f35c2bc88afe789e61c557aa96236d3c80877139f922a4f7ee7ed4e6ce19e3d` |
| 62 | `lemma` | [ψ_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/four-source-edition-3.md) | 439 | `result-track:96ccfb6dab21e50ea7dc4ac96d12ea2d824ee65ccdc9faf309d1c106850be636` |
| 63 | `lemma` | [ψ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/neg-source-edition-3.md) | 443 | `result-track:900ff116b91ddcf0b4063ae483ef7576b118722b7fb689f288fc34b839365424` |
| 64 | `lemma` | [ψ_even](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/even-source-edition-2.md) | 446 | `result-track:7b604a16b9682c9a1eff6eef5885cf69263682bc056424a641afdacbca3b3d2f` |
| 65 | `lemma` | [ψ_odd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/odd.md) | 452 | `result-track:2e7204483bdd192a1be860bd3e05cdd6342f200e8d8e6ba2ecef346b4c30a97b` |
| 66 | `lemma` | [Affine.CoordinateRing.mk_ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/affine-coordinatering-mk.md) | 458 | `result-track:8701f98c1e01b87398cda009411b234c390d9412780b199c320187896eebcd0f` |
| 67 | `def` | [φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/anonymous.md) | 468 | `declaration-track:686b7cc580add9e4eb529cb3dd10da56851d73d4c467c2e77ff8d580cd69ece6` |
| 68 | `lemma` | [φ_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/zero-source-edition-3.md) | 474 | `result-track:b64ba3b2a057bd5d80b1e71429de324ee531a2461080034df4d2ccc1de831ed7` |
| 69 | `lemma` | [φ_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/one-source-edition-2.md) | 478 | `result-track:ae15c47f21d239ea4ad326bce33407760c5ea04595b2911c66d9255445fd6d19` |
| 70 | `lemma` | [φ_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/two.md) | 482 | `result-track:392c0d69e19431138644dba9ce9106fd7a3880af411a48f71d762b66026f3e12` |
| 71 | `lemma` | [φ_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/three-source-edition-4.md) | 486 | `result-track:eab9f9dad4a532c86db7a76305634700326e2f96947e4c3e5a12b2232868b46c` |
| 72 | `lemma` | [φ_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/four.md) | 490 | `result-track:3681c24c178fe5906f5690e611886b2fe9d158fdb1ac8f75065a7f5092de1d98` |
| 73 | `lemma` | [φ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/neg.md) | 498 | `result-track:2e1b3d19b7df94d10bbdf9b1a401d8e410dfe864f4300726b771dad6781a5956` |
| 74 | `lemma` | [Affine.CoordinateRing.mk_φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/affine-coordinatering-mk-source-edition-2.md) | 502 | `result-track:f851ac54f958476c2d08f829aa9f593564de7f37a6fa225be06e5ca3c384a81f` |
| 75 | `lemma` | [map_ψ₂](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/map-source-edition-4.md) | 518 | `result-track:af1397cae4a67b12b3ca0957b3890ce878b754ccc21c40066490af8eeb43cd0c` |
| 76 | `lemma` | [map_Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/map-sq.md) | 522 | `result-track:4033de9b61748e8de4186044752249034cff2f46cbe902f53f61c6a6235e5a3c` |
| 77 | `lemma` | [map_Ψ₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/map-source-edition-5.md) | 526 | `result-track:ef747d35c3d2dee14a94f8b6b955d1cb5d7c3e4103eb93dc1d8babc4b562cc03` |
| 78 | `lemma` | [map_preΨ₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/map-pre-source-edition-2.md) | 530 | `result-track:1f903727cf07ac7eff4021879a8d8b55d37be55e420d940c8d2342655ac91cd8` |
| 79 | `lemma` | [map_preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/map-pre-source-edition-3.md) | 534 | `result-track:57674218f133980afbde98e01e1c6ac31c456148446d0205004030bed56ad834` |
| 80 | `lemma` | [map_preΨ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/map-pre.md) | 538 | `result-track:1c462bf9f86fbfa217cd57547dd0e9742b3abd88e8c9e90d84c0bb966a1f304e` |
| 81 | `lemma` | [map_ΨSq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/map-sq-source-edition-2.md) | 542 | `result-track:d2569691d1ad54381b45f34116e3f3734dee771124940d01ee39978f22c444c2` |
| 82 | `lemma` | [map_Ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/map-source-edition-6.md) | 546 | `result-track:fde2ef2aafdd9c0e8f9c702cc1e9ca55d16b438378862e1495801738ac88ed11` |
| 83 | `lemma` | [map_Φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/map-source-edition-3.md) | 551 | `result-track:9b90c3a9c9f7460a505ea39aa7e01831149f67d76a837e1222a7fccc80d22147` |
| 84 | `lemma` | [map_ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/map.md) | 556 | `result-track:0ce65cae30bc1a59d3f17855bf9d7501b8c01e4f3a2d64e6b732ab3a662276cc` |
| 85 | `lemma` | [map_φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/map-source-edition-2.md) | 561 | `result-track:78cd275380497094173d186e52340d4de0cdb68ce3dad0c9ebfe30c4404dc05f` |
| 86 | `lemma` | [baseChange_ψ₂](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/basechange-source-edition-5.md) | 573 | `result-track:a2124503ba656e1e66b2cf85184fc039d95b8199720d80bcbad89f903b8b0339` |
| 87 | `lemma` | [baseChange_Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/basechange-sq.md) | 576 | `result-track:3e3dc3a4c574aaa6c489c49ff9794405ccc820e5bf2a9bc78024f6d6e1e97214` |
| 88 | `lemma` | [baseChange_Ψ₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/basechange-source-edition-6.md) | 579 | `result-track:d5d29b42ba31ee218d9090243528be7bb49fde8391e085401f758cd4767830de` |
| 89 | `lemma` | [baseChange_preΨ₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/basechange-pre-source-edition-3.md) | 582 | `result-track:eb2f748ba7f71ab22657207641b0351bd79c8abe878224c92dd6cc79eceb90e5` |
| 90 | `lemma` | [baseChange_preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/basechange-pre.md) | 585 | `result-track:7dc12d436be53b912f5062d9c301024fa28a8795262a3c30948a97229681aefd` |
| 91 | `lemma` | [baseChange_preΨ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/basechange-pre-source-edition-2.md) | 588 | `result-track:c545e379b606cf6bf44f33a5cb2f5df29306fbcb57ddf1297c8f593b176ef697` |
| 92 | `lemma` | [baseChange_ΨSq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/basechange-sq-source-edition-2.md) | 591 | `result-track:58078cef5804b92998996a5385cb1820e05099e6653a8c3bcde26aa90c2932e9` |
| 93 | `lemma` | [baseChange_Ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/basechange-source-edition-2.md) | 594 | `result-track:7b380af269b72e73ef4370eab7edd35cac48ec8390056c10a2acf0e4f47f8dce` |
| 94 | `lemma` | [baseChange_Φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/basechange-source-edition-4.md) | 597 | `result-track:9d3ec7f29893ad34e50ccabc71b2353a2d602c4095c3f90f13a7d8be67d8e0c0` |
| 95 | `lemma` | [baseChange_ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/basechange-source-edition-3.md) | 600 | `result-track:7e72266ac804774ae363abecb6f119807c4de262a3c2388a2d5785f725962532` |
| 96 | `lemma` | [baseChange_φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasicNamespaced.lean/declarations/basechange.md) | 603 | `result-track:3a4e876da877e36fd9914014ec38b47fc2495e9dcfe01bd12ae4d3499fe35bdf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b1af7b31ef9075ff927b1eea4b64d8f1b4609143802f6176f61b9691b8b3354b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variantc67a1f16e723111b4424162705d06af4f0d9152a57509b19a1e8502870ec1eae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
