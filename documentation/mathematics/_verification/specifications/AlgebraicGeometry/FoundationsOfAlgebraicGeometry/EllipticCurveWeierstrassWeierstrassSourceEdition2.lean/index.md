# Verification target: Elliptic Curve Weierstrass Weierstrass Source Edition2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40299235e00e4015714277ec1638f05fd967a73b",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40299235e00e4015714277ec1638f05fd967a73b`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CubicDiscriminant` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/macro.md) | 65 | `declaration-track:d51d0d8222a1c5ab43c0d4f7a62d95f66c966998cb417afd2890eee38225d104` |
| 2 | `structure` | [WeierstrassCurve](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/weierstrasscurve.md) | 74 | `declaration-track:2a0d3ae4860fa4678a9f2b82ab2154e6f930324609a5ebdb0f29f4faf3d5935b` |
| 3 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/instance.md) | 88 | `declaration-track:7c3cf1c12ae97589bf9cf9c5e8f94652554ce45cd615b24fe3280f44985f5fea` |
| 4 | `def` | [b₂](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-source-edition-3.md) | 98 | `declaration-track:8e5057fa9b4d35b8343101dc6c1badda5ba10cc457d43f68fde0e357445a871b` |
| 5 | `def` | [b₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-source-edition-2.md) | 102 | `declaration-track:3076fae894dea2cb5316644dfb367116914905b9b79212d3e4d750b5111127f1` |
| 6 | `def` | [b₆](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-source-edition-4.md) | 106 | `declaration-track:c91c53f85ae30f67d1735148201cdf7bcbb558400c0d951d88da3ad11efa3bd8` |
| 7 | `def` | [b₈](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b.md) | 110 | `declaration-track:044b0b07bf063a7c17ca478eeb071082ca566efdcee5abf0187b6e5b5208961e` |
| 8 | `lemma` | [b_relation](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-relation.md) | 113 | `result-track:ebbdcd1542be4353f4decc189593bfe3127a1ae02d87a3a490a195065afb145e` |
| 9 | `def` | [c₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/c.md) | 118 | `declaration-track:4adfa386fed6c8599b0eda0dbe4d9a745356dcd06df6176676bf38f23aa6a8af` |
| 10 | `def` | [c₆](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/c-source-edition-2.md) | 122 | `declaration-track:5e8be29871622ff2acfca7df8805fdf28f4b88d25e4a7addefb54abbf4aef21f` |
| 11 | `def` | [Δ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/anonymous-source-edition-2.md) | 129 | `declaration-track:b3981227b935b654b03714d61db055258bb7e923d15a8c07f514b53d5d5a41d6` |
| 12 | `lemma` | [c_relation](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/c-relation.md) | 132 | `result-track:a6de52b0414180638b7a2fd5d56731c8da91a7f39951980f5ac640aa2cc2f842` |
| 13 | `lemma` | [b₂_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-of-char-two.md) | 140 | `result-track:1b9b66748bbf2b5c05393b58b0b2afd7f200b9ab22b165a1bbed087139f6eaab` |
| 14 | `lemma` | [b₄_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-of-char-two-source-edition-3.md) | 144 | `result-track:3e98e430d1e78e953bcd5be4d01c572c561d803be9e6eb96cf5d947c951b3477` |
| 15 | `lemma` | [b₆_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-of-char-two-source-edition-2.md) | 148 | `result-track:2be7fdaca3a204fc489d7615768d3abcb5add8f25e3581574da72cd38147ce1e` |
| 16 | `lemma` | [b₈_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-of-char-two-source-edition-4.md) | 152 | `result-track:acc0c4502b66ffd5e082ab0314116ef33c6d8797578b9d71b4e8333621ba1a2d` |
| 17 | `lemma` | [c₄_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/c-of-char-two.md) | 157 | `result-track:140b330ed0fb3792c885082fbade0f7dadeed8bbc05cf17939d894b6841172e5` |
| 18 | `lemma` | [c₆_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/c-of-char-two-source-edition-2.md) | 161 | `result-track:d05a37a0413f2a96eb61836d4d7fe4cef218d1f7f051d9cef088f00abffff4e5` |
| 19 | `lemma` | [Δ_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/of-char-two.md) | 165 | `result-track:3088cb82ffdd4ff0a5780177a28662637ae4ac30bba930bede3ee87e8aa72b16` |
| 20 | `lemma` | [b_relation_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-relation-of-char-two.md) | 169 | `result-track:3d017096975f3cab72c2f17a07122ced5525fd2050a236866a85bed60cce30cd` |
| 21 | `lemma` | [c_relation_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/c-relation-of-char-two.md) | 172 | `result-track:c063eb12d387e58413626f4b871c82ed4b3350f9b5c612d6e5982974ce1d5854` |
| 22 | `lemma` | [b₂_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-of-char-three-source-edition-4.md) | 181 | `result-track:ab7ee1eb513eab6f60f4e3e375d4536b73561407db225246e9033f325c90c38e` |
| 23 | `lemma` | [b₄_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-of-char-three-source-edition-2.md) | 185 | `result-track:3b874f5dde0510ca2436cb1280522947900c92d83c87b34e7056dba7aa62a34b` |
| 24 | `lemma` | [b₆_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-of-char-three.md) | 189 | `result-track:008610fccac9650358d90f75e030b905c4e5e6161e69531c7506d02ec2551224` |
| 25 | `lemma` | [b₈_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-of-char-three-source-edition-3.md) | 193 | `result-track:5a6e84c075b4644074c4e9cc417d1ed13f1b06695882e2ba02bac21c68b465ca` |
| 26 | `lemma` | [c₄_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/c-of-char-three-source-edition-2.md) | 198 | `result-track:e09207b8c836d4a5acfce3cc781aba9ab4a6a545cde7ba5b4ae15d33eb40a931` |
| 27 | `lemma` | [c₆_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/c-of-char-three.md) | 202 | `result-track:5110b7b691abe14cad80577bace38eaab13c97878f1e37253cfbe8755a5fee4a` |
| 28 | `lemma` | [Δ_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/of-char-three.md) | 206 | `result-track:5cfa59c200b3bfff85d627d01dbf943ba4c0c5f5166091000c072d353d92ad29` |
| 29 | `lemma` | [b_relation_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/b-relation-of-char-three.md) | 210 | `result-track:15d1e9b765b1c848d991cc8eef3fd84db2c463f7dc6e63294d8bfe0803462546` |
| 30 | `lemma` | [c_relation_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/c-relation-of-char-three.md) | 213 | `result-track:8ce7be14500a4505d4828575a8ee792152af6ea25c80e2a614abd5d8b8f15331` |
| 31 | `def` | [map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-source-edition-2.md) | 228 | `declaration-track:73e91e925f4f60fb15f8a823c238f6acd6056e0a754dfc795d1b6e9f854461b4` |
| 32 | `abbrev` | [baseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/basechange.md) | 233 | `declaration-track:ac3b577eed8bdcc528625ed74a84dc56e2bec99040cc68603216b5e3a1cfcd9d` |
| 33 | `lemma` | [map_b₂](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-b-source-edition-4.md) | 237 | `result-track:38949d3444330c2726962cf2088bcd35fb949e91d5bb905c11d78c22ba09cf4c` |
| 34 | `lemma` | [map_b₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-b-source-edition-2.md) | 242 | `result-track:1cbce33c04db4b091919cd6d4fe5206c34999f375e635656286b9697e85839bb` |
| 35 | `lemma` | [map_b₆](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-b-source-edition-3.md) | 247 | `result-track:263fff614a9774b91d00f6e49ae24933e7eee6e5fb3701a8b0c3df98c5c6f026` |
| 36 | `lemma` | [map_b₈](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-b.md) | 252 | `result-track:1a2634f0c05f78265556a41fa2c2958d9ca1c5149c20a79f8e1aac0db7e6c21a` |
| 37 | `lemma` | [map_c₄](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-c.md) | 257 | `result-track:81a7bc4552395f7414708e806973a4aebabde475c4f0b6100efd0debfcdde89d` |
| 38 | `lemma` | [map_c₆](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-c-source-edition-2.md) | 262 | `result-track:b9aed490abe6120e1ab65fde23145c0c2cb24e69d7ebd160be727e05ef6af9d7` |
| 39 | `lemma` | [map_Δ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-source-edition-3.md) | 267 | `result-track:d088a73f7c7dd1117ec91f228c1b8ec8ff541382e8aabaa5191b40836afa7b57` |
| 40 | `lemma` | [map_id](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-id.md) | 272 | `result-track:a3b26ae3839c8becf2ff767a07aada1810525e1142ba2638afad1ac1e595b73c` |
| 41 | `lemma` | [map_map](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-map.md) | 275 | `result-track:2aaeaa3e673d1913781a4f50e18b91333babde287d4b12c01eebd2d5e6bfd64c` |
| 42 | `lemma` | [map_baseChange](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-basechange.md) | 279 | `result-track:f97ec680370f279648929d32117d3815b14b18f73dd3cc90be7b9d991b88b7c4` |
| 43 | `lemma` | [map_injective](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-injective.md) | 284 | `result-track:880b8fe8c4c36be58b48e9719a514b4615c7732b8e742b8d1724150fcb72cdf7` |
| 44 | `def` | [twoTorsionPolynomial](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/twotorsionpolynomial.md) | 298 | `declaration-track:0b9967145829a05b4b4722990dfe6ed4d5b34635837685000650d9a62659496b` |
| 45 | `lemma` | [twoTorsionPolynomial_disc](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/twotorsionpolynomial-disc.md) | 301 | `result-track:953572feb7bdc01648dd2d7e32f067fb260b6636ba762ef0461f0126493b577a` |
| 46 | `lemma` | [twoTorsionPolynomial_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/twotorsionpolynomial-of-char-two.md) | 309 | `result-track:ef7f725fcf7c08eacf91146af13bef4503c338744624e738d0b04dcbbd186155` |
| 47 | `lemma` | [twoTorsionPolynomial_disc_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/twotorsionpolynomial-disc-of-char-two.md) | 315 | `result-track:a8d9c627a4c113363f07cb9635195801767819c9e0b50cc4c790cc84ca18b357` |
| 48 | `lemma` | [twoTorsionPolynomial_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/twotorsionpolynomial-of-char-three.md) | 324 | `result-track:134d78dc7afabd9088561d3afb09a5121a762c3c0eaca198e88866212afb9798` |
| 49 | `lemma` | [twoTorsionPolynomial_disc_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/twotorsionpolynomial-disc-of-char-three.md) | 330 | `result-track:f21a52de2d9003c263362ddae9de18df082e62fad54e21da9ea3b1ec45e98933` |
| 50 | `lemma` | [twoTorsionPolynomial_disc_isUnit](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/twotorsionpolynomial-disc-isunit.md) | 336 | `result-track:7b70c9605351a85bfddfb71cec1eb85571106482df54028e302b70e34d58375e` |
| 51 | `lemma` | [twoTorsionPolynomial_disc_ne_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/twotorsionpolynomial-disc-ne-zero.md) | 343 | `result-track:6dc72e33aae9a47e287971bf60711fef33d9c0b017b61da90285b8c11b9659b1` |
| 52 | `class` | [IsElliptic](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/iselliptic.md) | 356 | `declaration-track:2aed6bcccabb577b4b9f35afd8f030bd211bf09cbe8e88272d2668df558c770c` |
| 53 | `lemma` | [isUnit_Δ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/isunit.md) | 361 | `result-track:3bef12b96f21444187122dc0d802dd6085cb32d2559c21c120db437c68abbfb3` |
| 54 | `def` | [Δ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/anonymous.md) | 366 | `declaration-track:b0b4d6dd699a3449ca66bd3733b249f1f4a42a25393215a547909b546de13785` |
| 55 | `lemma` | [coe_Δ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/coe.md) | 372 | `result-track:537135b61c222240b333729891829eb2d1168170fed121eb6192394bc3d2a903` |
| 56 | `def` | [j](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/j.md) | 378 | `declaration-track:a2ea8ae6c2828a6190f3b2c86cd8673c1538a7e9646c6517b94e7db26a28605a` |
| 57 | `lemma` | [j_eq_zero_iff'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/j-eq-zero-iff.md) | 382 | `result-track:7868a9c9a5ee50438ebd6f63857c88d08a639460eb87f85e89f0d9780dfeb620` |
| 58 | `lemma` | [j_eq_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/j-eq-zero.md) | 385 | `result-track:38aeadc2fee6e7b0293a4d5abfebc9cf4bf3c69fa5e8d4fe3e9dc6b2b4a4bd56` |
| 59 | `lemma` | [j_eq_zero_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/j-eq-zero-iff-source-edition-2.md) | 388 | `result-track:863a03d237a3c46f7c20afdf362205943437629d0df1fdee7409d502dfb5f550` |
| 60 | `lemma` | [j_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/j-of-char-two.md) | 395 | `result-track:2386d190312a8b6ac877a648e20a93a7c0972032b716c8ca746faaa2b21baeab` |
| 61 | `lemma` | [j_eq_zero_iff_of_char_two'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/j-eq-zero-iff-of-char-two-source-edition-2.md) | 399 | `result-track:dbb779b63e2bf713f9bde02b4b6a98032fce1ba17ab33afe104663a2e186f539` |
| 62 | `lemma` | [j_eq_zero_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/j-eq-zero-of-char-two.md) | 402 | `result-track:9151d4dad628e6cde1e3e167184114be5bce7998e1ac978d24514d3a8e6ac09b` |
| 63 | `lemma` | [j_eq_zero_iff_of_char_two](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/j-eq-zero-iff-of-char-two.md) | 405 | `result-track:2babf9a2a119c28f01e4b2727aae2c5e45b9cc6d1f87469c334e4d8a60b46228` |
| 64 | `lemma` | [j_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/j-of-char-three.md) | 414 | `result-track:175c6311dbb0b9060ddfc977dd4993e17199594bb614626cbf0c07c552010ffc` |
| 65 | `lemma` | [j_eq_zero_iff_of_char_three'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/j-eq-zero-iff-of-char-three.md) | 418 | `result-track:2bc0483c6787e43d7bf5ba2e0d8aa428cdef27bbe77909e4fb575956466d3d99` |
| 66 | `lemma` | [j_eq_zero_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/j-eq-zero-of-char-three.md) | 421 | `result-track:6be30ba5645a4975534d4ea74412bc9977b7b220bca898f39a8a183f9b0143b1` |
| 67 | `lemma` | [j_eq_zero_iff_of_char_three](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/j-eq-zero-iff-of-char-three-source-edition-2.md) | 424 | `result-track:ec892de227cadefd3a6d29fde7f06713d4c68fe149b204a9f10aa45788092c0d` |
| 68 | `lemma` | [twoTorsionPolynomial_disc_ne_zero_of_isElliptic](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/twotorsionpolynomial-disc-ne-zero-of-iselliptic.md) | 431 | `result-track:5e583b70d48ef6af807d22817af56d45765ac29f0af1adf08e618b51e5076492` |
| 69 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/instance-source-edition-2.md) | 441 | `declaration-track:a6c6ffd86d86a6f5493c180cf6aa1adf1b14fefd4bc4f1a3c37746bbf9eb6b4e` |
| 70 | `lemma` | [coe_map_Δ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/coe-map.md) | 445 | `result-track:d83e42cb78d5de5b36bf101a839667e3bee6dffcd6e69bd67c37ee4ce69e5de5` |
| 71 | `lemma` | [map_Δ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map.md) | 450 | `result-track:0b766f618f1d09f2c177298146b494360ed4dc88a41fcf429512a768fe64fbb8` |
| 72 | `lemma` | [coe_inv_map_Δ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/coe-inv-map.md) | 455 | `result-track:8379294d22b86426bff43778c1ae4e5db3693872bf166e271e98018f787e0509` |
| 73 | `lemma` | [inv_map_Δ'](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/inv-map.md) | 459 | `result-track:5bf9a66a031c5a4f4e2fe90cfa7d88c34a05e508a8e8c7f0c147f3cba654320f` |
| 74 | `lemma` | [map_j](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/EllipticCurveWeierstrassWeierstrassSourceEdition2.lean/declarations/map-j.md) | 463 | `result-track:da34aefe34e337e312463d1066ed487051a579ad616d61a473cb8b4c82a634a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=277e690c447f3804dbd06a92258d4f92d243494d0323f851112820008a32fdde -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Weierstrass/Variant7a57ace769090f1638ae64dd2faefca334988a0c891b331e78d79058fc9233a8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
