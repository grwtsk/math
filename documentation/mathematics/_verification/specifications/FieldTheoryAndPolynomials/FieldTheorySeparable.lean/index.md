# Verification target: Field Theory Separable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d6597af408428e0c64eaaeafc226086b1b7ec8aa",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/index.md) · [Full source](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d6597af408428e0c64eaaeafc226086b1b7ec8aa`.

Source path: `GRWTSK/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.Expand` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Splits` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Squarefree.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.IntermediateField.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.FieldTheory.Minpoly.Field` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Content` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerBasis` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Separable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable.md) | 45 | `declaration-track:f08d7eba7d9e437195df944ab840024b2aa534b7a3c9307c0051a2100fd99174` |
| 2 | `theorem` | [separable_def](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-def.md) | 48 | `result-track:5e0826db8608b7b9bcfec356eee162f261bb3dc454f409afc82e549907226923` |
| 3 | `theorem` | [separable_def'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-def-source-edition-2.md) | 51 | `result-track:d25307a924f055337ac19a00eb314527662f7c3c6f28a26c9dcec9386ea090a9` |
| 4 | `theorem` | [not_separable_zero](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/not-separable-zero.md) | 54 | `result-track:041c8e239da2e7b97fb634942606ebe5066eac50f22465727af55bb12e232285` |
| 5 | `theorem` | [Separable.ne_zero](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-ne-zero.md) | 58 | `result-track:6bace0e0c7cea27d655cbb286e632af2a46567b7235f8fd110f0322c4ac235d1` |
| 6 | `theorem` | [separable_one](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-one.md) | 62 | `result-track:8695410fee951f6c1ce4a3399db3722dafee60cad0c89c82b3d981e759c978d5` |
| 7 | `theorem` | [separable_of_subsingleton](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-of-subsingleton.md) | 66 | `result-track:e8ce2f329afbff7cd09b6415f2a23a5d0f7980cb17de04ee24621db31a8e813a` |
| 8 | `theorem` | [separable_X_add_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-x-add-c.md) | 69 | `result-track:eec50d658791e093e01ceb78527f4ec3e14da71e2064839a92771f8d8ac07662` |
| 9 | `theorem` | [separable_X](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-x.md) | 73 | `result-track:f919e514237937ef152a836caeacd84cc6315f7d2f9d4dc6d270b64b82c4b7bd` |
| 10 | `theorem` | [separable_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-c.md) | 77 | `result-track:6cfa9cdb9b4c51df2d2abb99f5f952f2f1e99472ab5fc2c2c34d89d17b9771d8` |
| 11 | `theorem` | [Separable.of_mul_left](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-of-mul-left.md) | 80 | `result-track:e8b68b5ec5b4cc54ce6ddeada6579182df1d8a3be88653a9e849e1cd0990407e` |
| 12 | `theorem` | [Separable.of_mul_right](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-of-mul-right.md) | 84 | `result-track:b2aa3f0c96ee502724a2ab67e651d8c9943d75d1fe7550ab3fe3c9e62213a60b` |
| 13 | `theorem` | [Separable.of_dvd](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-of-dvd.md) | 88 | `result-track:506af6e1800b821a5b58d69410d88b957ad7c688a42443dc5086fb3064fc3fc3` |
| 14 | `theorem` | [separable_gcd_left](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-gcd-left.md) | 92 | `result-track:c4643b218b42dd2fb5f747416c70e601a4f115c61c6e0e46d59e79bf4ed15690` |
| 15 | `theorem` | [separable_gcd_right](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-gcd-right.md) | 97 | `result-track:e9e6794dcc6fb1fc437782bcc338dd91b11dae0026e201a64446826db99ce233` |
| 16 | `theorem` | [Separable.isCoprime](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-iscoprime.md) | 102 | `result-track:fb6f0736f4fccddea853e28d28aa155b972b94047043942be008b0fe73333e86` |
| 17 | `theorem` | [Separable.of_pow'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-of-pow.md) | 106 | `result-track:b254089d14439864252bb8349ab4d44b4e2628526bca5315c28a2dcb23a03910` |
| 18 | `theorem` | [Separable.of_pow](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-of-pow-source-edition-2.md) | 114 | `result-track:dbe1dde5179d8079d4aa46a5d9848634d5d7a86ee8014a250915e0d7ae3d239e` |
| 19 | `theorem` | [Separable.map](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-map-source-edition-2.md) | 118 | `result-track:14b6efaa6654ba1589e01effd999c11cb5031d2370bde3df711fc443b6135aa3` |
| 20 | `theorem` | [_root_.Associated.separable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/root-associated-separable.md) | 124 | `result-track:983ded7a61f01d059434da3e563f87e74d3b76cadfb150d13eb9ebc0549112b0` |
| 21 | `theorem` | [_root_.Associated.separable_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/root-associated-separable-iff.md) | 137 | `result-track:d3ada7280c604149161a0e377fc5277a56e2f25ec8c4a7209dbf39ab00f9d13e` |
| 22 | `theorem` | [Separable.mul_unit](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-mul-unit.md) | 140 | `result-track:a15786e79bcebbf4a88ff00f8c13acb83323bf787f24b4d63eeca42495329643` |
| 23 | `theorem` | [Separable.unit_mul](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-unit-mul.md) | 143 | `result-track:e309cb5a3970614ed20bc2a13c9e2bc755743d982cb2386791c43e1dbd7005c3` |
| 24 | `theorem` | [Separable.eval₂_derivative_ne_zero](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-eval-derivative-ne-zero.md) | 146 | `result-track:a390b71c859e4ee7d82d3d15eee2b5d7d021ab50e5e0b88c392893dd85911b86` |
| 25 | `theorem` | [Separable.aeval_derivative_ne_zero](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-aeval-derivative-ne-zero.md) | 154 | `result-track:c341d88d1c5ff689c99cceefbebac4a7f2bfb68fe863c76582652555d912c9ab` |
| 26 | `theorem` | [isUnit_of_self_mul_dvd_separable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isunit-of-self-mul-dvd-separable.md) | 161 | `result-track:8536386abd099fb94d07d299930b0648daaed8377f5659d4948ac8455323e781` |
| 27 | `theorem` | [emultiplicity_le_one_of_separable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/emultiplicity-le-one-of-separable.md) | 174 | `result-track:801b961cd13b6eb8b5fb8a3137fce4c3accd41e3d696bd8b8d8352c601c55a75` |
| 28 | `theorem` | [Separable.squarefree](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-squarefree.md) | 186 | `result-track:d816aa60ed29896947b3e4a0c7d52fd7bdbda27a098d7ff8a5f00b5021a7f19f` |
| 29 | `theorem` | [separable_X_sub_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-x-sub-c.md) | 197 | `result-track:6c5a4cea80d67e8cc27c4b0ba89eefb4beee62e215dc6627ba5ad8af87b1ce4b` |
| 30 | `theorem` | [Separable.mul](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-mul.md) | 200 | `result-track:048e87d716a24236229e35231443dcb76b4577285714add8a9f95a11d57ad592` |
| 31 | `theorem` | [separable_prod'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-prod-source-edition-2.md) | 206 | `result-track:d6193da5cc181310bb6fe7c247085bcdb3eca2670cfdfc09fe02381e325191ce` |
| 32 | `theorem` | [separable_prod](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-prod.md) | 217 | `result-track:27bb590f26d0ba30d703b2d29184e4a8c3cd2d41af746508f9c1027f2a5c28cb` |
| 33 | `theorem` | [Separable.inj_of_prod_X_sub_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-inj-of-prod-x-sub-c.md) | 221 | `result-track:480ca561001d498e52f18fe99d17add51d6c49a7fc4d2d6d35f460f7b5ac12d7` |
| 34 | `theorem` | [Separable.injective_of_prod_X_sub_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-injective-of-prod-x-sub-c.md) | 231 | `result-track:27c49552eefd95352f8d3c22a4fde049ad21a0fff8a1c36d01b54e10057d0657` |
| 35 | `theorem` | [nodup_of_separable_prod](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/nodup-of-separable-prod.md) | 235 | `result-track:0b759c556539f216e1e8d17379013334e468088cc617e208c41f20116b756581` |
| 36 | `theorem` | [separable_X_pow_sub_C_unit](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-x-pow-sub-c-unit.md) | 243 | `result-track:bb53ec08d96d2ab54eb60b4ccef16bea79493b2e7195e02548f96b26a825dd6c` |
| 37 | `theorem` | [separable_C_mul_X_pow_add_C_mul_X_add_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-c-mul-x-pow-add-c-mul-x-add-c-source-edition-2.md) | 262 | `result-track:b1a6f7fbbc1565baf21997e2f09a6460e550e089f2c7ac477d3f6c6969f719fd` |
| 38 | `theorem` | [separable_C_mul_X_pow_add_C_mul_X_add_C'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-c-mul-x-pow-add-c-mul-x-add-c.md) | 275 | `result-track:90d2ec7c537bc1ef4355d536939a3d40dfdf384bae8ee08d7c99fdb65a6a66d2` |
| 39 | `theorem` | [rootMultiplicity_le_one_of_separable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/rootmultiplicity-le-one-of-separable.md) | 280 | `result-track:ed856cd4c05c0aa9cb254b079b8d3593cddebe2de3962a7fe389bf1156eb8c0b` |
| 40 | `theorem` | [count_roots_le_one](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/count-roots-le-one.md) | 295 | `result-track:be96431ff55a640d30bfda973efdeecd5fe4170c5bc7cc2b1630a3834a88edea` |
| 41 | `theorem` | [nodup_roots](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/nodup-roots.md) | 300 | `result-track:f6ac50ef2c44052b271053dfc2504d69b83f8b7bfc1bac314ba420fa5ac59bb4` |
| 42 | `theorem` | [separable_iff_derivative_ne_zero](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-iff-derivative-ne-zero.md) | 310 | `result-track:40b5526df3a059233043c046bc3caac3217f995b33b4aa15c37065d5f9eac023` |
| 43 | `theorem` | [separable_map](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-map.md) | 322 | `result-track:0fe1605f7f6a512ec297fb82376aef54a832fda515c1a3ed8eff4935547f1b9b` |
| 44 | `theorem` | [separable_prod_X_sub_C_iff'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-prod-x-sub-c-iff.md) | 329 | `result-track:65e2b663ee9ba21f81ea532631b0d3ffa18cfc3b0cfef9e2609b1a40e0badc7b` |
| 45 | `theorem` | [separable_prod_X_sub_C_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-prod-x-sub-c-iff-source-edition-2.md) | 340 | `result-track:7a32c16683ecffd1cb45c6385082be7af4a3628f0ce8cf9ab566296e67dc317f` |
| 46 | `theorem` | [separable_or](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-or.md) | 348 | `result-track:e420f3fdfab9809cb64255f252f73c4c34898dbbde1ab3833fa77500c31bc011` |
| 47 | `theorem` | [exists_separable_of_irreducible](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/exists-separable-of-irreducible.md) | 365 | `result-track:1b1b1b25c31cd82aa3cc4b6836e203a402ef6ae07c44d3e64ba47e4a7ccbb79c` |
| 48 | `theorem` | [isUnit_or_eq_zero_of_separable_expand](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isunit-or-eq-zero-of-separable-expand.md) | 390 | `result-track:2f4038d155c146b25772ba29eaefea1de4307fa10ca7ac1ce449e3a15eba7d9c` |
| 49 | `theorem` | [unique_separable_of_irreducible](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/unique-separable-of-irreducible.md) | 401 | `result-track:9ea4284648c409e7304a11acf98d1f4ecb8165f3c2cffc5162d9fb13ae18f0c9` |
| 50 | `theorem` | [separable_X_pow_sub_C](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-x-pow-sub-c.md) | 426 | `result-track:256d2380ad59cda14ba31d4deeb11c67b3b6db02b002fb364bccd2bf23a3a01c` |
| 51 | `theorem` | [separable_X_pow_sub_C'](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/separable-x-pow-sub-c-source-edition-2.md) | 431 | `result-track:dd98fc24668d8f7fd5c3126b5135921b5271b0577f3757a00679b39e936c8ba2` |
| 52 | `theorem` | [X_pow_sub_one_separable_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/x-pow-sub-one-separable-iff.md) | 438 | `result-track:429f75db2e3c0e0a077c05fa75fad9a981e14e7a05e07d2a0ef45a01c4f05e4a` |
| 53 | `theorem` | [card_rootSet_eq_natDegree](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/card-rootset-eq-natdegree.md) | 448 | `result-track:916d9d33cdf730b0211f71a8cdafc2f95762feb5c0f0958d9bf5f7678503027c` |
| 54 | `theorem` | [nodup_roots_iff_of_splits](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/nodup-roots-iff-of-splits.md) | 456 | `result-track:e7171b3b3f51095f46243e5cc5481ba868aa6dd522809383104e3ca1162f98d9` |
| 55 | `theorem` | [nodup_aroots_iff_of_splits](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/nodup-aroots-iff-of-splits.md) | 469 | `result-track:4ce102c8d1ee6fd562b4e54e011deee881818e7f4baa7e6ab94c3e4221976950` |
| 56 | `theorem` | [card_rootSet_eq_natDegree_iff_of_splits](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/card-rootset-eq-natdegree-iff-of-splits.md) | 474 | `result-track:b62ac4a0870aa30ef28b10b16e61251c4fda3248a34dfe566fdbc0a74f80238b` |
| 57 | `theorem` | [eq_X_sub_C_of_separable_of_root_eq](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/eq-x-sub-c-of-separable-of-root-eq.md) | 482 | `result-track:65042ef1d5000b373247c0c67cff189272fe787cff89c02122ea889e9118589c` |
| 58 | `theorem` | [exists_finset_of_splits](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/exists-finset-of-splits.md) | 500 | `result-track:ec77353049cc2280f203931bb4cd6807b70b2841a985dcdd0f48793172aa1ade` |
| 59 | `theorem` | [_root_.Irreducible.separable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/root-irreducible-separable.md) | 513 | `result-track:8dde2e48addc066f7215f54c5145adab7bcee2e0e306aa089867aeb6d8d7a755` |
| 60 | `def` | [IsSeparable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isseparable.md) | 547 | `declaration-track:e16826a5d047c094e12e3de656b90126f46389a4f76e3c9509a5203cf1e6e381` |
| 61 | `class` | [Algebra.IsSeparable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algebra-isseparable.md) | 557 | `declaration-track:fe6eedd07337aa09c37fd24e1156340400b25037eb4aa8caad5adcb061971e25` |
| 62 | `theorem` | [Algebra.IsSeparable.isSeparable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algebra-isseparable-isseparable.md) | 562 | `result-track:6485237b614f8697ee0149efd9a791e24e839d5bac08e5880fa20b8f140151f0` |
| 63 | `theorem` | [IsSeparable.isIntegral](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isseparable-isintegral.md) | 568 | `result-track:77816ad5ae3d47e8aad2ff48bccc60595f03cf137167461bf7252e80ec5b5d3c` |
| 64 | `theorem` | [Algebra.IsSeparable.isIntegral](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algebra-isseparable-isintegral.md) | 574 | `result-track:afd1dccecacea45d13f19276eef2b3f4c9c6e69da84aa61465cac0af38438cb2` |
| 65 | `instance` | [Algebra.IsSeparable.isAlgebraic](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algebra-isseparable-isalgebraic.md) | 578 | `declaration-track:a83f1174641f981049fcbb832bfbec919aa15bbfec696ab102dfd33389232707` |
| 66 | `theorem` | [Algebra.isSeparable_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algebra-isseparable-iff.md) | 584 | `result-track:da4251e575b1a5997e3898c3c4f1887a6ac4560ea5b009a980a9c0427bd5af6c` |
| 67 | `lemma` | [IsSeparable.map](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isseparable-map.md) | 590 | `result-track:fcc121ef5f3ac0888d2f0eed60f02ccd1a67b90ab18bf799789d35cfaa1bc8d2` |
| 68 | `theorem` | [AlgEquiv.isSeparable_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algequiv-isseparable-iff.md) | 602 | `result-track:188301964ae23b1923ec354956b29f8882ba41b024f8873fe73b5e93ed3fcefa` |
| 69 | `theorem` | [AlgEquiv.Algebra.isSeparable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algequiv-algebra-isseparable.md) | 606 | `result-track:da76f4ced7e0e9be5ebeb6a1927c7ecd34644aa3178cbd1f56b5a218763f8bcd` |
| 70 | `theorem` | [AlgEquiv.Algebra.isSeparable_iff](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algequiv-algebra-isseparable-iff.md) | 609 | `result-track:4929d9da6c37f0656226bda5d6136a8fdfbb3015db7e135e9d1a6f781deed9e9` |
| 71 | `theorem` | [IsSeparable.tower_top](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isseparable-tower-top.md) | 622 | `result-track:060c16e771a27965b87a2013901f15a818960601135ca7bdb23cc076bc8dce93` |
| 72 | `theorem` | [Algebra.isSeparable_tower_top_of_isSeparable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algebra-isseparable-tower-top-of-isseparable.md) | 630 | `result-track:62652941e7e6a4c6e1b045717fa3f7104384f788357bfebffc25893634a3716f` |
| 73 | `theorem` | [isSeparable_algebraMap](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isseparable-algebramap.md) | 647 | `result-track:24b103bd68a59efdb74b61f1eebfc990c98e2ed031f86baea9287e439cd73f95` |
| 74 | `instance` | [Algebra.isSeparable_self](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algebra-isseparable-self.md) | 651 | `declaration-track:2416a52d60f4e00f902aa5452f384a71263088bfdb5f8361a91c2da13acf0ff8` |
| 75 | `theorem` | [IsSeparable.of_integral](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isseparable-of-integral.md) | 656 | `result-track:b909ce72db49a0e3d89385bd0b89f320576c3363074af074cdff8ab73a96e021` |
| 76 | `instance` | [(anonymous)](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/instance.md) | 662 | `declaration-track:e405b647e87ca47ecfd0a2011243b17ebd76c79afc9a7abf44497c24165e8631` |
| 77 | `theorem` | [IsSeparable.tower_bot](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isseparable-tower-bot-source-edition-2.md) | 675 | `result-track:ceaeffe2bfc2b3aa906c3ba564388dd5a0d82402010654f7a6220493a32327cb` |
| 78 | `theorem` | [Algebra.isSeparable_tower_bot_of_isSeparable](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algebra-isseparable-tower-bot-of-isseparable.md) | 682 | `result-track:4b5323b31d49df564d8a53f877d5fa82433b194b162cce0e91fabfa5741e97c8` |
| 79 | `theorem` | [IsSeparable.of_algHom](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isseparable-of-alghom.md) | 695 | `result-track:c9c70ca9ff10bf9457051c930da74616c6d0ac08c01439d02a7e327ef4b2f32b` |
| 80 | `theorem` | [Algebra.IsSeparable.of_algHom](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algebra-isseparable-of-alghom.md) | 702 | `result-track:fe47c22e637d56bd72853e21dd9086ae6bc0e09c1dbaf91e5a23f4308a8b1697` |
| 81 | `instance` | [isSeparable_tower_bot](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isseparable-tower-bot.md) | 711 | `declaration-track:4ecc935e26838dd83302c69a11b211a7e7b45ef8d52876d4808bc7c56b779d70` |
| 82 | `instance` | [isSeparable_tower_top](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isseparable-tower-top-source-edition-2.md) | 714 | `declaration-track:7c3f818c4f5dfb54152b23539f972757713a4ecf739f7a4aabe140dd4930d369` |
| 83 | `lemma` | [IsSeparable.of_equiv_equiv](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/isseparable-of-equiv-equiv.md) | 730 | `result-track:b70bf7e02ffd0239ec8bc74bbd218fb1787bfa214dccddf8708a12557dc852f1` |
| 84 | `lemma` | [Algebra.IsSeparable.of_equiv_equiv](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/algebra-isseparable-of-equiv-equiv.md) | 746 | `result-track:48481a4a769d7cd4994d322e6a73e91154c5469cae9f4bd31661ec44a7f8a3e2` |
| 85 | `theorem` | [AlgHom.card_of_powerBasis](../../../../FieldTheoryAndPolynomials/FieldTheorySeparable.lean/declarations/alghom-card-of-powerbasis.md) | 758 | `result-track:ac0f52ce793a5bf74288205ee0c0ef676784e0ab1cce3ceac357d992277b6323` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=56e767bbce3c0bdfb8b1b5b795cbed4fb6ae2939cd1c146f17f75129b8919325 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean","GRWTSK/_verification/specifications/Algebra/Separable/Variantc4d45719998359fcb65cead7836166734d71afd592ed4662adfee29f0ff90348.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
