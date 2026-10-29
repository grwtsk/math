# Verification target: Division Polynomial Degree Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef6f80b8b8727984ae25288b9ad91c40d5c13950",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef6f80b8b8727984ae25288b9ad91c40d5c13950`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.EllipticCurve.DivisionPolynomial.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ComputeDegree` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [natDegree_Ψ₂Sq_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-sq-le-source-edition-2.md) | 69 | `result-track:d090e62251f2b2e8e3507a624aedc4ba33b91dd0ef7bc89015de857fb6a5a7da` |
| 2 | `lemma` | [coeff_Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-sq-source-edition-2.md) | 74 | `result-track:f77ccf3eed282e989d2a47bb6a483ffb73d971bb8c7c15990d1d043f9a3091c5` |
| 3 | `lemma` | [coeff_Ψ₂Sq_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-sq-ne-zero-source-edition-2.md) | 78 | `result-track:a6d184755c92a335298a4869a95251c7a1343ab0ab565cd71ce23113757098e5` |
| 4 | `lemma` | [natDegree_Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-sq.md) | 82 | `result-track:8d1e8a827bc8c555011e5b150a0771036368a7a4b515e89a010c1ff5412e2d0a` |
| 5 | `lemma` | [natDegree_Ψ₂Sq_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-sq-pos.md) | 85 | `result-track:154a347c05d70c4e8cb7a3528c6aacccff9012aa70fa3a9c99e331a98229cdf1` |
| 6 | `lemma` | [leadingCoeff_Ψ₂Sq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/leadingcoeff-sq.md) | 89 | `result-track:136f8637d49de2dfa6ddc13431d8c8cfaf5445da7e8fdec46f4e21adf186323f` |
| 7 | `lemma` | [Ψ₂Sq_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/sq-ne-zero-source-edition-2.md) | 92 | `result-track:e51dbb2cb279485031316bad93535ae352187c946a1ba62cf2624348293f50c8` |
| 8 | `lemma` | [natDegree_Ψ₃_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-le.md) | 99 | `result-track:d2efcbf8ed46e924f06cebe8eae0c7d85dfa821fe1126e03c7283d97468b412d` |
| 9 | `lemma` | [coeff_Ψ₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-source-edition-2.md) | 104 | `result-track:c771647140c23e7efba61a868212aa47ab769ed942c7fb66643686d86f1bcef8` |
| 10 | `lemma` | [coeff_Ψ₃_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-ne-zero-source-edition-2.md) | 108 | `result-track:79ffbb66587585a31a5f092f59cbd568f42dd4428932164d15c6b0e6b422dc48` |
| 11 | `lemma` | [natDegree_Ψ₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree.md) | 112 | `result-track:adc8c8f095c90acd57bc934a9508e30c87296edc6a69881c99f6dcc599fd811b` |
| 12 | `lemma` | [natDegree_Ψ₃_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-pos-source-edition-2.md) | 115 | `result-track:aeae1f8282831582ee5f560ef36222625f603fddc746a575ea65ffa0b9ebc3b1` |
| 13 | `lemma` | [leadingCoeff_Ψ₃](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/leadingcoeff-source-edition-2.md) | 119 | `result-track:f105444a4137bc95cf1c3a38396948a07b1835544cb406f235d6717b92b36f74` |
| 14 | `lemma` | [Ψ₃_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/ne-zero-source-edition-2.md) | 122 | `result-track:e8a55147469df55f00eaf898a50246d7190cb02c0fdd62b21de1692634c51b8b` |
| 15 | `lemma` | [natDegree_preΨ₄_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-pre-le-source-edition-2.md) | 129 | `result-track:c7e2a877bb86a3580bd8127f65b1a8c754dfe7a7a981e6d2c0b89adf0878b7b9` |
| 16 | `lemma` | [coeff_preΨ₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-pre-source-edition-2.md) | 134 | `result-track:a0b45c36134574691a374f43f14322904b6867b2a1e5232d018b62bd3261af86` |
| 17 | `lemma` | [coeff_preΨ₄_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-pre-ne-zero-source-edition-2.md) | 138 | `result-track:9d520cc70a6830ecef494b4d6228ac30b022997bb64944238c0c48189f016b69` |
| 18 | `lemma` | [natDegree_preΨ₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-pre-source-edition-2.md) | 142 | `result-track:74f4937524112691f2f4e7b07d0eb144753c10ab0226052f0054efdbd1fddac1` |
| 19 | `lemma` | [natDegree_preΨ₄_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-pre-pos.md) | 145 | `result-track:2d48704955335300655b65aa2673414b4a674ae743dfcc9fe37b4fd9bb5b1ebe` |
| 20 | `lemma` | [leadingCoeff_preΨ₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/leadingcoeff-pre-source-edition-2.md) | 149 | `result-track:6a4ff5cf64acfd07c61994f51b77c38acaeb4d58b98c2769dd4f72d08e6fdadf` |
| 21 | `lemma` | [preΨ₄_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/pre-ne-zero-source-edition-2.md) | 152 | `result-track:2c573eb795cc71668dd63a45a462cd205359d992548f477ab1b9ec3e3fb6a9ed` |
| 22 | `def` | [expDegree](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/expdegree.md) | 159 | `declaration-track:e21050aebe603ec307db81bf072bcfdb1af59622c17473aaaacc5d9e92255d89` |
| 23 | `lemma` | [expDegree_cast](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/expdegree-cast.md) | 162 | `result-track:1d8dc837bb8e97508266ee7439bf902d68b265ac6e8fea2d2ca51e3249683b7a` |
| 24 | `lemma` | [expDegree_rec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/expdegree-rec.md) | 174 | `result-track:40507569e2977734c2ef8874ec3f5cc1b6486aeebd8cf746a25d19d6f455c978` |
| 25 | `def` | [expCoeff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/expcoeff.md) | 187 | `declaration-track:591ed211d4d6d2ffc5257a6fcf63e0bd6e359f52dcbb4d4d773e6cd15afd44f6` |
| 26 | `lemma` | [expCoeff_cast](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/expcoeff-cast.md) | 190 | `result-track:dd142fba9000bd2c401b9011e95e13e52aebb01944f80ce0ad7250f41d3cf6c7` |
| 27 | `lemma` | [expCoeff_rec](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/expcoeff-rec.md) | 193 | `result-track:7d5ba28fcab7b96d8c89752d1d0fa377a73d15bb09bdc26f764fe1a6369e5c3f` |
| 28 | `lemma` | [natDegree_coeff_preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-coeff-pre.md) | 204 | `result-track:e2eb62d6beb7a66f7825d69c7669c27951b91257c1c63fca50eab572d96c3187` |
| 29 | `lemma` | [natDegree_preΨ'_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-pre-le-source-edition-3.md) | 237 | `result-track:d7815fedcfc98f8c14715b87a08cf68dfc68fdb44182527e1ce976ac57ec5698` |
| 30 | `lemma` | [coeff_preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-pre-source-edition-3.md) | 241 | `result-track:c2e4e37e626c82e073c4378bd7d640a309e8400ddae6365851f78032f013774c` |
| 31 | `lemma` | [coeff_preΨ'_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-pre-ne-zero.md) | 246 | `result-track:9522dc095297fe5794a39e84a8135d549e5dae17da1f66014c52f9e359855a96` |
| 32 | `lemma` | [natDegree_preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-pre-source-edition-3.md) | 254 | `result-track:b0702270394bd7ad352b489fb567bc54a30a5618a3f34bb021f69f9d2cead8e3` |
| 33 | `lemma` | [natDegree_preΨ'_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-pre-pos-source-edition-2.md) | 258 | `result-track:59f317a81bac03144e1b8cdb95385edebe21f412139923a1b70128e4df9ccb66` |
| 34 | `lemma` | [leadingCoeff_preΨ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/leadingcoeff-pre-source-edition-3.md) | 263 | `result-track:d0c144110d32ceced2d8c3daf781e28890164bad379f161c92e3f7da14624ca0` |
| 35 | `lemma` | [preΨ'_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/pre-ne-zero-source-edition-3.md) | 267 | `result-track:3fab74d33492322effdaaaf1606638fa6fc4ef297022e426ee957a4433ec2e31` |
| 36 | `lemma` | [natDegree_preΨ_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-pre-le.md) | 276 | `result-track:8ccbfa071633316a887dee1a3f20f8025ad04fc82f216ec146f1286de732eda1` |
| 37 | `lemma` | [coeff_preΨ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-pre.md) | 283 | `result-track:9700735c078e1290ee6ae7b9e0d00e27e774106aa3eb0b2fc1246d119a445543` |
| 38 | `lemma` | [coeff_preΨ_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-pre-ne-zero-source-edition-3.md) | 293 | `result-track:fa0ee58fe3007495751153f88f40f2177d0f0781c8512ec00a00ffdf38a881ee` |
| 39 | `lemma` | [natDegree_preΨ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-pre.md) | 302 | `result-track:0341c2face668fcdfce8556d6a0da8de5fea97206b5c0942bb8f33b00fc3fdb3` |
| 40 | `lemma` | [natDegree_preΨ_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-pre-pos-source-edition-3.md) | 306 | `result-track:db1d47a96a40dad537fc087171957f199bfdd0290a99ac4f233f73a5fee90c5a` |
| 41 | `lemma` | [leadingCoeff_preΨ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/leadingcoeff-pre.md) | 314 | `result-track:0f41524a036aaffd246868d7588ad64eac5f8f2eabb57afe38fb3c33f558e857` |
| 42 | `lemma` | [preΨ_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/pre-ne-zero.md) | 318 | `result-track:0a10bbf3dde8c579a4e465dc976c981c9d347a4909eaec1646c3f6d93af916b5` |
| 43 | `lemma` | [natDegree_coeff_ΨSq_ofNat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-coeff-sq-ofnat.md) | 328 | `result-track:03318716801400717c118db82fce703e907b3f4083fb0b00d0dd0c728748b644` |
| 44 | `lemma` | [natDegree_ΨSq_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-sq-le.md) | 349 | `result-track:a33be0b3ce9094cafd6da29ca53ee2bb75277cb40f648554983f0cc325d390a2` |
| 45 | `lemma` | [coeff_ΨSq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-sq.md) | 355 | `result-track:da09ee50df623f81858b0b67858980c28b68e254b716e700c10c15e6b6630b36` |
| 46 | `lemma` | [coeff_ΨSq_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-sq-ne-zero.md) | 360 | `result-track:166efc1f9d3465431d5ad5c25dfb231433c34b1a302cc4f4d8a5d45c8ac717f6` |
| 47 | `lemma` | [natDegree_ΨSq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-sq-source-edition-2.md) | 365 | `result-track:8fe6c401e8117d25e71ca6dbbdddd333c200044c16a50b2dc0f5acd7952fe8e3` |
| 48 | `lemma` | [natDegree_ΨSq_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-sq-pos-source-edition-2.md) | 369 | `result-track:db6bb856f52931b3c7f8bf8574c205f4bc63f31ccd41655c6b643758fc9afb7e` |
| 49 | `lemma` | [leadingCoeff_ΨSq](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/leadingcoeff-sq-source-edition-2.md) | 374 | `result-track:c91369e19a5a5646af7abd5a3caf65a0fbf3c77215511dc657976e045897b7be` |
| 50 | `lemma` | [ΨSq_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/sq-ne-zero.md) | 378 | `result-track:151ce52b33ab34014b63f1e8f8ace18fe0f6a9b04b168fbe3deb4edd7187c0d2` |
| 51 | `lemma` | [natDegree_coeff_Φ_ofNat](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-coeff-ofnat.md) | 392 | `result-track:11218173fc0d0960d66bec15a38f5c1d329b17aa23485e97fe729ea67cd5a71c` |
| 52 | `lemma` | [natDegree_Φ_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-le-source-edition-2.md) | 424 | `result-track:ed4e7168e1c521278091a07be84cd16f80b76ddbd80cb3b7cc27ec3321d1bb03` |
| 53 | `lemma` | [coeff_Φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff.md) | 430 | `result-track:02237a354da03ef420451d5c2d7459fa6882fcb58f7ac6ad4e6ee94699e7af41` |
| 54 | `lemma` | [coeff_Φ_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/coeff-ne-zero.md) | 435 | `result-track:514fd02f343a9b27d4bac624b47a2a372e16fc86f89bf6e97e8d4acc59546437` |
| 55 | `lemma` | [natDegree_Φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-source-edition-2.md) | 439 | `result-track:dda37db70d01b7c6fe9a268f69df1e56b981c8dbbc322d711cfa55fd7fa11744` |
| 56 | `lemma` | [natDegree_Φ_pos](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/natdegree-pos.md) | 442 | `result-track:68820a446399f89223cf72f7aec3fdca98f05e1a7b331dee6f952cb61a9c520c` |
| 57 | `lemma` | [leadingCoeff_Φ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/leadingcoeff.md) | 446 | `result-track:6c8f085ee877d4cd9e68fb82c0e8a1dbbf99f2a5198328887a1b2b874e7def5b` |
| 58 | `lemma` | [Φ_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/DivisionPolynomialDegreeNamespaced.lean/declarations/ne-zero.md) | 449 | `result-track:600764ff3ee8c8a51fc5dca2bf8091b125759e5268a0c488d47de35424f6ed94` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1df8ad2512e847d35fa5c873429de4c0c101bcf5a0a38d77c13c804784bccb7d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean","GRWTSK/_verification/specifications/Algebra/CommutativeAlgebra/Degree/Variantff64b080da1a828c0dd520b00f0d703133531d2f34fee709a12728f12d2f0de9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
