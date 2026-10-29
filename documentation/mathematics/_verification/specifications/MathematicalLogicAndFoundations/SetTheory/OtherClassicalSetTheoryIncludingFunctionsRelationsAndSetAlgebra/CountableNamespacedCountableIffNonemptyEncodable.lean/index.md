# Verification target: Countable Namespaced Countable Iff Nonempty Encodable

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fef98c60b7291ec126e63fbb3884d9aa38ae57a",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant53ee4c5ecaae3488a2767be590e2129a9e1448c9c58edd901970f15aebc7a429.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fef98c60b7291ec126e63fbb3884d9aa38ae57a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant53ee4c5ecaae3488a2767be590e2129a9e1448c9c58edd901970f15aebc7a429.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant53ee4c5ecaae3488a2767be590e2129a9e1448c9c58edd901970f15aebc7a429.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Countable.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Finite.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.List` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Finite` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable.md) | 53 | `declaration-track:17fecbee4dd3a04348bec938d1c18bd8e44fb4b9ded5ed0e5588dc0453a89c77` |
| 2 | `theorem` | [countable_coe_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-coe-iff.md) | 56 | `result-track:5a2b5c73e35ad45905c59ee6835ef12520aea880c9ae1416cc09fb8e092c3514` |
| 3 | `theorem` | [to_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/to-countable.md) | 59 | `result-track:6da1b0f5527023722ba097ca8921c50247365403824c4ce3f17bbdd195de2d15` |
| 4 | `theorem` | [countable_iff_exists_injective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-iff-exists-injective.md) | 64 | `result-track:18f0a411530559a3de5a2a87138d8c879aca89eb87a07ff9f7b9b2681a64b157` |
| 5 | `theorem` | [countable_iff_exists_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-iff-exists-injon.md) | 70 | `result-track:96d82c922f33c57e3503a5790b6ba2e241a48149ad6b426fc351e4620babff14` |
| 6 | `theorem` | [countable_iff_nonempty_encodable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-iff-nonempty-encodable.md) | 73 | `result-track:bd915edbd8dd9be32f48be73a0679338d86fef7d4ebc60ebb6bd90cb44b0244c` |
| 7 | `def` | [Countable.toEncodable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-toencodable.md) | 79 | `declaration-track:e167d1e5dc5cea0672886444583e8fd4f7b2d15654a9b85be00459c413f86c2d` |
| 8 | `def` | [enumerateCountable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/enumeratecountable.md) | 86 | `declaration-track:5731885f62a5b76b362e5968b5afbfc95689150678897fd2f61e14d85ee1674d` |
| 9 | `theorem` | [subset_range_enumerate](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/subset-range-enumerate.md) | 91 | `result-track:792a2c6545ca70cda2a1078da3c058834939dbcb570b4ff2f2cb168eef42ac8b` |
| 10 | `lemma` | [range_enumerateCountable_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/range-enumeratecountable-subset.md) | 97 | `result-track:ebf8ceacb07f0222b2e74d46e88470b7415f72a10dae3c9a9033d461265e6387` |
| 11 | `lemma` | [range_enumerateCountable_of_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/range-enumeratecountable-of-mem.md) | 105 | `result-track:567da538a2174d6c50d1ea165ded78db7f4217206692f1e8e767347f71396b07` |
| 12 | `lemma` | [enumerateCountable_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/enumeratecountable-mem.md) | 111 | `result-track:2dcf1a7830d2f34ad2ddaba31916644d9996bb61fd3e7729faad0c5a2d0bd30d` |
| 13 | `theorem` | [Countable.mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-mono.md) | 119 | `result-track:74982745c1be427ea769cabcfce4bb4ce3a24d86cc51e58b2dde497e667c744d` |
| 14 | `theorem` | [countable_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-range.md) | 122 | `result-track:4a4d5a4a5c366dd0b94f40770b2b2b7a7a0c3c748a320504fef133c323f2246e` |
| 15 | `theorem` | [countable_iff_exists_subset_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-iff-exists-subset-range.md) | 125 | `result-track:0b1ebfa75e1a350b6a2fb8497b62180a2e88af594656f0d80e68aa7f99b8ae14` |
| 16 | `theorem` | [countable_iff_exists_surjective](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-iff-exists-surjective.md) | 135 | `result-track:e28417d5d7db42ef807a1802b4a81990e265438509f3e9122a601724aee188db` |
| 17 | `theorem` | [countable_univ_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-univ-iff.md) | 141 | `result-track:8985b03fbc2d58fda05cda644e2843eba33041b5bdce750b6a19bba7fcf5f64c` |
| 18 | `theorem` | [countable_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-univ.md) | 144 | `result-track:6a1b1c97b08441a954f8ac9af1ff7af289e4b05c1d98959639c86189928611f3` |
| 19 | `theorem` | [not_countable_univ_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/not-countable-univ-iff.md) | 147 | `result-track:0e323fc7f621bd2dc93c4e960a4f74ca6caca20b5d19bb286f3760c40db35fee` |
| 20 | `theorem` | [not_countable_univ](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/not-countable-univ.md) | 150 | `result-track:6f20f4aa6ae4cb6a5117e6d34f78d763a5a6ec8ae8174a0b7ac3b7e6e60a816b` |
| 21 | `theorem` | [Countable.exists_eq_range](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-exists-eq-range.md) | 155 | `result-track:02f7436e69faeaa7f8859e555ba6f52a5922c1b08aa884a37e05db9a8018ef1d` |
| 22 | `theorem` | [countable_empty](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-empty.md) | 161 | `result-track:62f51572bc66996d75ed2b34f1622567c2156c9a3536757f72cb4a6e2fe9563a` |
| 23 | `theorem` | [countable_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-singleton.md) | 163 | `result-track:bd8ee67015ac04760709a58d916a994d103c6a5417e184c25f6b617f843e0502` |
| 24 | `theorem` | [Countable.image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-image.md) | 165 | `result-track:695fc92f9a62c71d1e1c034b86a5ef49596e75a3ce3dafbada4e10d64fa88a40` |
| 25 | `theorem` | [MapsTo.countable_of_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/mapsto-countable-of-injon.md) | 170 | `result-track:1f831655a87920bfda58d488b858b88e3c62b3e889219e5683d0f208d5ed052f` |
| 26 | `theorem` | [Countable.preimage_of_injOn](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-preimage-of-injon.md) | 176 | `result-track:2eed530c8060457adf4399e1df96a4d0d18183e72091715912feb1019fe23a8c` |
| 27 | `theorem` | [Countable.preimage](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-preimage.md) | 180 | `result-track:ae29ae88cb993962c5c2950c5024cc9551b8cae2f4b4978e6bd701692c375caa` |
| 28 | `theorem` | [exists_seq_iSup_eq_top_iff_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/exists-seq-isup-eq-top-iff-countable.md) | 184 | `result-track:14ae5771e7c39015a163c53591975bc54f8863023098ff2fb1eecb215e20e872` |
| 29 | `theorem` | [exists_seq_cover_iff_countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/exists-seq-cover-iff-countable.md) | 201 | `result-track:c0c56f2de01678b6162daa5ff2380a26514c8d0ff4208a61d09b62cf85a45226` |
| 30 | `theorem` | [countable_of_injective_of_countable_image](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-of-injective-of-countable-image.md) | 206 | `result-track:c34f2ab00e997987a0235db3fd6bae4a27ad1de4a7fdfafca5937c4e73aea6bc` |
| 31 | `theorem` | [countable_iUnion](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-iunion.md) | 210 | `result-track:4b56997449b13dfb0ae75b25d92e5ee12b8c4788da61b5c0af3157ba70efa7ee` |
| 32 | `theorem` | [countable_iUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-iunion-iff.md) | 217 | `result-track:d36e4865898e75b9620b7b8347692c5af73dd95abad1b9268b73472205d34411` |
| 33 | `theorem` | [Countable.biUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-biunion-iff.md) | 221 | `result-track:2458b5d56f953c7908f7801349fa4bb600c5e8261b83af98a50c35be3a0324a0` |
| 34 | `theorem` | [Countable.sUnion_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-sunion-iff.md) | 226 | `result-track:2d8b4da0bd6b1084eebca97419c2abdee9f59d358ab9ff6e0b4da9fb3a6cf1ae` |
| 35 | `theorem` | [countable_union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-union-source-edition-2.md) | 234 | `result-track:280a54dc55d187842f151c7b13d9bd12286cc52ae0b81af9c66db93b946fb7cc` |
| 36 | `theorem` | [Countable.union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-union.md) | 237 | `result-track:13421be0ce1af8c9ac6e03199bc686b6262a79cbc4b91b9c47aac7c21a6d0b9f` |
| 37 | `theorem` | [Countable.of_diff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-of-diff.md) | 240 | `result-track:e0b11237c8f18e02fcc7122a1bf3cd4f45a8d5ecb836058333d201dddd4a7274` |
| 38 | `theorem` | [countable_insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-insert.md) | 244 | `result-track:c9188f740dc9ce1ced0359a7f48287e05577445f7141ee4af9da44f0c5b8265f` |
| 39 | `theorem` | [Countable.insert](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-insert-source-edition-2.md) | 247 | `result-track:ff7c48d1464c64ef37be01b80e7ca1983d7fb46f7d111451ac3c95e89cf4567c` |
| 40 | `theorem` | [Finite.countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/finite-countable.md) | 250 | `result-track:6334985d7cd2981f738c224ed0acab3044b03398d1fa6d702405aea7672fdcb1` |
| 41 | `theorem` | [Countable.of_subsingleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-of-subsingleton.md) | 254 | `result-track:77160630c1a1e85aedcb89b913fbc5e03cc8b434a161baf48bde6f190e4d8a8e` |
| 42 | `theorem` | [Subsingleton.countable](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/subsingleton-countable.md) | 257 | `result-track:34fed8241eea00ab10c3314972f5657d117a8a94a381ce4207fa0d2c9a060fa5` |
| 43 | `theorem` | [countable_isTop](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-istop.md) | 260 | `result-track:1cd94af3d1d3305383193702d9a35d8a36361ad3aaa4077a94129c0a59b5bc67` |
| 44 | `theorem` | [countable_isBot](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-isbot.md) | 263 | `result-track:982ccb3100196da8d37b44a80b2cc4b60d62ebcdb40616b2a19905b07de0ae2d` |
| 45 | `theorem` | [countable_setOf_finite_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-setof-finite-subset.md) | 267 | `result-track:5979b950ae057821dfefc3846d5272972af45e0e24a38b1223023e1327e087e5` |
| 46 | `theorem` | [Countable.setOf_finite](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-setof-finite.md) | 277 | `result-track:14a043756586dabfaed0a6558f6f98ed6dd9488b94ffb200ad60e97d1cd13ada` |
| 47 | `theorem` | [countable_univ_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-univ-pi.md) | 280 | `result-track:bc90ad71ffb3ebe946016cfa5b1983b52cec080f423f832a0687e66fc3fb777b` |
| 48 | `theorem` | [countable_pi](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-pi.md) | 284 | `result-track:06189cdaa9cc3222610b7e7845d60573047857dc4ff99294283fae0a1be58dbe` |
| 49 | `theorem` | [Countable.prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-prod.md) | 288 | `result-track:f977853874da49a370c906610910903e8dbb0217f033a0c82172284cc122138a` |
| 50 | `theorem` | [Countable.image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-image2.md) | 292 | `result-track:66c351d915a6c4516f9ae192f2fbeb0c8c66801ecfac850796e5ab939dadfe20` |
| 51 | `theorem` | [countable_setOf_nonempty_of_disjoint](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/countable-setof-nonempty-of-disjoint.md) | 299 | `result-track:1f7ff3a63fbe1254c5b3e7a97670cb0b82fa9c84e0e12f0ee2f0e9772e77ab7c` |
| 52 | `theorem` | [Finset.countable_toSet](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/CountableNamespacedCountableIffNonemptyEncodable.lean/declarations/finset-countable-toset.md) | 320 | `result-track:47296b3f12a34898d43089a54c28437b78899e7d14df1d2e8adaf85bb74d7905` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc6b8235fd1d0dc72d999052982f06d0e162bfb0f23179aa2eda0a7baf8d1e9e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant53ee4c5ecaae3488a2767be590e2129a9e1448c9c58edd901970f15aebc7a429.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Countable/Variant53ee4c5ecaae3488a2767be590e2129a9e1448c9c58edd901970f15aebc7a429.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
