# Verification target: Is ROr CBasic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4285a781a34aaf065e62d11c6e9ef43886cf7728",
  "lexical_observation_count": 188,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4285a781a34aaf065e62d11c6e9ef43886cf7728`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Real.Sqrt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Star.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.ContinuousLinearMap` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsROrC](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/isrorc.md) | 56 | `declaration-track:4e024e19896f0a3e8abe857ee1c9c853c4ece2ad049897c4b296c78a0136fc99` |
| 2 | `abbrev` | [ofReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal.md) | 90 | `declaration-track:30d9fe7c3be930c25c554f63a207662c2ded22525c1f467a12e16ff680f4ef9e` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/instance-source-edition-2.md) | 94 | `declaration-track:99626da5c3624b9f8f89c8eee8dd2263264a9ad2e7454a2a81440ee9288fccea` |
| 4 | `theorem` | [ofReal_alg](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-alg.md) | 98 | `result-track:84ad1277835a2a57b3c1ea01a5637d188d5cb10dcc518eb28401b34c9f2d5003` |
| 5 | `theorem` | [real_smul_eq_coe_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/real-smul-eq-coe-mul.md) | 102 | `result-track:bde54a4646b8679c897fa6615059af7453f4d735d264f8f6f00e2380bc8b1d8c` |
| 6 | `theorem` | [real_smul_eq_coe_smul](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/real-smul-eq-coe-smul.md) | 106 | `result-track:4e345436366af305326012690afcc77f0c36d20a6f7fe80d16740185054e521b` |
| 7 | `theorem` | [algebraMap_eq_ofReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/algebramap-eq-ofreal.md) | 110 | `result-track:4b49e289c8cb5288abf2d522cff6779065ca675e2207e7ac96edcf8eda87fe6a` |
| 8 | `theorem` | [re_add_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/re-add-im.md) | 115 | `result-track:45239b40e3bea48deb533b6ab04027eb6d0bc619372122572d7e51c8ff614703` |
| 9 | `theorem` | [ofReal_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-re.md) | 120 | `result-track:838837d48a2a77a51e0298a4d30d94db42a46d5e22f09bb412738ecb8f5c533e` |
| 10 | `theorem` | [ofReal_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-im.md) | 125 | `result-track:2b206db66648f0d84156d36e3a893b2856b2dda9dd8950d34eb1ccc6ad3e2876` |
| 11 | `theorem` | [mul_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/mul-re.md) | 130 | `result-track:df08f32126d309d48b245089e2443e174624d8a9f681ca19ecc674c9732a5733` |
| 12 | `theorem` | [mul_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/mul-im.md) | 135 | `result-track:d3209e9bc7d23b0acb3e189b4c40ae223ebe9d73de9dc27abcead2bf9e2feb75` |
| 13 | `theorem` | [ext_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ext-iff.md) | 139 | `result-track:4983c99ef3209ef00427f10b9952a8c45dd422e36bc3a6cd4d6f76c2b16000d9` |
| 14 | `theorem` | [ext](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ext.md) | 143 | `result-track:4325711a0d3f6f7082fee8d456485da7c60b58fd9c64f56fd8bdc7d7f34657ac` |
| 15 | `theorem` | [ofReal_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-zero.md) | 148 | `result-track:ba4df0aa8c0e25b99938b0fd0891416c5fa7e68671f90fabd29be6de0b429c28` |
| 16 | `theorem` | [zero_re'](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/zero-re.md) | 153 | `result-track:74729a296435588b30267f5029661215f060e8e80e1e1747d8815360a96b6cbd` |
| 17 | `theorem` | [ofReal_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-one.md) | 158 | `result-track:c3d4645df03a27f40356d68a00ce1f1fd136081f6b9ee5ccd6af170228fab9a0` |
| 18 | `theorem` | [one_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/one-re.md) | 163 | `result-track:84fa062ef99a0a85bc4b1c017d35548c73114691cfe0cc3c6d7b829d36cb82b3` |
| 19 | `theorem` | [one_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/one-im.md) | 167 | `result-track:e9def169941e2dfcba279f5ed0d93bedab7614357b3a9d73a20be6db832dead2` |
| 20 | `theorem` | [ofReal_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-injective.md) | 170 | `result-track:23c796998de33f82f974b9010122ad6e21ba30e6964532a5274a8a3ef72d6628` |
| 21 | `theorem` | [ofReal_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-inj.md) | 175 | `result-track:d35001c268f115857017b7e10c389f2e84857f5506464318e16c40e14085a8c2` |
| 22 | `theorem` | [bit0_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/bit0-re.md) | 181 | `result-track:adbc99e77c634af77f64ff7736179040965b99c7642de4dac7148d9eb66f694a` |
| 23 | `theorem` | [bit1_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/bit1-re.md) | 187 | `result-track:0aa7cae07277da5e47f16aa915cb784f5453518046d8db7f3f0537fa268f2389` |
| 24 | `theorem` | [bit0_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/bit0-im.md) | 192 | `result-track:a2eedb777efa33fd3151abb0ee4929469865b73632e6868d655c79eef9937340` |
| 25 | `theorem` | [bit1_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/bit1-im.md) | 198 | `result-track:e7ccb19ed39141bb3813c642ba102ff44e6dcfcadd6999d8a8f0c26192502942` |
| 26 | `theorem` | [ofReal_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-eq-zero.md) | 202 | `result-track:790be7e7c27448a8eabfd27e2ae866e3dbf179ca97d6c4a1a82005794ed853c6` |
| 27 | `theorem` | [ofReal_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-ne-zero.md) | 206 | `result-track:44182b4890a14d19992c84293f67d9aa953b3b41009641bf316abf5e44080def` |
| 28 | `theorem` | [ofReal_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-add.md) | 211 | `result-track:7fe76ed58731d92837cc105496568e97c287b80c09b385adb63373da5777a4f4` |
| 29 | `theorem` | [ofReal_bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-bit0.md) | 217 | `result-track:828478383fb137d0a7365903a93686791cc312a461da512cd894cb65de3dbaa8` |
| 30 | `theorem` | [ofReal_bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-bit1.md) | 223 | `result-track:07c56674d3e5e618cf0d0d807d046cba61b5c3b1789c16c57ca99db6f5b1f220` |
| 31 | `theorem` | [ofReal_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-neg.md) | 228 | `result-track:dabdff3430fae2b948cf911121de7121262cb0b44667894216f549035d3955d0` |
| 32 | `theorem` | [ofReal_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-sub.md) | 233 | `result-track:ceea883a8fbcececbd7ff0b4aa2f52321d6eba6fa9ea64d54aebc1cd96625793` |
| 33 | `theorem` | [ofReal_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-sum.md) | 238 | `result-track:ca90e0e3b3c1b5adb731d5d224d9421c6cf11d2263e2e45c9808442e6d2ac9de` |
| 34 | `theorem` | [ofReal_finsupp_sum](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-finsupp-sum.md) | 244 | `result-track:296333f23550baadccbb554218c03ea6696dec03849dc5df60951b061207a543` |
| 35 | `theorem` | [ofReal_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-mul.md) | 250 | `result-track:9fd8f3d3d0d4debf3bb161894491bc7d52fb0165adeea4e427b7a69520a11d17` |
| 36 | `theorem` | [ofReal_pow](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-pow.md) | 255 | `result-track:4f3a1381345388f4a490207464b1ff58416f5a81b4fafc7cc7194255928cc49e` |
| 37 | `theorem` | [ofReal_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-prod.md) | 260 | `result-track:301c2ba40f78af5d5595ef6ab0f8f5932148ac9862dd5aaf3a3408bbf6c28279` |
| 38 | `theorem` | [ofReal_finsupp_prod](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-finsupp-prod.md) | 266 | `result-track:78dfe6d67177811ce92ca7bbe373748aa499d40317453a1f76a7a999a49f7c82` |
| 39 | `theorem` | [real_smul_ofReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/real-smul-ofreal.md) | 272 | `result-track:92e449af028c5c7dcba7bb51546f62b28aa567abd43bd107a7d348068e6e9565` |
| 40 | `theorem` | [ofReal_mul_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-mul-re.md) | 277 | `result-track:e3c86b7b54b8a2f1781c78c8b8e2500ed695ab398baffa6465299c422016f6d7` |
| 41 | `theorem` | [ofReal_mul_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-mul-im.md) | 282 | `result-track:bd48b4da32a21f6a24606233ddb08620e58e1910353c92a36a97980c3c42f112` |
| 42 | `theorem` | [smul_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/smul-re.md) | 287 | `result-track:896db8db2da302f67d64cd3bd2ebcf1dc05ec8f5c45099e423bda8c813ba5444` |
| 43 | `theorem` | [smul_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/smul-im.md) | 292 | `result-track:01207831f4bd8f4ff3ca0ee49c6f8376cc183bfc8483aa57169fe63332dcb587` |
| 44 | `theorem` | [norm_ofReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/norm-ofreal.md) | 297 | `result-track:3b590eeaaa6ba5030bbe0bca0d797b7b83f64e6001a4056787e6712e0be4432c` |
| 45 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/instance-source-edition-4.md) | 305 | `declaration-track:e790b1c0c03a8613e1a0f9e5b4077ab87083207491115a229903e7c8bee197df` |
| 46 | `theorem` | [I_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/i-re.md) | 314 | `result-track:7d878bb0c97a0e5616ebe5202347158a449006e8313884b840c0e662f1e93808` |
| 47 | `theorem` | [I_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/i-im-source-edition-2.md) | 320 | `result-track:f9a6769dd67031254dea49cfbd08089314a4468885aa54202206fcd5f3181a12` |
| 48 | `theorem` | [I_im'](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/i-im.md) | 326 | `result-track:f944c4179a419238198317a6727d75907389eab9aeb98aeb7983e371dbc201a1` |
| 49 | `theorem` | [I_mul_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/i-mul-re.md) | 331 | `result-track:41a83555ff100d13ea5c22ee024aefa80c7083051a504c5b27fc567048b152e5` |
| 50 | `theorem` | [I_mul_I](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/i-mul-i.md) | 336 | `result-track:3474c6810d139eee780980c46bd54c78983756409711d3318abc591c885c5fd2` |
| 51 | `theorem` | [conj_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-re.md) | 342 | `result-track:926bda7357c8c62a247a21ae1635ab9e9bf0ffd04b278d51b6bbd5e73feb6eac` |
| 52 | `theorem` | [conj_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-im.md) | 347 | `result-track:b26aa3d9df1ca40f23ed3a2ecbd115cd46abc0317a90bd928aa80e96745206bd` |
| 53 | `theorem` | [conj_I](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-i.md) | 352 | `result-track:b54b41a78aa08d55b181e9f2e6f1e7929c94ec34855fa5f31a95183bbacb614f` |
| 54 | `theorem` | [conj_ofReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-ofreal.md) | 358 | `result-track:8c0482f3d7b99ae211517576d92da1a6fdecdd794c03900c75495aa196337d02` |
| 55 | `theorem` | [conj_bit0](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-bit0.md) | 365 | `result-track:95346ad62154ac49d871422bab5b07df65f6313bf0f59ac51a8c2c980e500255` |
| 56 | `theorem` | [conj_bit1](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-bit1.md) | 371 | `result-track:f21e16c7fa94b2d5fa4aa2343671477a55b0cb6a5e5f4efeddb0ddf883a20274` |
| 57 | `theorem` | [conj_neg_I](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-neg-i.md) | 376 | `result-track:3f79a9d7ef431149ee9f0674a067a33085fdf929b5fe1dee7feeb94f4e21399f` |
| 58 | `theorem` | [conj_eq_re_sub_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-eq-re-sub-im.md) | 380 | `result-track:3bbe217607c48e3471c3bd0726cc624922a46574724599e55eaef2d7685588bc` |
| 59 | `theorem` | [sub_conj](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/sub-conj.md) | 385 | `result-track:f5e2a10e69dc50828a97dfc9c8f889877b6516970961fb97e3c8e539e28cd95f` |
| 60 | `theorem` | [conj_smul](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-smul.md) | 392 | `result-track:256619855211c53f8a51ca09db1c8bd6764815b290d022aa803aa0df8e72baa9` |
| 61 | `theorem` | [add_conj](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/add-conj.md) | 397 | `result-track:26310c41a54bbb61eda0bbb719d4e4fb639721e2021912d7ee943996deb7b800` |
| 62 | `theorem` | [re_eq_add_conj](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/re-eq-add-conj.md) | 403 | `result-track:db4210d2862313ac4ad8dfe4543a75b47025c251399be547225765b9a1caa7a3` |
| 63 | `theorem` | [im_eq_conj_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/im-eq-conj-sub.md) | 407 | `result-track:ccda224f1f3f2ad38951ffdca036813a0c304b1b493fbf56d234e0253a88d5b3` |
| 64 | `theorem` | [is_real_TFAE](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/is-real-tfae.md) | 414 | `result-track:956b627c3b4eda918602cba46791c027ad97186728d9fd8b840ffc2e8d41b5f0` |
| 65 | `theorem` | [conj_eq_iff_real](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-eq-iff-real.md) | 427 | `result-track:64d5863342367edab477c6b26731a56ea6538b4fbcfe3072d9e0e7109d839ae5` |
| 66 | `theorem` | [conj_eq_iff_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-eq-iff-re.md) | 431 | `result-track:33a249c97a2bb6c8d5afdbb1243eb8f6322c06e4d1daa917ec204b236e4375e4` |
| 67 | `theorem` | [conj_eq_iff_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-eq-iff-im.md) | 435 | `result-track:f162660e6c75b04f03bffe36333b39986db0ce6e0fcff13d6fe5487c2a03a101` |
| 68 | `theorem` | [star_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/star-def.md) | 440 | `result-track:826692a8e69e3e07dce719932af7e1318565b5d87c8d7424e8da5c14ef99f8c7` |
| 69 | `abbrev` | [conjToRingEquiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conjtoringequiv.md) | 448 | `declaration-track:d4945fad0c4720e46360a7aa0f6edc48992513e975f9912c779a91e78566536f` |
| 70 | `def` | [normSq](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq.md) | 455 | `declaration-track:fb052d2b683d4b33317cf6edc5c77f68c81cf2587d0491dcd8d68b53ba82aedd` |
| 71 | `theorem` | [normSq_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-apply.md) | 464 | `result-track:6f989e6ec110c93318e5ae9a25968f9c5c12707d9b9b80b61dd5c767085430dc` |
| 72 | `theorem` | [norm_sq_eq_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/norm-sq-eq-def.md) | 468 | `result-track:c307140297285269cce46e4c0352bdffec83fc714b0d1473c3af998138896528` |
| 73 | `theorem` | [normSq_eq_def'](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-eq-def.md) | 472 | `result-track:d0a99516e50c72d493f9c955073c4cd88630c18983c411eece2f24792362fe50` |
| 74 | `theorem` | [normSq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-zero.md) | 477 | `result-track:1e66609a93878a8069624ee59c76bd3fd3762a9eae92d4f5fc824dee20d0619f` |
| 75 | `theorem` | [normSq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-one.md) | 482 | `result-track:c2949f9ff671cf9d9a35a893f769c15afda9c6bd3bf0a736e7df235db30b9e0f` |
| 76 | `theorem` | [normSq_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-nonneg.md) | 486 | `result-track:105415d67839bf5f4ed9d4dabe0856965634823045e9f430efb6b5a3f3652061` |
| 77 | `theorem` | [normSq_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-eq-zero.md) | 491 | `result-track:dfd22dfd058c49791d1e8059dd57776c37a3e3a9d72d9706e4b215b2b4da2fe6` |
| 78 | `theorem` | [normSq_pos](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-pos.md) | 496 | `result-track:f8f44133342f8ab89d18e103c4835d7f3c36d061ed548c5441a23ba719a8dee3` |
| 79 | `theorem` | [normSq_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-neg.md) | 501 | `result-track:9de85df9bc4cfec0210a4f2dccd13beca74cf84c6be64ecd8a0f02320c9f3b6c` |
| 80 | `theorem` | [normSq_conj](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-conj.md) | 505 | `result-track:2f772c4890add079b1ec148c2c078e87e8321e0663f613ca746c71ca84f73c06` |
| 81 | `theorem` | [normSq_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-mul.md) | 510 | `result-track:c437145992d1fb3cad092fb86fb749972b23adb9ddb31d2fb99e449be83edb47` |
| 82 | `theorem` | [normSq_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-add.md) | 514 | `result-track:bd77ee0e6acbe472d3ba91c9c5cde7c80067538ce927360eb8431a6fb27ec3ed` |
| 83 | `theorem` | [re_sq_le_normSq](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/re-sq-le-normsq.md) | 519 | `result-track:54a376510acbbba3151b71f9ad3cadfaad80eb5ad61fa74356215dd3ef388397` |
| 84 | `theorem` | [im_sq_le_normSq](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/im-sq-le-normsq.md) | 523 | `result-track:413653d816c7ac71228ca03298068c683daa559964c930dd9edf41d4084f7b8f` |
| 85 | `theorem` | [mul_conj](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/mul-conj.md) | 527 | `result-track:87378aa33bbfb10c74ff338ed8b422e1ccd9afa69db04e04d3ed925e5b890efe` |
| 86 | `theorem` | [conj_mul](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-mul.md) | 531 | `result-track:3d376dd5e6360e92fe31708bdbbaf2cc70d7ab69b8bc70d89e1e254c97042bc0` |
| 87 | `theorem` | [normSq_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-sub.md) | 534 | `result-track:d93fb2ee52093aff23ccd16620c574e0da91845eb11709080b2f8684dbb1f50f` |
| 88 | `theorem` | [sqrt_normSq_eq_norm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/sqrt-normsq-eq-norm.md) | 538 | `result-track:87ce7b68a6bb96d1b70e5d98eea3fdadcb2e12356da3c3dbf99d3037d752c428` |
| 89 | `theorem` | [ofReal_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-inv.md) | 545 | `result-track:efa62827cc69b63e9f1b13693b7386d3d56984d049c470a062ddbddcd234939b` |
| 90 | `theorem` | [inv_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/inv-def.md) | 549 | `result-track:0a3605e4f6b230ac82235cc76aca595b21191998f4b3fd4f45f08f1b6137c9bb` |
| 91 | `theorem` | [inv_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/inv-re.md) | 558 | `result-track:233ad69e9a8dba7d4b86a1abb443be5ab7c29a491379522777915fbde07ca200` |
| 92 | `theorem` | [inv_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/inv-im.md) | 563 | `result-track:c5357a2e067b797fa98063b0a56e6e9e73b477e35dac54c4e09f91ce8414ac4b` |
| 93 | `theorem` | [div_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/div-re.md) | 567 | `result-track:ee59f815b7e88f9a3d4b3a388a4fb84f2102e87187b1141f88611e8a7b1ee673` |
| 94 | `theorem` | [div_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/div-im.md) | 572 | `result-track:036c455906a16243ca1be0272c4e13e9c99990107c0be247386dac11d21c028d` |
| 95 | `theorem` | [conj_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-inv.md) | 578 | `result-track:41f4b358e726747e77efc76bfa30760101b088512efec5bc754051228d28e9cd` |
| 96 | `theorem` | [ofReal_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-div.md) | 583 | `result-track:8334e69836d79a1fedf041682e9e63f5922a1f664f527551bf196abca9af8376` |
| 97 | `theorem` | [div_re_ofReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/div-re-ofreal.md) | 587 | `result-track:363fbf3be01aa0683c36420680025126ff5ca82deb153141b3f51186f6d1e637` |
| 98 | `theorem` | [ofReal_zpow](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-zpow.md) | 592 | `result-track:7daa1fdfc94479b874d43e7a2558d47e818afc190f0d1546638e881b9e38ab3d` |
| 99 | `theorem` | [I_mul_I_of_nonzero](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/i-mul-i-of-nonzero.md) | 596 | `result-track:8662c9db7e71ccf6db0ab6d8064396de82a19a9374fa58552f577841703cea0a` |
| 100 | `theorem` | [inv_I](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/inv-i.md) | 602 | `result-track:fb425a7c3801c79ce0bc510a4e67b75d4dbd3caeba23db071ccb4c6d5c821fe6` |
| 101 | `theorem` | [div_I](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/div-i.md) | 610 | `result-track:458d35101f201b4a1829ca2a3ba1141dbfc650f6d378c91a8ccf4987c1a33c6d` |
| 102 | `theorem` | [normSq_inv](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-inv.md) | 615 | `result-track:dd08bb99188ab3b73c657e8c230353142fc760a920776f2a0526bcd7fb1ccc86` |
| 103 | `theorem` | [normSq_div](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-div.md) | 620 | `result-track:5563dc1737c58c035ddf42c5b2802222ace87c1fd18bbef19e9bef29daaa4fa5` |
| 104 | `theorem` | [norm_conj](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/norm-conj.md) | 625 | `result-track:ab2deffce249703a2f74943027650848c992321275f34e3e5068bf5818fab3af` |
| 105 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/instance-source-edition-3.md) | 628 | `declaration-track:b3df9575dbad13f7b61df0ba889431089ee989dac07f1ecb4d0e0f3ae85d4cf4` |
| 106 | `theorem` | [ofReal_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-natcast.md) | 634 | `result-track:30fc4788c87334970452e3fefb843564a12292301949b55463995ced0dbb9633` |
| 107 | `theorem` | [natCast_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/natcast-re.md) | 639 | `result-track:7eba478775d455b63e2702ac4a39e138cbc85110436b05061d3d462abcb944b0` |
| 108 | `theorem` | [natCast_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/natcast-im.md) | 643 | `result-track:1ddafbc184dd34387c11b687342bea0b3a19a6326a08ebca6ff47266fe37336d` |
| 109 | `theorem` | [ofNat_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofnat-re.md) | 647 | `result-track:793a7eecd3ed1f1f513a104fadf91b071cc5446f4ac97cb1404e55b2f9ceb4c0` |
| 110 | `theorem` | [ofNat_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofnat-im.md) | 651 | `result-track:308cc6bc0eb41df996214fef709fe0f21c85f32ac3056cff8b4aa43837a1f93a` |
| 111 | `theorem` | [ofReal_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-ofnat.md) | 655 | `result-track:79df1c190e57258acbdee96db92b73195e055983c62dff32fda45e4c6dce9acd` |
| 112 | `theorem` | [ofNat_mul_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofnat-mul-re.md) | 659 | `result-track:a5c1e9088d8e07bda36312b381aadda1dabd5d61e8de850bf8d63297e200de99` |
| 113 | `theorem` | [ofNat_mul_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofnat-mul-im.md) | 663 | `result-track:472d2f057f029b677d4711d2631ee469e57dc0f02a7cfa2f56113bfed4620e8f` |
| 114 | `theorem` | [ofReal_intCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-intcast.md) | 668 | `result-track:ca91a1f5345a98c8c0db65f4143a68da4a28ba5a087bdc728bf4ef05ab9c460b` |
| 115 | `theorem` | [intCast_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/intcast-re.md) | 673 | `result-track:f5019f656bf6f98df55325ca8921d7ef8907ed678efe0de5f8d96ddae4674aab` |
| 116 | `theorem` | [intCast_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/intcast-im.md) | 677 | `result-track:efbcfb2cb38e640f63a19e48b5fb61aa1b09a329e622a3c24ea4cd009d989d89` |
| 117 | `theorem` | [ofReal_ratCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-ratcast.md) | 681 | `result-track:5554e69d52e4f70f7773c33341c5212add5e5af63ef56eb5ee0e0839953fd309` |
| 118 | `theorem` | [ratCast_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ratcast-re.md) | 686 | `result-track:667fac6459e41bee492b2c7a6a5c0767f9732419c7c3f9e26de26dc5d2d03fc0` |
| 119 | `theorem` | [ratCast_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ratcast-im.md) | 690 | `result-track:cf5a32eda9890d9efca1fcaed6d8672bfe795fbb3dfb68f72371942e73e7516f` |
| 120 | `theorem` | [norm_of_nonneg](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/norm-of-nonneg.md) | 695 | `result-track:0ebda6dff3dfa7b863feb0dbd98f9a4d217add21c0e55e09e0059e21c1a338f7` |
| 121 | `theorem` | [norm_natCast](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/norm-natcast.md) | 700 | `result-track:4d9ffe58c8822bca3fe660c7fb4c9902d41ca3e4cc3b5c751562e5635ace47c8` |
| 122 | `theorem` | [norm_ofNat](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/norm-ofnat.md) | 706 | `result-track:45bee1b1d19a204f4f1481be30369d05fc12ffe586b12a688989cf0e58abf21d` |
| 123 | `theorem` | [mul_self_norm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/mul-self-norm.md) | 709 | `result-track:6a0db0c57d17b6b8eaa78c049e14d55f917f833dae7b7625d2e4409fba4a2e29` |
| 124 | `theorem` | [norm_two](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/norm-two.md) | 715 | `result-track:09e17cb6913da840e02dfac45a9030ddaafc0aa412525b6979a6379acee2bf28` |
| 125 | `theorem` | [abs_re_le_norm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/abs-re-le-norm.md) | 718 | `result-track:0627896149169f88b71e49e84ec51467a3df59bf372870e490537ef11c83de0c` |
| 126 | `theorem` | [abs_im_le_norm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/abs-im-le-norm.md) | 723 | `result-track:fafe2f448b38883007152ad30b332e106dc02ca88beaea8bd09644aa9fea892c` |
| 127 | `theorem` | [norm_re_le_norm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/norm-re-le-norm.md) | 728 | `result-track:b86cad5d89d0be4fd98afb7c438571af4efa5bee094b5ec69a8f3c74430dad2e` |
| 128 | `theorem` | [norm_im_le_norm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/norm-im-le-norm.md) | 732 | `result-track:6619f928204faac63d7ce0b4f1461728bf762af79dba6cdbe57bc16a488a3e84` |
| 129 | `theorem` | [re_le_norm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/re-le-norm.md) | 736 | `result-track:02d1971f110003976cac99cc17b26e001efa523152f6cacb9cf7faadeb135e83` |
| 130 | `theorem` | [im_le_norm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/im-le-norm.md) | 740 | `result-track:2eb53f6b8414ad17473b26f1639f06d725646bc8ca3115efd57870b03ed77893` |
| 131 | `theorem` | [im_eq_zero_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/im-eq-zero-of-le.md) | 744 | `result-track:09f6a3773bfeb5bd27360819462c6dea74126c44985148c8e9157233fa8e7072` |
| 132 | `theorem` | [re_eq_self_of_le](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/re-eq-self-of-le.md) | 749 | `result-track:42ac70374ef071db29e2ed74e0497b8015e40b430be74e339235c3657f0c7fef` |
| 133 | `theorem` | [abs_re_div_norm_le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/abs-re-div-norm-le-one.md) | 755 | `result-track:9472a056a3deb2e928361f42d13610774d98198078aff4e5b44457d4d8ea469e` |
| 134 | `theorem` | [abs_im_div_norm_le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/abs-im-div-norm-le-one.md) | 760 | `result-track:6443b018dd5e87f3609faed2f1a40fdc20e73a4c0334cb4bbf18e10b59f25903` |
| 135 | `theorem` | [norm_I_of_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/norm-i-of-ne-zero.md) | 765 | `result-track:3ba5665eeabb52109789a0dcb715d80a196dc6becc9addc387719f176c11c5f0` |
| 136 | `theorem` | [re_eq_norm_of_mul_conj](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/re-eq-norm-of-mul-conj.md) | 771 | `result-track:cf8b7c155522706f92a99c50957d34f41219a69ffff3e7617f1a534591e743ce` |
| 137 | `theorem` | [norm_sq_re_add_conj](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/norm-sq-re-add-conj.md) | 775 | `result-track:46a7586adfad4e3f04bf29409e2cf3b5a91cefe4f5fa35cc484622f7aaf528de` |
| 138 | `theorem` | [norm_sq_re_conj_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/norm-sq-re-conj-add.md) | 779 | `result-track:e101d7721734810722b34fd786bf6180d386740c2d33db8ea17201fec247407e` |
| 139 | `theorem` | [isCauSeq_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/iscauseq-re.md) | 785 | `result-track:be4eb04265e2f60e0d50f50285e79fc57e3eb76d8f104fe11f9cff39016f48b7` |
| 140 | `theorem` | [isCauSeq_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/iscauseq-im.md) | 790 | `result-track:d6fcc3234796f1b5d9c2f2181192f4642069488d0105824be9b9e6c63139af7d` |
| 141 | `def` | [cauSeqRe](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/causeqre.md) | 796 | `declaration-track:dfd300efc3b30a65b90df51bf5a2c0cb2d9f926e4395ac20dada86e4801f4284` |
| 142 | `def` | [cauSeqIm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/causeqim.md) | 801 | `declaration-track:c457c9d28790e09dcb72aecc9577c37f63e90d5e7d72c430be121ca7ea4a0ee0` |
| 143 | `theorem` | [isCauSeq_norm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/iscauseq-norm.md) | 805 | `result-track:76637839622f283214c5cb7de11cfb8fb9dc95664587447ddf2b9b7f55a96b10` |
| 144 | `instance` | [Real.isROrC](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/real-isrorc.md) | 814 | `declaration-track:2a6dd2bb99dcf58297d834d8702afc7c806a24762c75836258818d07f77dc702` |
| 145 | `theorem` | [lt_iff_re_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/lt-iff-re-im.md) | 843 | `result-track:4f1fc5abbbfda0d808425df9d425a29b183e179cd24d6873d969c4069af48a5a` |
| 146 | `theorem` | [nonneg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/nonneg-iff.md) | 851 | `result-track:5b1dc0107c3adcb020ab6f3e4043ac0c033410dc78b47151a11c64a4f2f38715` |
| 147 | `theorem` | [pos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/pos-iff.md) | 854 | `result-track:3f19290e1d2d809686b181d3eb035ede96b536fd93dd22e0675bd7287d72ceee` |
| 148 | `theorem` | [nonpos_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/nonpos-iff.md) | 857 | `result-track:d2deb64fda32c0400d159935e963cf57062313918b39c56707c889e3402eafec` |
| 149 | `theorem` | [neg_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/neg-iff.md) | 860 | `result-track:5de3ed9cef6b6c0f662d84b413b77b4c60e792aac04c34b08a5f0e0e726e242a` |
| 150 | `def` | [toStarOrderedRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/tostarorderedring.md) | 867 | `declaration-track:9c5f10407d322d24bcd8bebe57250195c2327174f5185266d2218976d293d342` |
| 151 | `def` | [toStrictOrderedCommRing](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/tostrictorderedcommring.md) | 889 | `declaration-track:1f3f1877e9293e5131a3f7ba0992d8f30ec8e83c0c1e21ba2f4b5317fc3937b7` |
| 152 | `theorem` | [toOrderedSMul](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/toorderedsmul.md) | 899 | `result-track:f8b1d1dd3ff538fd166ab1bce88b263d1daf6ecfadebd376ab9482e4895c5d16` |
| 153 | `theorem` | [re_to_real](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/re-to-real.md) | 920 | `result-track:06d022ae480e5eb38db9256111bb95ba4d5c9e2dd64f402219406ffd4098b43d` |
| 154 | `theorem` | [im_to_real](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/im-to-real.md) | 925 | `result-track:ce0e330e0017d9e62fccae2d9c7228fce263fa81ed848708b630d5887b603fd8` |
| 155 | `theorem` | [conj_to_real](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conj-to-real.md) | 930 | `result-track:6cbf87d03a23a518e264c8e33b818506991dc173e28b77ab3c23decb9bb087b8` |
| 156 | `theorem` | [I_to_real](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/i-to-real.md) | 935 | `result-track:5124dd780cd358b473bacd558fd2d9ab498773673f1ef4aebc0aed5300ca43d9` |
| 157 | `theorem` | [normSq_to_real](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/normsq-to-real.md) | 941 | `result-track:90b424a9b128e1f2860bbbfcf4b6ba28e4009696c1f33635e405b0c08b4b5358` |
| 158 | `theorem` | [ofReal_real_eq_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofreal-real-eq-id.md) | 945 | `result-track:d8eb216e5dec021713f86494478d4ea23f0d8c5f5805eb1b723152dfafc0e132` |
| 159 | `def` | [reLm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/relm.md) | 954 | `declaration-track:7a1c414dd07d3bca951150137029c0509d6c96b392e5825530589d88ea35a5d0` |
| 160 | `theorem` | [reLm_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/relm-coe.md) | 959 | `result-track:aeb8dcd901f192cdc02f7eae139927073c0c56714f388e9f57f60df1be348c0e` |
| 161 | `def` | [reClm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/reclm.md) | 964 | `declaration-track:d949287ee6a0ea8ca6a0cc323fc05b90fb3e8708e229d7ad61c7aa87606d5760` |
| 162 | `theorem` | [reClm_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/reclm-coe.md) | 971 | `result-track:e1b4f1af5b1357afffbf3d4f65445d73e485c3fb415305eedfb0e11f87c5d819` |
| 163 | `theorem` | [reClm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/reclm-apply.md) | 976 | `result-track:9c22b6154756d12c1d0d7fa50a0270d377dd220bd994b058c159fb3b611da838` |
| 164 | `theorem` | [continuous_re](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/continuous-re.md) | 981 | `result-track:f843045051c3335985ee3c2f4385c8b02c6fd11b226b9b7b8704e510d386c323` |
| 165 | `def` | [imLm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/imlm.md) | 986 | `declaration-track:46356875647e4dfcfbb22a9b82a5afb9721ad5fd07292886ebb2f6d84b52cb8e` |
| 166 | `theorem` | [imLm_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/imlm-coe.md) | 991 | `result-track:45036ed7f40063e649af3378005337a16bd1da6217c48e963097583e1e70152e` |
| 167 | `def` | [imClm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/imclm.md) | 996 | `declaration-track:94ee0ce6f449b6ccc5493838d3e085e52725a1f300b7c9e08b8e885c752842ef` |
| 168 | `theorem` | [imClm_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/imclm-coe.md) | 1003 | `result-track:8db0eaaa3255e85bffc58631f2fcaf710051682caf08e42a18f6122816080b1b` |
| 169 | `theorem` | [imClm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/imclm-apply.md) | 1008 | `result-track:252b83a2656dc38fb9fd1e1de8b89858c7af595278ab55216fe3ac260d5f159f` |
| 170 | `theorem` | [continuous_im](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/continuous-im.md) | 1013 | `result-track:2ee4f4da6db26d34311be0861d85bdd6701df3a5a2c46bd0d4c1e84c3c53772d` |
| 171 | `def` | [conjAe](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conjae.md) | 1018 | `declaration-track:bb9fc58d3c123462ca0a5051a456676780183f4f4177d0ba7173f8b873a3c1b7` |
| 172 | `theorem` | [conjAe_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conjae-coe.md) | 1027 | `result-track:c20b297425f75f9b0a481b34d4feeccf390e67f92cf464ad0b940ce2f3b7bb00` |
| 173 | `def` | [conjLie](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conjlie.md) | 1032 | `declaration-track:86661995809d45d10c38d0077e39b7cd52cba125a53f1aa6ace69e303507ac8b` |
| 174 | `theorem` | [conjLie_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conjlie-apply.md) | 1037 | `result-track:a2be25a5a2bdf904cccbd3a2965b7b6d37a4000c4f67a26601cea123e9a52bf8` |
| 175 | `def` | [conjCle](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conjcle.md) | 1042 | `declaration-track:7e16c03b9cced689c92e94d5506de96340d1d19b732cc4eeb894da84bcae7762` |
| 176 | `theorem` | [conjCle_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conjcle-coe.md) | 1047 | `result-track:270ba5e3aa88f2b554bed03fc5f9157aa49de2a741b47de6d640dee0a3565faa` |
| 177 | `theorem` | [conjCle_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/conjcle-apply.md) | 1052 | `result-track:26f869e4b00e9ebc76450f9fb4bf927143f58ff9d104fbe9c60b8e5d0f1f17d8` |
| 178 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/instance.md) | 1056 | `declaration-track:20ff1eda254c542dc1b607643e0f4eb2d80994c515ce611e8116d1902e6722a8` |
| 179 | `theorem` | [continuous_conj](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/continuous-conj.md) | 1060 | `result-track:bdd0eef6bb4aba45d50a084ab9597286353a1fcfc96295c97a2bb65dbd7e541f` |
| 180 | `def` | [ofRealAm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofrealam.md) | 1065 | `declaration-track:d196e612ed27e177b94650a3fcfb2f64fec5a2c0a92c274c3f21e00f442e62b2` |
| 181 | `theorem` | [ofRealAm_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofrealam-coe.md) | 1070 | `result-track:928c0064f13891addeeb8b7cb09fe78a8e95b2681dc3374f3c87ec46ce26bca0` |
| 182 | `def` | [ofRealLi](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofrealli.md) | 1075 | `declaration-track:609c96dc2f9dfac10ec10add5ae2c6ae4a2aad1232105ef14920d532819dd37b` |
| 183 | `theorem` | [ofRealLi_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofrealli-apply.md) | 1081 | `result-track:79d8932b0dfaa31bb1ab7fff4f070ec84221c1c214181371134bd209309b6e0e` |
| 184 | `def` | [ofRealClm](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofrealclm.md) | 1086 | `declaration-track:e134f5a3bd44b50a661a4c2428774c0ee70db6f40794c8f8e437f89786d7c0e0` |
| 185 | `theorem` | [ofRealClm_coe](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofrealclm-coe.md) | 1091 | `result-track:98f7bd0a2f86574742ec149b5636ea8e550f48140699f5239be2a57ade1caec0` |
| 186 | `theorem` | [ofRealClm_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/ofrealclm-apply.md) | 1096 | `result-track:2d2b2b6c5641a6791d0374e6f7cf80ca58b4193a921e17e5b21b923e0289337d` |
| 187 | `theorem` | [continuous_ofReal](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/continuous-ofreal.md) | 1101 | `result-track:3be85aaf7a15fbe4f5edcaff1acc04ffaa2d283f86c32b66df8b93fbfd0a21c5` |
| 188 | `theorem` | [continuous_normSq](../../../../../../ComputerScience/TheoryOfData/DataStructures/IsROrCBasic.lean/declarations/continuous-normsq.md) | 1106 | `result-track:a026119e5f4db1d1688f73f6d8acc60537d7b99826455162ad246c745c8b1e57` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24268bae87461a9cf5fff4b118628fd59daa0aa46219db3f3050d3f1bce5742d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Basic/Variant9ddc0e925177e08fea8f990efcd636003216add20d1e1cb6744418afdde43804.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
