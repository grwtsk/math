# Verification target: Ring Seminorm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46ef9c90e2c064234c1d4e70bf5d09bb1319628c",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant8b3bca36b1ee1cee010f520996eeea8b2e7926bb14007f70d9ae5452cd880b01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46ef9c90e2c064234c1d4e70bf5d09bb1319628c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant8b3bca36b1ee1cee010f520996eeea8b2e7926bb14007f70d9ae5452cd880b01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant8b3bca36b1ee1cee010f520996eeea8b2e7926bb14007f70d9ae5452cd880b01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.IsNonarchimedean` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Field.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RingSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/ringseminorm.md) | 49 | `declaration-track:34621c5d04abf43a4a38f788e923a88c0a385271ba84c73e4fe8cc91e3572171` |
| 2 | `structure` | [RingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/ringnorm.md) | 56 | `declaration-track:31937ab1f94e7db55c03f9cfc0140b7b0c2523ca0ae813a7fcd8c78083d43a47` |
| 3 | `structure` | [MulRingSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/mulringseminorm.md) | 61 | `declaration-track:f4c9661135c60530dd4e004619437933c1e00a984127bca07bdc50ecf5f925f0` |
| 4 | `structure` | [MulRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/mulringnorm.md) | 69 | `declaration-track:2b093d8a690adac02fd06d8f9af74a5c2ee60c53da0a93419cdaf5426e6e1475` |
| 5 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/funlike-source-edition-2.md) | 82 | `declaration-track:31eaae18f667e80a766e212173ca9f3ca8a420b8017ea8cff012809fa787db12` |
| 6 | `instance` | [ringSeminormClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/ringseminormclass.md) | 91 | `declaration-track:01176d3ae8faa8ed0fd5792df0dfe34a3a3612e9e4c3e3bbeb5a29936b29edf1` |
| 7 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/tofun-eq-coe-source-edition-4.md) | 98 | `result-track:78108d50a6ce746b40f933e03fe868c4d798319f084aae579444eb1bc30be48a` |
| 8 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/ext-source-edition-2.md) | 102 | `result-track:72801dbcce1fcd21ffc44bb9d7821897de4d179b0bb1f2f775cdd8cf1fe218be` |
| 9 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/instance-source-edition-8.md) | 105 | `declaration-track:eb2e367345dcac4bbc3599b35944f95401d3e2d2b73eca5fd71cfd0ebd20f994` |
| 10 | `theorem` | [eq_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/eq-zero-iff.md) | 109 | `result-track:a934acd7332586ec8168dd14a84134aa0e3baf863152a21844dbcd0035c8acca` |
| 11 | `theorem` | [ne_zero_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/ne-zero-iff.md) | 112 | `result-track:c6ffd1fddfc52bee5b05faa61cc2bb9b32eda419411d30bb02a20d688ee1a968` |
| 12 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/instance-source-edition-9.md) | 114 | `declaration-track:ef3bc75ac34432b0178b557baa346ed19b43f55428034ee66c046f3bfe9161ae` |
| 13 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/instance-source-edition-4.md) | 119 | `declaration-track:82eecdae961e47abead8a1d51c56bc1a2a26be762421a1fdfc15a58b8ef335c3` |
| 14 | `theorem` | [apply_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/apply-one-source-edition-4.md) | 132 | `result-track:e722d5eb40d8c85f57abbacb9d0afc84fccd300e3fa5933586ac849acbdf5a87` |
| 15 | `theorem` | [seminorm_one_eq_one_iff_ne_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/seminorm-one-eq-one-iff-ne-zero.md) | 141 | `result-track:55f8c1bc6c4c6b82bf4ed3b001697748ab3babc130b3ab41a1d6fa2d40c77bc9` |
| 16 | `theorem` | [exists_index_pow_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/exists-index-pow-le.md) | 158 | `result-track:425003be4b5da42e17971a48b32c19a06ac96a8257b6a071488f9129f4eca419` |
| 17 | `theorem` | [map_pow_le_pow](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/map-pow-le-pow.md) | 169 | `result-track:c590684e91edfd13716264586f29356ead8954617bab7ff2409e55e078fc0042` |
| 18 | `theorem` | [map_pow_le_pow'](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/map-pow-le-pow-source-edition-2.md) | 180 | `result-track:ee86345a16cac2721ee654f1f00700da5eadcdfa2e78cda9ef6f2b056359e9ed` |
| 19 | `def` | [normRingSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/normringseminorm.md) | 189 | `declaration-track:50b33441d96ba1f46b1c951fddf6187e13a27f32a4d522022c01cd0ef0e9f2f2` |
| 20 | `theorem` | [isBoundedUnder](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/isboundedunder.md) | 202 | `result-track:17abc9785b88673d92c78241be9217a9710b8832eddd861ac1071a5450434120` |
| 21 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/funlike.md) | 228 | `declaration-track:0c43115a1a191a2b3e0baf6cbe36fd426b4b4167402c5c3cd215bbee51555db9` |
| 22 | `instance` | [ringNormClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/ringnormclass.md) | 237 | `declaration-track:1344f23ac5b3cbe99687e005bdbb85da2044d9fe90dfa6292d5edb2911f7c15f` |
| 23 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/tofun-eq-coe-source-edition-3.md) | 245 | `result-track:2cf2cbb2343b8ad4015ccad067dc1ac599c34b77d4ec29a87de7131929c75bd1` |
| 24 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/ext-source-edition-3.md) | 248 | `result-track:bf73d9afc6475973e75ccddbf6eb2c441d81dd6d36da180998a30e6b824e8c76` |
| 25 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/instance-source-edition-5.md) | 255 | `declaration-track:8ca218acb104fe270bb6e61997399be2210529370582130d693e3d5909d8c446` |
| 26 | `theorem` | [apply_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/apply-one-source-edition-3.md) | 259 | `result-track:cf6f149dbe6e73abc31142d27b157d48f5c4b3a28d916ddc0d3286f874852ed6` |
| 27 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/instance-source-edition-7.md) | 262 | `declaration-track:d4d3904aa71252448645642bdac488c7ceee57b408f692c33b7cfedd7a2c7d36` |
| 28 | `abbrev` | [toNormedRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/tonormedring.md) | 269 | `declaration-track:b5f95aeaf76a8a2ff8401759be0da7b2cb8ceff09105458e06bf685826235f4b` |
| 29 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/funlike-source-edition-3.md) | 280 | `declaration-track:4402c742c96397a54eb0adeec8c5e876f4ae783ecccd17fbb5acfe89b1e8c9e3` |
| 30 | `instance` | [mulRingSeminormClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/mulringseminormclass.md) | 289 | `declaration-track:ca6c82ffe2e6bd18113c6b5783f8f172c990978669092f4d20b5894fc0b4d6e3` |
| 31 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/tofun-eq-coe.md) | 297 | `result-track:1f47bfbd1952a1dbad7675add1ccf59ce906607f152b9b73150c242cdb7bc331` |
| 32 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/ext.md) | 301 | `result-track:5b943af39a34b289e931790f4d7793985982cacada869ecba8796a937ecad2f9` |
| 33 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/instance.md) | 308 | `declaration-track:0087f92654e0010c856de8972c8c8f7d8848b989b504cc9723b07d716d11fe52` |
| 34 | `theorem` | [apply_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/apply-one.md) | 319 | `result-track:01aadbda690a0afa86125ad41e75c89c8ed167e306bdce21334b249695350ae8` |
| 35 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/instance-source-edition-2.md) | 322 | `declaration-track:02b552923547e05f60453a01af77bd7dacc9a2f680577a04a62a1e5772217820` |
| 36 | `instance` | [funLike](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/funlike-source-edition-4.md) | 331 | `declaration-track:6cd1c400890c8261a1ef5ad5923f73a7624886ae70851ee4e0d5fa317db21fa8` |
| 37 | `instance` | [mulRingNormClass](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/mulringnormclass.md) | 340 | `declaration-track:1a924082f4b82753ecdbd7eabea3245e9e1403c8ec437f1322efad77df131dec` |
| 38 | `theorem` | [toFun_eq_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/tofun-eq-coe-source-edition-2.md) | 349 | `result-track:2794a4f528f0f2d6a74d0b29029640b580cb0357b0bbca81e4cd87659a2e2ff9` |
| 39 | `theorem` | [ext](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/ext-source-edition-4.md) | 352 | `result-track:c93ec5ab047be9a411a7dc0db7303389e9ce49af85793ea7ddd1b833268a897d` |
| 40 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/instance-source-edition-3.md) | 360 | `declaration-track:6eac1f624692e68f8f4b9db0b960e345ac12764ef619a23deea27c6d8b3c12a9` |
| 41 | `theorem` | [apply_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/apply-one-source-edition-2.md) | 364 | `result-track:43888f313ebd5d11a1ca94dbef7b2e459346e733eaa01e85a6ccca90d46c2d42` |
| 42 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/instance-source-edition-6.md) | 367 | `declaration-track:b61c8f7373ba1d5a09f02e9534800a9b8af91a7da8346af986fe9b7cf3081d3e` |
| 43 | `def` | [mulRingNormEquivAbsoluteValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/mulringnormequivabsolutevalue.md) | 375 | `declaration-track:df44cc73e874b82fbc81f4453f247f23ed52e8800fb410a9d5dd4e69158d73a9` |
| 44 | `lemma` | [mulRingNormEquivAbsoluteValue_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/mulringnormequivabsolutevalue-apply.md) | 395 | `result-track:5608e942215e24d3e41152a538721eeab2061405207d272472c912b08393b5d9` |
| 45 | `lemma` | [mulRingNormEquivAbsoluteValue_symm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/mulringnormequivabsolutevalue-symm-apply.md) | 398 | `result-track:ecef066d5d49932cd1c33f44059d36ceb97237c8243f4016c31f0e438085c964` |
| 46 | `def` | [equiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/equiv.md) | 408 | `declaration-track:a3b3d08e3ee0ce36066d4d2532ba5daa880b48e1163d51e6c7515e09e4ab5823` |
| 47 | `lemma` | [equiv_refl](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/equiv-refl.md) | 414 | `result-track:9f579234544d5eb3b3315b8b760f40770a069b95b3213a7fcef80ddfa968aa38` |
| 48 | `lemma` | [equiv_symm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/equiv-symm.md) | 420 | `result-track:dddd4004c38df3480c23c0a1cab4032b8a2da2ad516564573a6a85334025acbb` |
| 49 | `lemma` | [equiv_trans](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/equiv-trans.md) | 431 | `result-track:75a3544373ae463be4763cdbb3b963d9cce8601bfb32b7f590d801a5854f43c7` |
| 50 | `def` | [RingSeminorm.toRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/ringseminorm-toringnorm.md) | 442 | `declaration-track:9e68fd42d704f287cf4c93408953c4eb3ad7dc0d7c197d4b0a47be5247422952` |
| 51 | `def` | [normRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/normringnorm.md) | 460 | `declaration-track:2e3c0107a571ef8954b627e43664d8118a674816b27b5bd677f48aba31ba613b` |
| 52 | `lemma` | [MulRingNorm_nat_le_nat](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/mulringnorm-nat-le-nat.md) | 466 | `result-track:d2ce42ad7b7841c9343aaf02774d086d1e5360e0b0e865ddffe63763db19669d` |
| 53 | `lemma` | [MulRingNorm.apply_natAbs_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/mulringnorm-apply-natabs-eq.md) | 480 | `result-track:23aa82f3766cb3ca7d11dd7b4b4837f9986d0138444a6680c477d6699ffa2d2b` |
| 54 | `def` | [SeminormedRing.toRingSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/seminormedring-toringseminorm.md) | 486 | `declaration-track:0087e4f3a824689b497403a0e7d718bf83c7fb535f170c1615ffbb49914110fe` |
| 55 | `def` | [NormedRing.toRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/normedring-toringnorm.md) | 495 | `declaration-track:b02198789b5d7fdd1c41bcf9a3cd702f0f0fc3cfebc23f81bdf87e6201ebd5e6` |
| 56 | `theorem` | [NormedRing.toRingNorm_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/normedring-toringnorm-apply.md) | 504 | `result-track:bc1cf80e2b9e6c9c83614493b38f30f8e1c848bec562f06f4e4f2e7756133306` |
| 57 | `def` | [NormedField.toMulRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/normedfield-tomulringnorm.md) | 509 | `declaration-track:da53b4624500d7dfd6bda7a4b8ef47e87257b9076c755e1b66685e815ad15e12` |
| 58 | `def` | [NormedField.toAbsoluteValue](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/normedfield-toabsolutevalue.md) | 519 | `declaration-track:756e59b753842076327a6043d9bd61b9f256dd4670e651302d5c36d118a9ec9e` |
| 59 | `lemma` | [mulRingNorm_sum_le_sum_mulRingNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/RingSeminorm.lean/declarations/mulringnorm-sum-le-sum-mulringnorm.md) | 528 | `result-track:51a34838cd1403f8182d354361535762901c4c3ee73a45f793c6e42d12979261` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=acc33d120b4994ebb5c7e68d01943487ff583ef9c2f4b40d28e2447325edf14c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant8b3bca36b1ee1cee010f520996eeea8b2e7926bb14007f70d9ae5452cd880b01.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/RingSeminorm/Variant8b3bca36b1ee1cee010f520996eeea8b2e7926bb14007f70d9ae5452cd880b01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
