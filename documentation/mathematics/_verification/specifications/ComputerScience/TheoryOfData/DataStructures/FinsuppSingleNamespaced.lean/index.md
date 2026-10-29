# Verification target: Finsupp Single Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a619a37cb40a85e38f5c63f95a445504d234752",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a619a37cb40a85e38f5c63f95a445504d234752`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Finsupp` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Indicator` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single.md) | 51 | `declaration-track:19a55cd0ed0d4b6605fec0009f15e6a94c06f80703d46652ebfc44d92e28067c` |
| 2 | `theorem` | [single_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-apply.md) | 67 | `result-track:0bb716f2ef0e850e187bf7a4ba55dcfcb305669c3d2c3bf8207005c755c28ff2` |
| 3 | `theorem` | [single_apply_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-apply-left.md) | 71 | `result-track:0e8538bad760e2e9ea6b6f167b2d9c694e1fe74d6bc7fe52db39c911a36589a4` |
| 4 | `theorem` | [single_eq_set_indicator](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-eq-set-indicator.md) | 74 | `result-track:2c52bb5875aa8ee859ded07a3668c96aba8a339b78f34aeaaacb2705975546a1` |
| 5 | `theorem` | [single_eq_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-eq-same.md) | 80 | `result-track:752342ea0feaf569281a8ec839122f42dba5ffa9ae56bb2f436fa35943b3c1dd` |
| 6 | `theorem` | [single_eq_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-eq-of-ne.md) | 84 | `result-track:f6fda10984de80a3ba2281886cca980643fa62f5ff1b10a1efb2a464bf5d0ee6` |
| 7 | `theorem` | [single_eq_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-eq-update.md) | 87 | `result-track:11b03c19397fcacdb633368d82ce13fb41198be5751f7dbad0f57a3c5bc7359a` |
| 8 | `theorem` | [single_eq_pi_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-eq-pi-single.md) | 91 | `result-track:44c74a0b64da6735b40f3a96014a50d1e724bd3965486ccaa23f39022b0b2609` |
| 9 | `theorem` | [single_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-zero.md) | 95 | `result-track:72aa7f06b99bd7045b9fa7fc0e9ad477dca2105f9f51d402e062c1999508472b` |
| 10 | `theorem` | [single_of_single_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-of-single-apply.md) | 99 | `result-track:b50824a56511c496418d508b0c2092a5b9fedeed35831e103209e1d059320711` |
| 11 | `theorem` | [support_single_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-single-ne-zero.md) | 108 | `result-track:8841de40e50b4a17b0036de2090be5cc7a55970bf0b8e866b8f4bf79c060a4c8` |
| 12 | `theorem` | [support_single_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-single-subset.md) | 111 | `result-track:411de2a5262d113a81c58e1154ba15711a34589c9eec399daff65304c6465a7e` |
| 13 | `theorem` | [single_apply_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-apply-mem.md) | 116 | `result-track:e193e94e3e312d9488ba0ddcf881027b489b3a1230ed5eb526c8eea491056c70` |
| 14 | `theorem` | [range_single_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/range-single-subset.md) | 119 | `result-track:10fbdb956a54188c790a7101af0ce75757abd8c1ff5d9cac6ff86f43fb8e24a2` |
| 15 | `theorem` | [single_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-injective.md) | 124 | `result-track:81379d3d5eeec4acf95a0a33110c8874f2cb21c65a3576307e7f7af7847a53b7` |
| 16 | `theorem` | [single_apply_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-apply-eq-zero.md) | 128 | `result-track:d94eb1324d9602208fcb628ebcc2250ccfa27110e28da458cffaad0917822d24` |
| 17 | `theorem` | [single_apply_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-apply-ne-zero.md) | 131 | `result-track:28940b00ff9a931e61b752cb577fc05c48cca3201dd6688b50b60cd276aaae16` |
| 18 | `theorem` | [mem_support_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/mem-support-single.md) | 134 | `result-track:115673623d4cfbe4c8d941df18d4fc0f7ad63e0068e25dca35df5742882a77e8` |
| 19 | `theorem` | [eq_single_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/eq-single-iff.md) | 137 | `result-track:10c1b49be099058a64abcf305bcc05103d12ea0595f0f926f7c089407566af60` |
| 20 | `theorem` | [single_eq_single_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-eq-single-iff.md) | 144 | `result-track:0c326c8f320e6ab021ddc9789fb9e123428f963fe8b8ab0611a03079543e03f2` |
| 21 | `theorem` | [single_left_injective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-left-injective.md) | 162 | `result-track:20727a2dd45fa75f8d0f33c9503e031a3ed9a6ba613e4caffcdb7e49dd11fe8e` |
| 22 | `theorem` | [single_left_inj](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-left-inj.md) | 165 | `result-track:6bff1d145992e191e0a9af80cf49a87724497e6991b63034c3db423522d329c9` |
| 23 | `lemma` | [apply_surjective](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/apply-surjective.md) | 168 | `result-track:126c28957462f73efeb1f81af5be21e78c86d94925985e753c9ee4ffdefa621f` |
| 24 | `theorem` | [support_single_ne_bot](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-single-ne-bot.md) | 171 | `result-track:1a9752e4ed23647443092471523a34789b24479c3cd048ab7e8e412c2f9ce641` |
| 25 | `theorem` | [support_single_disjoint](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-single-disjoint.md) | 174 | `result-track:a0ee5f7b53e4496381edd725d7306e0391e79216abff331958ab90d31e82df1c` |
| 26 | `theorem` | [single_eq_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-eq-zero.md) | 179 | `result-track:87a942652591e31bec0d60a428512c5cfc7b9decf0bf76c996f314827db0be60` |
| 27 | `theorem` | [single_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-ne-zero.md) | 182 | `result-track:2a8b5d020bd56f07483f27a1d1976c6266a685ea5f56fd65fed32cf8d748f119` |
| 28 | `theorem` | [single_swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-swap.md) | 185 | `result-track:4ce371a3acdcd8d23cabbfd1a8af7a0b3a30fb08b4da2ae2655e1b49b9541f5a` |
| 29 | `instance` | [instNontrivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/instnontrivial.md) | 188 | `declaration-track:98414a687d073e49c10652dfa986f8e0e29e6f355234b2ed89b0ccb1bd6ece2f` |
| 30 | `theorem` | [unique_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/unique-single.md) | 193 | `result-track:d2c3be1c95b78f932930353e02ccc7bdcf8e0a9f6b89f6ff74aad1dae9e2c90d` |
| 31 | `theorem` | [unique_single_eq_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/unique-single-eq-iff.md) | 197 | `result-track:275a0c7c1b7d4e9cef8d0d45312d9bc00d0f29c056bf43bb4897f511cf701594` |
| 32 | `lemma` | [apply_single'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/apply-single.md) | 201 | `result-track:4290bc9ae3591d13765bd50672c3c9db4a7eb1bc5a45328bb08ff0e31c3daa25` |
| 33 | `lemma` | [apply_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/apply-single-source-edition-2.md) | 209 | `result-track:e5eaa64c6ef4c82a1c43839d99040d2619d2ca01cecdb8bd7c1375e18deb218c` |
| 34 | `theorem` | [support_eq_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-eq-singleton-source-edition-2.md) | 214 | `result-track:7429cdb46996deb04084306449e4d27b4274b2e7e03db8859b8ad93c70cd7211` |
| 35 | `theorem` | [support_eq_singleton'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-eq-singleton.md) | 221 | `result-track:2cd2f7b9565b1791c0707e0feca7b6797101145fe866d6afe13c4d2813d58f29` |
| 36 | `theorem` | [card_support_eq_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/card-support-eq-one.md) | 228 | `result-track:0b2e64fce6f54f75bfa8eb278194f36398f451e5b1b30821d48dbe9bb1d94de0` |
| 37 | `theorem` | [card_support_eq_one'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/card-support-eq-one-source-edition-2.md) | 232 | `result-track:5ef249d570ecc0f22091f9594d2c1fdabe6cf241a8eb145ce791e6ca5beed045` |
| 38 | `theorem` | [support_subset_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-subset-singleton.md) | 236 | `result-track:47eebd032f249519dc0c4c07105f08777517f4b8d5d9302dd92a0303b0ae2fc7` |
| 39 | `theorem` | [support_subset_singleton'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-subset-singleton-source-edition-2.md) | 239 | `result-track:8e66a608a2dea0c652812f1028c69e0a7df7ffe126136d774e73889827900440` |
| 40 | `theorem` | [card_support_le_one](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/card-support-le-one-source-edition-2.md) | 243 | `result-track:31af213bde33984ee93738d5218ca3ecccce7a5d27f0c8d9b007a54a5ea134b3` |
| 41 | `theorem` | [card_support_le_one'](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/card-support-le-one.md) | 247 | `result-track:16206f320f095963cb513fbcaa4658a45360beed34d7364402c520a504c03671` |
| 42 | `theorem` | [equivFunOnFinite_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/equivfunonfinite-single.md) | 252 | `result-track:1fcb653439533e79a01a3c7f860a310dbc9852dc6cfae66fdd9e3c8d50eda4c9` |
| 43 | `theorem` | [equivFunOnFinite_symm_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/equivfunonfinite-symm-single.md) | 258 | `result-track:df8d2d219f59ef5ec6d36df567575efdd57441218a047617e6de49760878d36b` |
| 44 | `def` | [update](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/update.md) | 276 | `declaration-track:92bdb1183c9dab64c750453fbf672f583f92bf830ece799d1740df51f937806c` |
| 45 | `theorem` | [coe_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/coe-update.md) | 299 | `result-track:d1b17ad7c1e8e30b872625bf552811a6c8c2184044fa81e0dbd9fa762f878b46` |
| 46 | `theorem` | [update_self](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/update-self.md) | 306 | `result-track:a5299da36e6bf42a9059613322cf98e080b6e2093a659f258bbb9d1190a6cca0` |
| 47 | `theorem` | [zero_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/zero-update.md) | 312 | `result-track:3b92d4ca2cc50cf8cfef1c2e653e7d14840df2c83b38b83c7ac88d3efad4f299` |
| 48 | `theorem` | [support_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-update.md) | 317 | `result-track:f06e047e6a7c32bcd0b686d648245931871ec667e588f36572f3d5df215d7c24` |
| 49 | `theorem` | [support_update_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-update-zero.md) | 324 | `result-track:198cfe59770737838149f683c7e5d959a655b2dfc9cd6e78b912c7dd51c87df3` |
| 50 | `theorem` | [support_update_ne_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-update-ne-zero.md) | 331 | `result-track:e3cda489a3d126409145283a27297add2801d60a8ba9ea69a870a507cb410cdd` |
| 51 | `theorem` | [support_update_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-update-subset.md) | 337 | `result-track:4037381609190b3af44c20ccce89efeff64062296a1a0db1c79771b580bc5447` |
| 52 | `theorem` | [update_comm](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/update-comm.md) | 345 | `result-track:7c22408e20162279331761c3881e3478e0ccf7d66193d7dd2497ff68cc5ebfcb` |
| 53 | `theorem` | [update_idem](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/update-idem.md) | 350 | `result-track:549ea177f4904a43ded97ce1d8f686036417e2ead9528502e0d54aad5f3de29a` |
| 54 | `def` | [erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase.md) | 368 | `declaration-track:e501f185cc1d94c8ed07606a19486e04704170ff12ef21d27ef56628e652f23b` |
| 55 | `theorem` | [support_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-erase.md) | 383 | `result-track:894ae218f0777c5c1899a2eb11a852abebd6a742f69c4987fa98fd93ccfd6351` |
| 56 | `theorem` | [erase_same](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-same.md) | 390 | `result-track:9bcdcf8c59a93e0e9b2e932c1fa486f64da916bd98752c3607b59f0f305b0253` |
| 57 | `theorem` | [erase_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-ne.md) | 394 | `result-track:c6a349792cdf8c4c073cd0ffeeccdd22efab000b5c3fa25fb5b581e5f3ce8840` |
| 58 | `theorem` | [erase_apply](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-apply.md) | 397 | `result-track:28f1895cd591711d63412ccbd03931454dfdd9f602140c52ba8639abc89f1639` |
| 59 | `theorem` | [erase_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-single.md) | 403 | `result-track:f0a074f158f8b72e1d054c932dad9d8499c5f1ca75b4be9d81c385d87aaecfff` |
| 60 | `theorem` | [erase_single_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-single-ne.md) | 409 | `result-track:8e397522e3fc6f3690460f8b0d1b863ee4ba73d0b69e177c9f272fea5caea174` |
| 61 | `theorem` | [erase_of_notMem_support](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-of-notmem-support.md) | 415 | `result-track:b4771b4083107eb8f03ad7cc7b4b88333226384dfc2554481881d08f48b93c0e` |
| 62 | `theorem` | [erase_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-zero.md) | 422 | `result-track:4d08332e7e44e101f024d397139b09367c77b8efeff733dd7f2808839720cdb6` |
| 63 | `theorem` | [erase_eq_update_zero](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-eq-update-zero.md) | 425 | `result-track:f4f3ec388475cdbc42d5663c587eb9f10475037601b360d1ef720bc746d67461` |
| 64 | `theorem` | [erase_update_of_ne](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-update-of-ne.md) | 430 | `result-track:b591fd9c68303eadcbcc5bbd19b46305b017b0219939330eb4af0e753244b841` |
| 65 | `theorem` | [erase_idem](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-idem.md) | 435 | `result-track:cff3ceb679c61685e6d861ef1e17fbc5292bbfde940d28cf6e6f3fd38b586333` |
| 66 | `theorem` | [update_erase_eq_update](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/update-erase-eq-update.md) | 439 | `result-track:bed78267b00910d016835e1e91f67151d900591ebff6371043fe56baf963051c` |
| 67 | `theorem` | [erase_update_eq_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-update-eq-erase.md) | 443 | `result-track:876766bdd9008e78244a4b0e15e42ad3ad72c098d1c6c83b4b3487821700a6be` |
| 68 | `theorem` | [mapRange_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/maprange-single.md) | 456 | `result-track:029d55ca827dc896ab7ffca862c61260930abb71e163f8516e360edea570705e` |
| 69 | `theorem` | [single_of_embDomain_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-of-embdomain-single.md) | 470 | `result-track:2d0ce81bc4125fedc7e4225cdc7f2a05650a4437101a47b44897e584835c5a67` |
| 70 | `theorem` | [embDomain_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/embdomain-single.md) | 489 | `result-track:03d7a26d919ce66c0738b0bcfd636f084b73d7c9eab7635ed3a9a818291ccfe2` |
| 71 | `theorem` | [zipWith_single_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/zipwith-single-single.md) | 511 | `result-track:7337c8ecc2553b0e563700f302692111412f600af402c42117365a8ea99a9009` |
| 72 | `theorem` | [single_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-add.md) | 529 | `result-track:36ecf83f309384b3ce162ff7fd9696810d8988035b95ba4aeafef0ba44a89a8f` |
| 73 | `theorem` | [support_single_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-single-add.md) | 532 | `result-track:159b59b3128e79cd094b5329aa767c04a4ad190173f8a802fc6510541a9b54cc` |
| 74 | `theorem` | [support_add_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/support-add-single.md) | 539 | `result-track:c629efed906c27fd360ee35ca4aaec9aef4b2111eb232cf9da8346ef2c8e8424` |
| 75 | `lemma` | [Finsupp Single Namespaced](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/finsuppunique-symm.md) | 546 | `result-track:7aefe2f336d29ec8d2036bb0901bcb32a8bb1976617a4a94e9052b669f692545` |
| 76 | `def` | [singleAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/singleaddhom.md) | 556 | `declaration-track:31202216c40b0ce3b08fe4c8205f8aeed4159f0c533f53b0d30cebd6d48c2393` |
| 77 | `theorem` | [update_eq_single_add_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/update-eq-single-add-erase.md) | 561 | `result-track:a84b0e66f013e9fb13f4149d7dc24af0163ec57f529160158b13481bcf0de0d6` |
| 78 | `theorem` | [update_eq_erase_add_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/update-eq-erase-add-single.md) | 569 | `result-track:f091648f9305a5c544cd264bb29cbb773f0f766ff6a48998ca581cc33db13477` |
| 79 | `theorem` | [single_add_erase](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-add-erase.md) | 577 | `result-track:4b9c5366cc99d3aa6009f866d34d9723b99327cf0c8139d09c44100f6a26d120` |
| 80 | `theorem` | [erase_add_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-add-single.md) | 580 | `result-track:857dc6cf3e72199c3f2ee39c5d64dfc2868ed48241598b4ca2cc1ace656a83a1` |
| 81 | `theorem` | [erase_add](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-add.md) | 584 | `result-track:06a382bcfe24a7b0f9797005cc3ca55fbfbf9e34d98dbdda8eefcb3e92b79ca7` |
| 82 | `def` | [eraseAddHom](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/eraseaddhom.md) | 591 | `declaration-track:43b6b3bff0bda11daaab52f84f966a614f4e2f0085713d920e132482a4b7bb2b` |
| 83 | `theorem` | [induction](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/induction-source-edition-2.md) | 597 | `result-track:8c24b271aeb7f4d1c6a55e1e259c007287d0b8e19ce777afb2d0e61541396a06` |
| 84 | `theorem` | [induction₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/induction.md) | 614 | `result-track:30dfb06d1712e54d4da6fdaf9cd91b218a0882cb243093b1cedc6778b887e512` |
| 85 | `theorem` | [induction_linear](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/induction-linear.md) | 631 | `result-track:0d76e170dcda6943663d2236a7ab1e499d70f38df58a15379ea04a4cc6951bf5` |
| 86 | `theorem` | [induction_on_max](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/induction-on-max.md) | 643 | `result-track:1828517c7556991f94ae9d4d3a352086c6832ba288cbfa7d753a91451e9c52ad` |
| 87 | `theorem` | [induction_on_min](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/induction-on-min.md) | 659 | `result-track:34204c5cbe47d197e3a6c9703d086a76468c9e56a594b679cf607326b25049b1` |
| 88 | `theorem` | [induction_on_max₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/induction-on-max-source-edition-2.md) | 667 | `result-track:826724d6d79b356de2c147ccac623e09387f3c8e84146af8d275e1e69f34811a` |
| 89 | `theorem` | [induction_on_min₂](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/induction-on-min-source-edition-2.md) | 683 | `result-track:72ee896984c0f35d0ad277a0c22830ddc202c73dcf0f55acaebc801b7040bcfe` |
| 90 | `theorem` | [single_add_single_eq_single_add_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-add-single-eq-single-add-single.md) | 692 | `result-track:2d8fc1ce69433c52e7432506328ff250072972f5809f45997d747b5bb8a14b71` |
| 91 | `theorem` | [erase_eq_sub_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-eq-sub-single.md) | 700 | `result-track:9473e9674deab6f4d2bede712c042da30dd4802c6fe99e60894c07290b6d32b5` |
| 92 | `theorem` | [update_eq_sub_add_single](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/update-eq-sub-add-single.md) | 706 | `result-track:ecc82527bfa24683dbd0615727f079a88718b3ee1931c305ca0c23c1fb3a8f14` |
| 93 | `theorem` | [single_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-neg.md) | 715 | `result-track:3bc19e6dc0e118aa2f318cdb9378e884084d32cb2a734b3eaf40288e67e09d63` |
| 94 | `theorem` | [single_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/single-sub.md) | 719 | `result-track:1546f422ac368cbdfb633909d9ecb8f6ebf84e7848da603c42d3cb2572b11630` |
| 95 | `theorem` | [erase_neg](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-neg.md) | 723 | `result-track:d35cd962b98abb4b6f2368f7186a30acadbc45ae59d211a7fbd1f7961ddeb5de` |
| 96 | `theorem` | [erase_sub](../../../../../../ComputerScience/TheoryOfData/DataStructures/FinsuppSingleNamespaced.lean/declarations/erase-sub.md) | 727 | `result-track:8fbffbd4e3bd5eb31e696ea76a7f296b15a806f766d6a89640a0165c7749b0bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=c5d314b26ed9021076616fea4809e4d66f680d5f1552ca9a1e42162353f64424 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Single/Variant0ceb81320414a0f560c88d6bb9dd6d866fa25c507653fba2fe4f59510c48fee6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
