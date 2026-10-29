# Verification target: Int Basic Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f38e21097d0c09f66c23eab6b82f00a091aec65",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f38e21097d0c09f66c23eab6b82f00a091aec65`.

Source path: `GRWTSK/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Init.Data.Int.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Monotone.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Nontrivial` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instNontrivialInt](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instnontrivialint.md) | 36 | `declaration-track:53c251e219419bd8779cdb037b2be31a174dfd6913b87950a52e3529f59f39cf` |
| 2 | `instance` | [instCommRingInt](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instcommringint.md) | 38 | `declaration-track:c13e49effffe6becc7fcde1bf62099b8b6cabdfdf1189fe652266187d263281e` |
| 3 | `lemma` | [cast_id](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/cast-id.md) | 73 | `result-track:0423568c5ba8429ab99e63c60d6338eb5a82132bbc5412d182a3be333a0a0b5b` |
| 4 | `lemma` | [ofNat_eq_cast](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/ofnat-eq-cast.md) | 75 | `result-track:8dbd2abbe515cdbdee1882ed7bbf0fd181eac120b39f39e12136038b9f02af2c` |
| 5 | `lemma` | [cast_Nat_cast](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/cast-nat-cast.md) | 77 | `result-track:c80a9ab7710ae8928c83a5181332eb8c915512d8cfc575e73b02623dd9cc4eb5` |
| 6 | `lemma` | [cast_eq_cast_iff_Nat](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/cast-eq-cast-iff-nat.md) | 81 | `result-track:fef64aaf40a1d9dbd95e14a0802ea8644da40223a3b2f2e6a988189540001f4d` |
| 7 | `lemma` | [natAbs_cast](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/natabs-cast.md) | 84 | `result-track:726a9d33a7af73304cf3bcad38ab374e037a271f8a50fcb2a82fd4a6024953c6` |
| 8 | `lemma` | [coe_nat_sub](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/coe-nat-sub.md) | 87 | `result-track:e696840d18f45b587c269ab39360265dfaeba515917e0fa179897675451fd78f` |
| 9 | `theorem` | [Int Basic Namespaced Source Edition1](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/zpow-coe-nat.md) | 90 | `result-track:70065d3a1b5bc7f6666c6bf57c092fa000dc0684116cdb14e927bfabbdf6ddaf` |
| 10 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-8.md) | 99 | `declaration-track:7ec734d490ad6334abb0b3485447a49f2a18aa59a1d0f5c962899bbe04bac20d` |
| 11 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-2.md) | 100 | `declaration-track:2669d15e5ec701182950da644caccaa0ff0397248c9d320f61dc57827a9d1300` |
| 12 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-6.md) | 101 | `declaration-track:608977b663acecd5a9cb877f6869b04190b889932931dd8cd55dc44a9895cd45` |
| 13 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-4.md) | 102 | `declaration-track:4ab375d609ea1776fb97fda566454513328069a10f9491354f10f7701ffbf9ee` |
| 14 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance.md) | 103 | `declaration-track:0e2c34bf1da0b68893d7e6d65a2c4197944fec012f26b45494e51cd3cade7cf2` |
| 15 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-5.md) | 104 | `declaration-track:56d253c3e15b94d93659b04f3368d5dc67426aa328441aa6ec9a74d652e66936` |
| 16 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-7.md) | 105 | `declaration-track:6aca7f8540e26606c0bfc6b0a7b64dd65de8591defe0b8ab89c48e99927bb268` |
| 17 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-11.md) | 106 | `declaration-track:caa953834eb766b42aba094dceb59fe2542a27c0bc0fb8dee547c81c1dd91d30` |
| 18 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-3.md) | 107 | `declaration-track:3d1964efaa209768a269a1ba58bdae360c1d3111323aaf6ae5363342c8a9a1f9` |
| 19 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-13.md) | 108 | `declaration-track:f3ef7e92d8f23056725bda4e358b2ef381e1af7198f8fceea0cc33264dcc0395` |
| 20 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-12.md) | 109 | `declaration-track:ec4e31a768cb8e7ddba63f6d22f51423b5bf94e4eac7829438381494e48b90de` |
| 21 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-9.md) | 110 | `declaration-track:992c5f68932ece65dce1b4a4f4767ea5bb8d01a78d039d4a249bb22e76afe6d2` |
| 22 | `instance` | [instRingInt](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instringint.md) | 111 | `declaration-track:a076f71cc68bf782c4c88f19f4ea9f1de83e448a53744c2d519515ea16cf7012` |
| 23 | `instance` | [(anonymous)](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/instance-source-edition-10.md) | 112 | `declaration-track:c6167647fb423bfd2356ac708e21ca90ebae35e977d0dc5439e8b681f87b8a41` |
| 24 | `theorem` | [coe_nat_inj'](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/coe-nat-inj.md) | 124 | `result-track:d258f86161f66a9306da8398c175553921b9ffc414ab3f288a40769a54fbbfe8` |
| 25 | `theorem` | [coe_nat_strictMono](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/coe-nat-strictmono.md) | 127 | `result-track:712db48b2b3d2ad37abe025047ada7ac9671b8fd26f56bd0e9af0fda637adbc5` |
| 26 | `theorem` | [coe_nat_nonneg](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/coe-nat-nonneg.md) | 130 | `result-track:04b9b06b62c262d7e175565cf6f9db5e57306ffdc28a57b15550fb8e75008646` |
| 27 | `theorem` | [sign_coe_add_one](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/sign-coe-add-one.md) | 137 | `result-track:91f2eba69573061aa23710d3b1a3840193029fe3789ec4203f912a417eacd2ab` |
| 28 | `theorem` | [sign_negSucc](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/sign-negsucc.md) | 142 | `result-track:621d3576d3cc70992480c033e5337ee9cb34b418b43a2dedd487814d3c4c22c8` |
| 29 | `def` | [succ](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/succ.md) | 149 | `declaration-track:20527a032a99f8f0fcc54d423f46e3f07a911a4f88c95a1d37c28969d2b94fd7` |
| 30 | `def` | [pred](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/pred.md) | 153 | `declaration-track:3b793845b7211e9ef4bb45cf97f76593fa3d4f8e735d7f0daacef2b987ab4a1b` |
| 31 | `theorem` | [nat_succ_eq_int_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/nat-succ-eq-int-succ.md) | 156 | `result-track:36daf5c03ad04d0c36cbe1c4b5761176fdb34f8e99f7d8cfbf194fc5e56a54d8` |
| 32 | `theorem` | [pred_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/pred-succ.md) | 159 | `result-track:c9749a05316d32c293d47f8bb083d2cd772b3493d3676c3e753b852b1e80f86e` |
| 33 | `theorem` | [succ_pred](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/succ-pred.md) | 162 | `result-track:07afec361c1746b501079990688efd51f982b228e89da2ef791c50d075d0dfce` |
| 34 | `theorem` | [neg_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/neg-succ.md) | 165 | `result-track:8b1640d1f08cdbda9338e46fe7459c44d86516f36355fbffa85c506cc7a2b80b` |
| 35 | `theorem` | [succ_neg_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/succ-neg-succ.md) | 168 | `result-track:26dac4b2c26fbb42b29a51e31a800c60cf6aed30232fe9643c3a8bc2e7b5c0fe` |
| 36 | `theorem` | [neg_pred](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/neg-pred.md) | 171 | `result-track:d2adaec2eacb73a84a4110305133c2f33489c0ae3007b90995daee785cfba4fd` |
| 37 | `theorem` | [pred_neg_pred](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/pred-neg-pred.md) | 175 | `result-track:3f97fd4428e45358def386dd3c7b925d89e31b3f84a4caaa05f52fe365a88054` |
| 38 | `theorem` | [pred_nat_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/pred-nat-succ.md) | 178 | `result-track:16f302153730b124b6e1cd62fdeefefd76498f871cd22e2a69b724ebf5e67c52` |
| 39 | `theorem` | [neg_nat_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/neg-nat-succ.md) | 181 | `result-track:e570cffeaffe57555f9f3e472392edfcc1a92785de58bd959064dca82ab424ce` |
| 40 | `theorem` | [succ_neg_nat_succ](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/succ-neg-nat-succ.md) | 184 | `result-track:30d3f6536b8e83f4f4fb4e21a1660f8d4ca2e828ae128787ba61dbf6a0dd9fcb` |
| 41 | `theorem` | [coe_pred_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/coe-pred-of-pos.md) | 187 | `result-track:f0f75822c064ec91a4d8b9b09e3b93d4358640374c6527bede186096a9be859b` |
| 42 | `theorem` | [induction_on](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/induction-on.md) | 191 | `result-track:c061253513d597939efade2e0910af3dc1c40e8f111aa0f04406c111b537c0eb` |
| 43 | `theorem` | [natAbs_surjective](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/natabs-surjective.md) | 207 | `result-track:8f357c4cc97048a3f68569b42d9dc9898708f8d90d3d357c65a8a79b3ad1fc44` |
| 44 | `theorem` | [natAbs_ne_zero_of_ne_zero](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/natabs-ne-zero-of-ne-zero.md) | 219 | `result-track:e0787b15c2cf48612eb710eb2b9be86afac7447da702a33bf73a5efdce546223` |
| 45 | `theorem` | [coe_nat_div](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/coe-nat-div.md) | 238 | `result-track:0429033da52ac12dd814e5c90d23d4ef69faa5e2b787b02d1bf20636c72afb69` |
| 46 | `theorem` | [coe_nat_ediv](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/coe-nat-ediv.md) | 241 | `result-track:5282ba1bdc209bb71de9d10cfa53cb5b23a906e9b5d6861119a8af302759c1ae` |
| 47 | `theorem` | [ediv_of_neg_of_pos](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/ediv-of-neg-of-pos.md) | 247 | `result-track:cc9b4945bf06bd6a60e8fcd7279dd21a86e8ecf2b28f22ce487bc282a83402de` |
| 48 | `theorem` | [coe_nat_mod](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/coe-nat-mod.md) | 262 | `result-track:d0ff2d82b689a13981b0b9df84b189b1e695f4c3ab3bbdc30c499d3ae001fee0` |
| 49 | `theorem` | [sign_coe_nat_of_nonzero](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/sign-coe-nat-of-nonzero.md) | 288 | `result-track:4324c16e17e5b48e486ffcd294623e5f699e1e34c2464d53f8d86d5c77a4ad8f` |
| 50 | `theorem` | [toNat_coe_nat](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/tonat-coe-nat.md) | 302 | `result-track:7563d797e6a881b3a6aa9b33dc7d10560ec8aa9eac91ce7b20413a17e0d30fc7` |
| 51 | `theorem` | [toNat_coe_nat_add_one](../../../../../NumberTheory/ElementaryNumberTheory/IntBasicNamespacedSourceEdition1.lean/declarations/tonat-coe-nat-add-one.md) | 305 | `result-track:afe23eee1ade00e5b4b22ccc56c4ab4390da7d0572d8e0de8c434d87abcae6dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=5950d03b80633232e99f1ce3bb523254a46ab17b711d83f84f24a831eaf19c23 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean","GRWTSK/_verification/specifications/Algebra/Basic/Variant5f43b0e28072cf5c35c82c02ebb838f74551b07e6cf380364ba1bae8c16d5d6b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
