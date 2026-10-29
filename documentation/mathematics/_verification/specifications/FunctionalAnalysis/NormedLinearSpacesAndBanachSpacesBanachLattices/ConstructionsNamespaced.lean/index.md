# Verification target: Constructions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1cce627d40eb4cbdb8d6d7cce9fb9c3488d8c4c8",
  "lexical_observation_count": 86,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Constructions/Variant782b02cf74f10290eda79a729f9e0f6cc7363ede35c31948e77850c9b49bc447.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1cce627d40eb4cbdb8d6d7cce9fb9c3488d8c4c8`.

Source path: `GRWTSK/Analysis/Constructions/Variant782b02cf74f10290eda79a729f9e0f6cc7363ede35c31948e77850c9b49bc447.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Constructions/Variant782b02cf74f10290eda79a729f9e0f6cc7363ede35c31948e77850c9b49bc447.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.PUnit` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.ULift` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [normedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/normedaddcommgroup.md) | 33 | `declaration-track:056e98cbe08aad4ae16ca922a69ce3e2f6ed288201f499cd2cdc0e4032acdbb3` |
| 2 | `lemma` | [norm_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-eq-zero.md) | 37 | `result-track:ce1e76db9d95f63b04002c08efb2771aad4131b610128a0e2e564d522a695c35` |
| 3 | `instance` | [norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm.md) | 47 | `declaration-track:a8b4b0e20b2f99d7d97cc74e1c26b0358f5def7d04367de4cc862314005e5771` |
| 4 | `lemma` | [norm_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-def.md) | 49 | `result-track:b738369237a0dbc365f7d75e70c0e44e7d53e684f01049a5ee0b7ef072d6ae3b` |
| 5 | `lemma` | [norm_up](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-up.md) | 51 | `result-track:9394840b512534ba4d814cce995cefd4aa6aa9a6d025e5a6fec795774b37a24d` |
| 6 | `lemma` | [norm_down](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-down.md) | 53 | `result-track:0a35feb41146c8a211d1f052b098a2bbf5fa44cba3a6739eb88f1b681125fc6f` |
| 7 | `instance` | [nnnorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm.md) | 60 | `declaration-track:498b4313584931e1f78ccc5860b09811d54a24180942226b247db125f3c7fd35` |
| 8 | `lemma` | [nnnorm_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm-def.md) | 62 | `result-track:712ee24d4e2f35d5fc906ebb3278a1bd0fb000a820a4f8b58c72dd15f2fb905f` |
| 9 | `lemma` | [nnnorm_up](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm-up.md) | 64 | `result-track:f7934d74270f61beb2718b2a73c3b524fe1068d5f0cef7c7635c13e3c58976c9` |
| 10 | `lemma` | [nnnorm_down](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm-down.md) | 66 | `result-track:016bcc0e99267eff1a515507806058d23e5e5e3960a95929e7ccd459bf9c90b5` |
| 11 | `instance` | [seminormedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/seminormedgroup.md) | 71 | `declaration-track:8303ece2e0c7dcd204ef9c37140ce1e4bf0687c8038b5c871f5a53cf82d86161` |
| 12 | `instance` | [seminormedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/seminormedcommgroup-source-edition-2.md) | 78 | `declaration-track:9876b22b56e97e62167f7781b9cb99e525f6e228b46bdca27ba915d3f2564d00` |
| 13 | `instance` | [normedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/normedgroup-source-edition-2.md) | 85 | `declaration-track:deb982bc9ce7c1f70366a0f6dd271158960c0469064b67910c6eeb7eb6451aca` |
| 14 | `instance` | [normedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/normedcommgroup-source-edition-2.md) | 93 | `declaration-track:e7cf9c50a4b145a3fc2c58cf9a990652ea81b2d74b2918213167c1b4c718555e` |
| 15 | `instance` | [Additive.toNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/additive-tonorm.md) | 111 | `declaration-track:c12972c65a190a20665f01df082df30af36247653b8e00fbb7a41ad02625bfb2` |
| 16 | `instance` | [Multiplicative.toNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/multiplicative-tonorm.md) | 112 | `declaration-track:26c02e6b373d6cd868bb911475b4fc7d1ab2730c0ac36decd884527d6cde7521` |
| 17 | `lemma` | [norm_toMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-tomul.md) | 114 | `result-track:a8acd9fcb78634cfaf6ced7fbdd38157805c8f54cc064a54f20c03afa2669799` |
| 18 | `lemma` | [norm_ofMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-ofmul.md) | 116 | `result-track:5fa25a08973cd5d96601bd69537b180e25b74f546d6a363c9969ab2c0138acfa` |
| 19 | `lemma` | [norm_toAdd](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-toadd.md) | 118 | `result-track:4c5ca8abc2190ef532984c52246cff01fce969fab3231d3da69928f1a074b596` |
| 20 | `lemma` | [norm_ofAdd](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-ofadd.md) | 120 | `result-track:2170605b2dfeb6530099482fbf9bf5023a59e5fd6f8134010cf9f94ccbedb710` |
| 21 | `instance` | [Additive.toNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/additive-tonnnorm.md) | 127 | `declaration-track:64d68b20cc7f4a7f0653ea2d90edbf53fd53e715711a8a5b34ccb1aa2f231da7` |
| 22 | `instance` | [Multiplicative.toNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/multiplicative-tonnnorm.md) | 129 | `declaration-track:d6585719426362d6436940d6529cca40a5557a56bcc407512ceefb666b36f2ad` |
| 23 | `lemma` | [nnnorm_toMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm-tomul.md) | 131 | `result-track:41857daccb9dcf97b594099d62d9aa738983aa8063e13d4e15c6b1ea9b9b58d5` |
| 24 | `lemma` | [nnnorm_ofMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm-ofmul.md) | 133 | `result-track:5ec5b041eeb8ffa0385f56c88927d4e31ab0d7a6461188ae70af0623a824a706` |
| 25 | `lemma` | [nnnorm_toAdd](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm-toadd.md) | 135 | `result-track:24a4e83e45fc1c0e8399309d03b1a4a616f8f5a895908c7ec5f5540ec04f4324` |
| 26 | `lemma` | [nnnorm_ofAdd](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm-ofadd.md) | 137 | `result-track:26bec1c50ae1f8e0902733e4fb053bc6a485db24913f9e08135f785920f9e2e6` |
| 27 | `instance` | [Additive.seminormedAddGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/additive-seminormedaddgroup.md) | 141 | `declaration-track:8709fedb169c3737816448a1f162d0f6161ad14a68c4c07a25290512d984b46d` |
| 28 | `instance` | [Multiplicative.seminormedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/multiplicative-seminormedgroup.md) | 145 | `declaration-track:4818efc2e00a7885374a74248050387a03ccd1f187469a64cf9680bcd8c735a6` |
| 29 | `instance` | [Additive.seminormedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/additive-seminormedcommgroup.md) | 149 | `declaration-track:68882e73c8796e23adf3815edee98f037141bae3244edabfe0df12efefd5b34b` |
| 30 | `instance` | [Multiplicative.seminormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/multiplicative-seminormedaddcommgroup.md) | 154 | `declaration-track:d426a5354014be02775042155264e10176d22148a2b35d29b1f65536877d9ddc` |
| 31 | `instance` | [Additive.normedAddGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/additive-normedaddgroup.md) | 159 | `declaration-track:b7f6c1f55af54bf083e52c2ba2eed7e380853fed7490d905fab24cf7946004a0` |
| 32 | `instance` | [Multiplicative.normedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/multiplicative-normedgroup.md) | 163 | `declaration-track:1a909f1ea150887c3669c7de49d7589c7fabd39726eba775fc4daf9cb9b8868a` |
| 33 | `instance` | [Additive.normedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/additive-normedaddcommgroup.md) | 167 | `declaration-track:e99fce82f3269b03ff529c3def1657b4bbb203aae62042d1796065f57bd84fdf` |
| 34 | `instance` | [Multiplicative.normedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/multiplicative-normedcommgroup.md) | 172 | `declaration-track:f9af03d722a8057508555098392a29a526c25df9f8c7e0ac689caa7ba17589ea` |
| 35 | `instance` | [OrderDual.toNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/orderdual-tonorm.md) | 188 | `declaration-track:9753ac10e13848f6413c5da8e3474e12e230af09a55238fc44fe320c2feda358` |
| 36 | `lemma` | [norm_toDual](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-todual.md) | 190 | `result-track:8282edffc1ac4b4bb236a498f8c1f94cbe43533d512b62ad452dd8d79e52c08c` |
| 37 | `lemma` | [norm_ofDual](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-ofdual.md) | 192 | `result-track:25442b60783de9c31901bc41a962f484388a69cc847ed458eb0ba38c9cdbf6df` |
| 38 | `instance` | [OrderDual.toNNNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/orderdual-tonnnorm.md) | 199 | `declaration-track:35f66b495fabd61e8666f2db650d58ed8334d8d2dc9e9515de3bf498393f16c2` |
| 39 | `lemma` | [nnnorm_toDual](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm-todual.md) | 201 | `result-track:28686dd83a46fdebc8d6fbb3a75dac892235d18e3add265f4eb91def6e66dda0` |
| 40 | `lemma` | [nnnorm_ofDual](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm-ofdual.md) | 203 | `result-track:bbc73be727bac89be718d0cd5d2d7c65fb15689fe1e46fb65cd25bd4cdd427f1` |
| 41 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/instance-source-edition-3.md) | 211 | `declaration-track:97be2a08bda94f1884ca54096f6661e8fc95fafd9164724f82a049a30fa8015e` |
| 42 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/instance-source-edition-2.md) | 216 | `declaration-track:8dc1f479bbdbb276bbe147fe1c1bb570c59264d7ed3f5c31a5323ae8c1a72a66` |
| 43 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/instance.md) | 221 | `declaration-track:05cbe66c833132cb02d45985a5da70dccde87a05182a185e15fbfb1820cf21f9` |
| 44 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/instance-source-edition-4.md) | 225 | `declaration-track:9c2a287a68fa93f03cb4bfc7d4e527e5eda73bf43706a953d29e1c1b0e3942a6` |
| 45 | `instance` | [Prod.toNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/prod-tonorm.md) | 236 | `declaration-track:8c85ecfeb69721ff9b69c1212e08a024cebcad72ef7240ba7ce8a9d2de62a9f0` |
| 46 | `lemma` | [Prod.norm_def](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/prod-norm-def.md) | 238 | `result-track:585aa2168eacea6f2b5ef125a73fe2077be0a3646e2e8f98b33a819e1c0fe7ca` |
| 47 | `lemma` | [Prod.norm_mk](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/prod-norm-mk.md) | 240 | `result-track:485b23570e31e2c82f52022d34bbf359cc90df6bbb54d60ba400a170de9a3414` |
| 48 | `lemma` | [norm_fst_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-fst-le.md) | 242 | `result-track:d93d7e1d5b067c11ee97cf78246181d636740f8c0985051dd3d6377c6892910e` |
| 49 | `lemma` | [norm_snd_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-snd-le.md) | 244 | `result-track:63dc6f4156d211c2108f5a8d7b75036397a1752053a68d291c4efe2d9dcb545f` |
| 50 | `lemma` | [norm_prod_le_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-prod-le-iff.md) | 246 | `result-track:5184fc5418c6f4285aa749900df2340912f051e899dd824c88c326ad62214d9e` |
| 51 | `instance` | [Prod.seminormedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/prod-seminormedgroup.md) | 255 | `declaration-track:193e830dcf562e43e2b857b1c0324e706ad3747e8d39e623560bbf0809ab0415` |
| 52 | `lemma` | [Prod.nnnorm_def'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/prod-nnnorm-def.md) | 262 | `result-track:a1ffdf310fb04d0c064688331aa7ef51ef7edcddcd81fd96dbca0cff6424fff8` |
| 53 | `lemma` | [Prod.nnnorm_mk'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/prod-nnnorm-mk.md) | 268 | `result-track:02b012bf09af37d24a9830cf375084bd9098d02bd99428f5723cb81e4c7c23d5` |
| 54 | `instance` | [seminormedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/seminormedcommgroup.md) | 276 | `declaration-track:40391123d32d2c9e49a81b443632d10643254aa4d55583a9189661ad6371daef` |
| 55 | `instance` | [normedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/normedgroup.md) | 283 | `declaration-track:886ec00b8dc9100d03b35e5d5b63a8e9e7ba112212f876a3bd9f7fd814f409d8` |
| 56 | `instance` | [normedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/normedcommgroup.md) | 289 | `declaration-track:db70958ea5870bc2593e5fae3ecb4c686d4f396a7880e2e7839aa0719d4e7b73` |
| 57 | `instance` | [Pi.seminormedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-seminormedgroup.md) | 306 | `declaration-track:8f40065e03b54180a9c8983815f88a6a864bc861da695d1cc23946c08aa7e7a3` |
| 58 | `lemma` | [Pi.norm_def'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-norm-def.md) | 314 | `result-track:8bb5163a4fccc02f87e7c1556f352412afbe4bdb3ca8e81c66b09a644709fb35` |
| 59 | `lemma` | [Pi.nnnorm_def'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-nnnorm-def.md) | 317 | `result-track:f891a7dd385db4bed7fcfde778788a67ba339e027a004231f370bcd023d61012` |
| 60 | `lemma` | [pi_norm_le_iff_of_nonneg'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-norm-le-iff-of-nonneg.md) | 323 | `result-track:f01b258ae73c36f9bce428d7606f48cb3471c6954d3a9722d685a7d5df06e96f` |
| 61 | `lemma` | [pi_nnnorm_le_iff'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-nnnorm-le-iff.md) | 327 | `result-track:0c620c5d82f9589854cd06528553c1af7b5c5ffd96eb2e255c40154395f5af0b` |
| 62 | `lemma` | [pi_norm_le_iff_of_nonempty'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-norm-le-iff-of-nonempty.md) | 331 | `result-track:97cf79d44019f22aa5304ac9010117dac2ec0b1007629c25f46d594d40562799` |
| 63 | `lemma` | [pi_norm_lt_iff'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-norm-lt-iff.md) | 342 | `result-track:57c6be53b3d21445a8e06bda8f1ea67f3bf0a4d0869008b900f1bacf16ca9226` |
| 64 | `lemma` | [pi_nnnorm_lt_iff'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-nnnorm-lt-iff.md) | 346 | `result-track:c88572eeff4415786c5ec020647a75e1213d24fc684c47eef8f8dc9456870580` |
| 65 | `lemma` | [norm_le_pi_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-le-pi-norm.md) | 350 | `result-track:6d328107d4090c492d092ec81ef2cd459ba1f73b6156fed8960c549b1f29e414` |
| 66 | `lemma` | [nnnorm_le_pi_nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm-le-pi-nnnorm.md) | 354 | `result-track:512d18272fd7f8a4d581c156f115c41d8097a52769b42706e586bec5de074568` |
| 67 | `lemma` | [pi_norm_const_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-norm-const-le.md) | 358 | `result-track:9aac334ccfc0db45c9f989d1c383bd7a35b412abee2e74ab64ced9937df8aa3d` |
| 68 | `lemma` | [pi_nnnorm_const_le'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-nnnorm-const-le.md) | 362 | `result-track:051dc27cf5ee1fc8c796ec5373377535a63d0414cfd946a04f1b8ae5da42c02c` |
| 69 | `lemma` | [pi_norm_const'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-norm-const.md) | 366 | `result-track:3b6df1ea22074699356794dbbe40c11fb39fea32c98f7499e6f8abdf25824cb0` |
| 70 | `lemma` | [pi_nnnorm_const'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-nnnorm-const.md) | 370 | `result-track:280e5dce0bd906c5da462a394f5b98d3ddba3afac35afdee716d8f14d0b1da91` |
| 71 | `lemma` | [Pi.sum_norm_apply_le_norm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-sum-norm-apply-le-norm.md) | 376 | `result-track:72520d7afb4f125d42d84d6ee3913aea840f7245c9bec584fbf4aa1f65940062` |
| 72 | `lemma` | [Pi.sum_nnnorm_apply_le_nnnorm'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-sum-nnnorm-apply-le-nnnorm.md) | 382 | `result-track:f39c8a805088c8916bc17c1b1228efb66c9d1dcae62b8f31555e12cd6c87f545` |
| 73 | `instance` | [Pi.seminormedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-seminormedcommgroup.md) | 389 | `declaration-track:433d4c98cffedf4f6291f57cf83a19e1e2a301960b893f5c5bb85e94db8020bf` |
| 74 | `instance` | [Pi.normedGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-normedgroup.md) | 395 | `declaration-track:df1138578acc748b5c33ae7f3f0bf4b2844fde4f87a4beb1820244828909a875` |
| 75 | `instance` | [Pi.normedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-normedcommgroup.md) | 401 | `declaration-track:89549bd984e2f5d447f391da0851696348cf83dc8003e4a3e5be23deeebea0a4` |
| 76 | `theorem` | [Pi.nnnorm_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-nnnorm-single.md) | 406 | `result-track:29605242d6e84942afcd13f9e8085fadd0f69543502e3bf7b9efc35f2eb8c45b` |
| 77 | `lemma` | [Pi.enorm_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-enorm-single.md) | 414 | `result-track:42e7bf89553663ec40264d01addba9891b8fddaab9d7ac960680f0cfc3cb2767` |
| 78 | `theorem` | [Pi.norm_single](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/pi-norm-single.md) | 417 | `result-track:3f332f7c7e3d7ae6c44cd60eec607a3eb1565e711cb836f1237dd018c824f70e` |
| 79 | `instance` | [instSeminormedAddGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/instseminormedaddgroup.md) | 435 | `declaration-track:38cacb16e3edbdd482d6cd90a7702ec80d86cf94a3b5e9f0a1c0690a3cfa4b1b` |
| 80 | `lemma` | [norm_op](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-op.md) | 440 | `result-track:0d1962606ad3872c04e283c6207ee5f1ef6ae97fae938b6c8dfe0e988d3cccf8` |
| 81 | `lemma` | [norm_unop](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/norm-unop.md) | 442 | `result-track:a1a87be92b2e44008650d53044edeb1541ae3420b512310adacf747d22d531cf` |
| 82 | `lemma` | [nnnorm_op](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm-op.md) | 444 | `result-track:f6fb38eff299f50e04e8d209eadf59aafb44a7f6e64aa91a86ea669565f40836` |
| 83 | `lemma` | [nnnorm_unop](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/nnnorm-unop.md) | 446 | `result-track:e4d0082e8daa2983b2f93572906fad54b249aaee647a0a4b5f8ca2ccbbbbe64e` |
| 84 | `instance` | [instNormedAddGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/instnormedaddgroup.md) | 448 | `declaration-track:f29dab8f36540c5a0a9c28e06d5a33ab7c40156fd3dfd44084c8efc65896871b` |
| 85 | `instance` | [instSeminormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/instseminormedaddcommgroup.md) | 452 | `declaration-track:74240c90a1ec2f9c46d09771ad4c68670787cce5d3b0114c041130b12fe10b46` |
| 86 | `instance` | [instNormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ConstructionsNamespaced.lean/declarations/instnormedaddcommgroup.md) | 455 | `declaration-track:998aa44b73e16ef5cac0f4ea37ae0ca8fca3f79dc6443919da05780f4b24971a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5ea077a102d1f030533ae085b698c8d1c323323db6a341ec7d9d75a45163254b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/Constructions/Variant782b02cf74f10290eda79a729f9e0f6cc7363ede35c31948e77850c9b49bc447.lean","GRWTSK/_verification/specifications/Analysis/Constructions/Variant782b02cf74f10290eda79a729f9e0f6cc7363ede35c31948e77850c9b49bc447.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
