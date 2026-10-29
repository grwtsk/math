# Verification target: Division Polynomial Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f46d90d21858ce3d44796d8d1924255ddf8c244",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7ae2f20e8af7b1192b5c873b654c73708d5d9b7221117883115f510060bfaf10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f46d90d21858ce3d44796d8d1924255ddf8c244`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7ae2f20e8af7b1192b5c873b654c73708d5d9b7221117883115f510060bfaf10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant7ae2f20e8af7b1192b5c873b654c73708d5d9b7221117883115f510060bfaf10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.EllipticDivisibilitySequence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/macro.md) | 95 | `declaration-track:8d51c710bf6bc4c300ea2da4fb6bf8a9cccd4cec14191fcc5b477b5d48f4fedb` |
| 2 | `def` | [ψ₂](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/anonymous.md) | 109 | `declaration-track:477b82ed8f79080e0a4fc0956ef47df0c3ade62a823dd71f5eb9e49c6d2c4369` |
| 3 | `def` | [Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq-source-edition-3.md) | 113 | `declaration-track:fb9606aebcbabaac85cf5e9e0346315ccfc1429f4de9dd1030c5e4f8d619920e` |
| 4 | `lemma` | [C_Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/c-sq.md) | 116 | `result-track:8155322393f05de3a08707d169dfa5d1fa17233331c30d2de54a7d33ac5c4eee` |
| 5 | `lemma` | [ψ₂_sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq-source-edition-2.md) | 121 | `result-track:3f7e463c55a68009ab9dbc3ede8b2cbf926f872252cc96af43e8958e3a9ce573` |
| 6 | `lemma` | [Affine.CoordinateRing.mk_ψ₂_sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/affine-coordinatering-mk-sq-source-edition-2.md) | 124 | `result-track:7fe55e69d0cd4947b79c6caf0b042df9fadd666ef655be9c0760f6c3f98b9fd5` |
| 7 | `lemma` | [Ψ₂Sq_eq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq-eq.md) | 128 | `result-track:b3abc1158fc4bc5384e48a82dc97176543bd9614a286d0277d9b8e843d67d26a` |
| 8 | `def` | [Ψ₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/anonymous-source-edition-2.md) | 138 | `declaration-track:66acea82b3ee33ad4c8466bb0e3c3e726f48ce9d6e8f7a429593f21a657e8d5f` |
| 9 | `def` | [preΨ₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre.md) | 143 | `declaration-track:04d7896b45bbf474eb6a5a535693a7e08d8efe5aa987ccd8480d32d0e2bcbd7a` |
| 10 | `def` | [preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-source-edition-3.md) | 149 | `declaration-track:eabf94b942c7fb870f25248d4b733e19fbbc9a90f64b57b3ac532cf652be4524` |
| 11 | `lemma` | [preΨ'_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-zero.md) | 153 | `result-track:d158674d86c38b23f901404f2322d1556780c064322d716a5c37b954ae5c23f5` |
| 12 | `lemma` | [preΨ'_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-one-source-edition-2.md) | 157 | `result-track:e44838cfbf6d8d89c429b0290dd0ecb71df980d828985645851e7ac0946371f1` |
| 13 | `lemma` | [preΨ'_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-two-source-edition-2.md) | 161 | `result-track:a614d78daf3a82b24e8b8f6456547f7da545a7f4db5ad0f1d966fce040557911` |
| 14 | `lemma` | [preΨ'_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-three-source-edition-2.md) | 165 | `result-track:d485556189a89060558dc6bfe556d9467fe5f9e7d4c33123dd25bf5e9e061abd` |
| 15 | `lemma` | [preΨ'_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-four-source-edition-2.md) | 169 | `result-track:ff7f8eb7e289886bda0d5aa09827598b89670bf026d665280325bbcf968e7189` |
| 16 | `lemma` | [preΨ'_even](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-even-source-edition-2.md) | 172 | `result-track:f822b47f46dffd20a8e45380695221ae844bf5255439ac20ff2804f0749266bc` |
| 17 | `lemma` | [preΨ'_odd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-odd-source-edition-2.md) | 177 | `result-track:eea39ecdbb02d0a61e8a1c4a4092aeca2ea2d8e209421e30dce492c452ce9033` |
| 18 | `def` | [preΨ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-source-edition-2.md) | 190 | `declaration-track:9078e6f8f2112c443874b4cfdf3a58fc712fd272b9d747a506ab6dda327a177f` |
| 19 | `lemma` | [preΨ_ofNat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-ofnat.md) | 194 | `result-track:68e30580f931a949ae26e925f4a109389eb69da00d2a82b3fce20a28b7c0dd0f` |
| 20 | `lemma` | [preΨ_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-zero-source-edition-2.md) | 198 | `result-track:d4d9977c6c58689f809d68ccd4b79b4ce27df6b26eedb0a7c040fb8f850cb495` |
| 21 | `lemma` | [preΨ_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-one.md) | 202 | `result-track:ae60187e06be4245baeafc5336b3c06707ffdc59c23a5dd6687aa3f40002391d` |
| 22 | `lemma` | [preΨ_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-two.md) | 206 | `result-track:390eb1177ea2ee04e53ae6cc15afeaf95cfce968fdc394f68e778655f4334b3d` |
| 23 | `lemma` | [preΨ_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-three.md) | 210 | `result-track:460ab34b89b7e7fc67ffd520f131a39d78f12ace17b3c4679b9c21183737851b` |
| 24 | `lemma` | [preΨ_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-four.md) | 214 | `result-track:d3f6f92ca584436de8621df27c3c687b236d76458cd4dd271662200e4ecef852` |
| 25 | `lemma` | [preΨ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-neg.md) | 218 | `result-track:0fbb4e909a4f09e3da00d847cdaac6645d740831cf25903a8af827ddceffefa1` |
| 26 | `lemma` | [preΨ_even](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-even.md) | 221 | `result-track:990c42b1e51084b64565ff49db6c4fb4050308632a92cf64e16d8d50b666460a` |
| 27 | `lemma` | [preΨ_odd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/pre-odd.md) | 228 | `result-track:2bef29e668a0e6d4c4862e258cf9e91e256eff77299a42606760890d738e3e81` |
| 28 | `def` | [ΨSq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq.md) | 242 | `declaration-track:25a6fb2845b871e4da37aa4dfb74acefec4a973435f5f95e69d5dff6ae705806` |
| 29 | `lemma` | [ΨSq_ofNat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq-ofnat.md) | 246 | `result-track:722f821a96e9a546ebc3fedf9203c9d75391f7aca6882e0f946cb21e450f5663` |
| 30 | `lemma` | [ΨSq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq-zero.md) | 250 | `result-track:27cc5f0320de36002226726b36c153bd50d1dfa1598f9a0bbd750ac5e94ee284` |
| 31 | `lemma` | [ΨSq_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq-one.md) | 254 | `result-track:380eb2428d3d8dd6b3382c7018474f9b022b4ee953de47208d503cc63628f03b` |
| 32 | `lemma` | [ΨSq_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq-two.md) | 258 | `result-track:ff4f8bb7bfbd53e8f56efe6309dfdf8d45e434ee6a05a9a7f37fcdd842fa913d` |
| 33 | `lemma` | [ΨSq_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq-three.md) | 262 | `result-track:0879e58ce61043df63c8965508ae66680f31a4c232836300a1daa43355a36f7a` |
| 34 | `lemma` | [ΨSq_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq-four.md) | 266 | `result-track:a58b27ce20afd8561627a0fd663d56718fe68e793b9f4c016b2ffd7bc59a6eb7` |
| 35 | `lemma` | [ΨSq_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq-neg.md) | 270 | `result-track:b19176254c4e7a68e37927df0fde8171a8fe2bb91e297515c99336ab44c85a81` |
| 36 | `lemma` | [ΨSq_even](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq-even.md) | 273 | `result-track:4f1940956d15a50355f7361a3c47e0133f54c085630b918d395ad31a819f9eeb` |
| 37 | `lemma` | [ΨSq_odd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/sq-odd.md) | 280 | `result-track:c161058882f8804dcd72f41e5f985a8117a71fd4e2d6a25b5840fc2f315fd0cb` |
| 38 | `def` | [Ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/anonymous-source-edition-6.md) | 294 | `declaration-track:e57d79c23b68f5e874d03376a6c6e54ef58c5375af27e632a46aa2c3b3f19c19` |
| 39 | `lemma` | [Ψ_ofNat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/ofnat-source-edition-2.md) | 300 | `result-track:5e373ac333785f73194beec7d1f36ba1370b8022119d861b8558a45832ca510d` |
| 40 | `lemma` | [Ψ_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/zero-source-edition-4.md) | 304 | `result-track:f7481ed8177a53dc68a57c41cc41ad4d2d40f6b2301c53c2d639bf0a1c208b2f` |
| 41 | `lemma` | [Ψ_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/one.md) | 308 | `result-track:4e12aa247c5c2273a8ad0876f9a03837ed7f1bfc1e38f1d239793ebe7b4c46b4` |
| 42 | `lemma` | [Ψ_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/two.md) | 312 | `result-track:168903c786c43c59d9106cddfb88b67438f900dc162e734a63e6844a82ff28d9` |
| 43 | `lemma` | [Ψ_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/three-source-edition-4.md) | 316 | `result-track:cd53c56e9c1dfb868e1ff0af9171715405bcb78131870d20ca9a25436291315c` |
| 44 | `lemma` | [Ψ_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/four-source-edition-4.md) | 320 | `result-track:ca4dc87058f376b8b68b5d84d8d5cd623fee9896426f7675228cd6ca24a6bda1` |
| 45 | `lemma` | [Ψ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/neg-source-edition-3.md) | 324 | `result-track:9f27a9b7b9c1aa8f4bd7d758aee79f0ad937a1d56594f69777a452949b35e721` |
| 46 | `lemma` | [Ψ_even](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/even.md) | 327 | `result-track:6c480647c8d4d60312c33bd213adf886c3bd36c2de45b12df91372aa4465850a` |
| 47 | `lemma` | [Ψ_odd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/odd.md) | 335 | `result-track:84afa2390ec1c9fabc65eee271e5ae09dbf088a5d2717a42ee01604f2a5922ff` |
| 48 | `lemma` | [Affine.CoordinateRing.mk_Ψ_sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/affine-coordinatering-mk-sq.md) | 346 | `result-track:29da718487177df9b5c5cd2dc1b1a9ed9b441c68ced6d73b4c8bf1295da02a32` |
| 49 | `def` | [Φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/anonymous-source-edition-4.md) | 357 | `declaration-track:b4f40784e7df1ea426f05e5ed177437903b63eccdab75086714ec023351b1268` |
| 50 | `lemma` | [Φ_ofNat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/ofnat.md) | 363 | `result-track:15b15deae073148ba43865007512049653ccdff7226870849fb54e3a1c6d9b75` |
| 51 | `lemma` | [Φ_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/zero.md) | 371 | `result-track:23af08b83b0db8b34d062d08d985d3ef591ef3bd9fb07004a8ae81b7da5ea294` |
| 52 | `lemma` | [Φ_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/one-source-edition-4.md) | 375 | `result-track:d765f95b9b4e9943bad7010c265c0254b5f1c1d50e4110af8de8ddce9310463b` |
| 53 | `lemma` | [Φ_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/two-source-edition-3.md) | 379 | `result-track:d503d3f4e6df3c8756bea680f7def1f8d40f95adf79b64e2adf124af13658b4f` |
| 54 | `lemma` | [Φ_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/three-source-edition-2.md) | 386 | `result-track:82cfcae67556127087b678b61c9ecec4d8809141260ba2a401d210c9e8a2bedb` |
| 55 | `lemma` | [Φ_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/four-source-edition-3.md) | 391 | `result-track:bf6d282715b0daec40ef45fa82136ef027299167cf318290ee783e67f86abeff` |
| 56 | `lemma` | [Φ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/neg.md) | 398 | `result-track:7374d6236064f064a170f4320a1ba9e7a3f17e9ec7fc8678f0ebfe4ff6fe8839` |
| 57 | `def` | [ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/anonymous-source-edition-5.md) | 409 | `declaration-track:d05173f1d043a7ef24c69345693f99807ed05e020a2013827a63c5233c9622f0` |
| 58 | `lemma` | [ψ_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/zero-source-edition-3.md) | 415 | `result-track:db74ff7ea06c58a87520421e99294e615a16f3fa64f686f118937c534bc46dfc` |
| 59 | `lemma` | [ψ_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/one-source-edition-3.md) | 419 | `result-track:ce957629ca881be3bb8ca24bae50c398563065372d9f939c912d9f13ed64ed38` |
| 60 | `lemma` | [ψ_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/two-source-edition-2.md) | 423 | `result-track:55dd7b8fbb25aa8b68d6c90590cc1a5916806c01f5e0ec5d59bc540863f6d934` |
| 61 | `lemma` | [ψ_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/three.md) | 427 | `result-track:46efc9123ce7bf735777d66b04dc85b038d28c3bd083a26743bdaee555708dfd` |
| 62 | `lemma` | [ψ_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/four.md) | 431 | `result-track:3f70cdcfe765b16bbae664813a914022761082f6f470b49585037c00721414d5` |
| 63 | `lemma` | [ψ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/neg-source-edition-2.md) | 435 | `result-track:78245bf0cd0507042ebac429137a9f3a75b741b30ae2a90377450883c8f0537e` |
| 64 | `lemma` | [ψ_even](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/even-source-edition-2.md) | 438 | `result-track:ec1f96c3f17b5d73cdf18ec8d0a80c29980d3604bd72cecd9b8480b27f121334` |
| 65 | `lemma` | [ψ_odd](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/odd-source-edition-2.md) | 444 | `result-track:c68b98edd8bea02bc57ad43415b3f60a05f0ff3284121172178bd9f224c2e5a3` |
| 66 | `lemma` | [Affine.CoordinateRing.mk_ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/affine-coordinatering-mk-source-edition-2.md) | 450 | `result-track:c5f50a36b8dc833ac816e69acc8aa03c2f87dbb69b19e4cc95c8f1476f741551` |
| 67 | `def` | [φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/anonymous-source-edition-3.md) | 460 | `declaration-track:9e9e1a8e67e67a4e55b2ad6852de5b638b7e5022e388edcc09dd010a7a90c793` |
| 68 | `lemma` | [φ_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/zero-source-edition-2.md) | 466 | `result-track:9161e129b407ddc0c74bd066ce85581d6cc23b1033eda14e4aff320558c5d3ed` |
| 69 | `lemma` | [φ_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/one-source-edition-2.md) | 470 | `result-track:86cc595137bb81868950466b3cfd791ebf7167125962e14ca728e7e54ec7a451` |
| 70 | `lemma` | [φ_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/two-source-edition-4.md) | 474 | `result-track:da1742b681fabcc72c4051a1715a4b0a283f70a983c77a8a0173088f3575f778` |
| 71 | `lemma` | [φ_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/three-source-edition-3.md) | 478 | `result-track:8f815cfbea212c7a047dcf5d999e59a77acc48383df13a5c93067fb23dcfece1` |
| 72 | `lemma` | [φ_four](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/four-source-edition-2.md) | 482 | `result-track:a95fba4756eed9d4ba8c71595c046be362876ca986fd23e522a49b6e3fdeb1ab` |
| 73 | `lemma` | [φ_neg](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/neg-source-edition-4.md) | 490 | `result-track:fefc0728f92ef45ba052e1926a30bb651a2e3e8b839a3193cfaa44d209e4cb6e` |
| 74 | `lemma` | [Affine.CoordinateRing.mk_φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/affine-coordinatering-mk.md) | 494 | `result-track:929235621a2f56b25fc7c1926cba4b6d91f76963a7a9407863f4a0636a8f81bf` |
| 75 | `lemma` | [map_ψ₂](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/map-source-edition-6.md) | 510 | `result-track:f88a83fd0ad011c2432d5ce6c7fa5fc2e95a39968972a4bd3b4270c5442ded2f` |
| 76 | `lemma` | [map_Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/map-sq.md) | 514 | `result-track:87df96c7b9e282022074a530bfcd5e1ce02e01168ae328a8186db3bafc7be0ca` |
| 77 | `lemma` | [map_Ψ₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/map-source-edition-2.md) | 518 | `result-track:4664d102100b0c54d8e522276fafbbbbaf9c5afee9120a1a26d9430d4ddf4710` |
| 78 | `lemma` | [map_preΨ₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/map-pre-source-edition-2.md) | 522 | `result-track:a93c5bd249baf9be969e2cc2a117a176d266408f04d766bee4a64aa5aa0db215` |
| 79 | `lemma` | [map_preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/map-pre-source-edition-3.md) | 526 | `result-track:e9ccafbd028110481b017fe9c55a72ae3a4da315232d0d23baf150bd03a06dc7` |
| 80 | `lemma` | [map_preΨ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/map-pre.md) | 530 | `result-track:833c41065216cf8442257cd4700c56f47e2885018758c775b29b7afbfc18c68b` |
| 81 | `lemma` | [map_ΨSq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/map-sq-source-edition-2.md) | 534 | `result-track:f53c09175b4f71a8557fa643fe1d75d70c8461bf44786efaf85c509552d1ce1b` |
| 82 | `lemma` | [map_Ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/map-source-edition-3.md) | 538 | `result-track:49769793bddcf63d622688258f2854618491e977220c1804a42af46b0e18efab` |
| 83 | `lemma` | [map_Φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/map-source-edition-4.md) | 543 | `result-track:acf01d1e2707a2b8b2657c8776951c8173adb2444509f84257cb0d6c5e0275af` |
| 84 | `lemma` | [map_ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/map-source-edition-5.md) | 548 | `result-track:f189200f7112a281abee083e1901ad797c424d67556d1c2e65ffbc6bccb8954e` |
| 85 | `lemma` | [map_φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/map.md) | 553 | `result-track:43a680aeeca5ea2c7d44c7dcf5eef20ef89f401eb2504bfabca7bf6fdf05d7e1` |
| 86 | `lemma` | [baseChange_ψ₂](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/basechange-source-edition-4.md) | 565 | `result-track:77c603e1a74781002f2eb9050c5ee13abe5910ae15eab684524c646a82e586f5` |
| 87 | `lemma` | [baseChange_Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/basechange-sq.md) | 568 | `result-track:0e3fe1fc29b49449a0bbc419e47a186d6ba5aa1cb82c73b405c2bc890a496b05` |
| 88 | `lemma` | [baseChange_Ψ₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/basechange-source-edition-5.md) | 571 | `result-track:eb768f76f126ea460b9c67ddd3244333154daad9152b6c04a418f947b2815c23` |
| 89 | `lemma` | [baseChange_preΨ₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/basechange-pre-source-edition-3.md) | 574 | `result-track:77ad80eee5f6b09256f0c09016a1cad434328daa9ded348bf507a8149b217072` |
| 90 | `lemma` | [baseChange_preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/basechange-pre-source-edition-2.md) | 577 | `result-track:48c3b7abf54cfd30e3be137156e18e25caa9738d3fb39815e14e7250978363cd` |
| 91 | `lemma` | [baseChange_preΨ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/basechange-pre.md) | 580 | `result-track:3a9dde8058239cee684d417066a508734323f53cc8ecdfc36663f0793e0de2d0` |
| 92 | `lemma` | [baseChange_ΨSq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/basechange-sq-source-edition-2.md) | 583 | `result-track:40389cd7518b720d98e05488a4c6e4f5bc020a847d86efc49f6bca2f0d7f2f50` |
| 93 | `lemma` | [baseChange_Ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/basechange-source-edition-2.md) | 586 | `result-track:1d2a9cbbc8a2ad8cff9c105514a9dde30971160712d339b13c9cb29fc62bf5b6` |
| 94 | `lemma` | [baseChange_Φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/basechange-source-edition-3.md) | 589 | `result-track:43dafe38c55f75ea4ec44d3e4c991512863b0f49b6761b4eb32c7939787f5559` |
| 95 | `lemma` | [baseChange_ψ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/basechange.md) | 592 | `result-track:1374050f497afff2304b91084ae0b8db31dde08cb1edadea1b568678be43c60d` |
| 96 | `lemma` | [baseChange_φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialBasic.lean/declarations/basechange-source-edition-6.md) | 595 | `result-track:f40dfbf81c553cacdc9b92e902b10a8242bd39052307e888fcfde8596c4ee438` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=300d2a277c72e62aaf458af951385ffec974717b29c63d7abe1c229732312f0a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant7ae2f20e8af7b1192b5c873b654c73708d5d9b7221117883115f510060bfaf10.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Basic/Variant7ae2f20e8af7b1192b5c873b654c73708d5d9b7221117883115f510060bfaf10.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
