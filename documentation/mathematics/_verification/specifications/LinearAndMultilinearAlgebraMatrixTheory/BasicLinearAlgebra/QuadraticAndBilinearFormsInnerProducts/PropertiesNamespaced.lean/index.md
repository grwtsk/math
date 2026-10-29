# Verification target: Properties Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40681f592b9648400ded4751c49b81f69c55a0c2",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40681f592b9648400ded4751c49b81f69c55a0c2`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.BilinearForm.Hom` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Dual.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRefl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/isrefl-source-edition-2.md) | 62 | `declaration-track:3a8ca27d5e86509fb7c52bfcd96101adc15f6f2002b29a530812ad2f2f138d66` |
| 2 | `theorem` | [eq_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/eq-zero.md) | 66 | `result-track:e1ead67632190b1d22503b9fcced38680cd5c7cdd08d9533a25947d45ae6e224` |
| 3 | `theorem` | [neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/neg.md) | 68 | `result-track:0ab162f350e5deeadc1ea4f8c29b77c8b64a5f8d7bbf76adce6112daa8824e0f` |
| 4 | `theorem` | [smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/smul-source-edition-3.md) | 71 | `result-track:aa334db19d4363936ad610d7ad820a0a185ad433e8bd5a897d079a6a03e31380` |
| 5 | `theorem` | [groupSMul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/groupsmul.md) | 77 | `result-track:92555fe41a173985b8b992aff438f0e1bcd1de6b0f0e0639e78d780bf87fd711` |
| 6 | `theorem` | [isRefl_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/isrefl-zero.md) | 84 | `result-track:0df75db0da1854e4e05653e23f57973ef106432a3fc728ac427891fbe5c6a7c5` |
| 7 | `theorem` | [isRefl_neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/isrefl-neg.md) | 87 | `result-track:30c18d97b9d64ed9521d68c00c32726fad78ae63f586ce945eea051864fa10ff` |
| 8 | `def` | [IsSymm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/issymm.md) | 91 | `declaration-track:796f323bb80a98f563bf43040b48880bc1b1dbc9345a8a0de764da719f37c518` |
| 9 | `theorem` | [eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/eq.md) | 95 | `result-track:0c7c65dc120cb9b890f119de1eaef09058149c28c1797683caab0887df4d9207` |
| 10 | `theorem` | [isRefl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/isrefl-source-edition-3.md) | 98 | `result-track:6fad8ece04f1a109f2f296621c05b5d4a29c3819a188705b28f01593143eebf5` |
| 11 | `theorem` | [add](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/add-source-edition-2.md) | 100 | `result-track:20a7bc74fffe575586b52f4014bfb903c7b3d4ea6b6a58dae9a975ed526bc31f` |
| 12 | `theorem` | [sub](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/sub.md) | 103 | `result-track:1e39c30c9ef3fe24076674c279b4108f1907b300933dc1e2b419f8aa7d7f443d` |
| 13 | `theorem` | [neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/neg-source-edition-2.md) | 106 | `result-track:2f503c414495467462cc322ac2e58afcaf3e92890697cf7eecb71db11facdd8f` |
| 14 | `theorem` | [smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/smul.md) | 109 | `result-track:1c712d60026c504f27b100bf55baa9d73c8554538f0ee61902a35c927930e7d2` |
| 15 | `theorem` | [restrict](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/restrict.md) | 114 | `result-track:ac7f475986798ff51eea421cc3ce608f42232b38937a85c27b243ec7d22afb21` |
| 16 | `theorem` | [isSymm_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/issymm-zero.md) | 120 | `result-track:a87bd374cbae4d4fca7e16f82f3686a9c04110761e35dbdd062e34fdad71e734` |
| 17 | `theorem` | [isSymm_neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/issymm-neg.md) | 123 | `result-track:5f9e4807331c1ae182755cbbb9825487a97e250d295084c04188c7154efc5e1e` |
| 18 | `theorem` | [isSymm_iff_flip](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/issymm-iff-flip.md) | 126 | `result-track:c01cabac5e4567b21f79ba2c7d7471983d8db5dc2458c92a46d2274c4c884252` |
| 19 | `def` | [IsAlt](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/isalt.md) | 130 | `declaration-track:575b38fe04afff74d43dd95373c31775653079edf55ff655c7d5854dc994f1fd` |
| 20 | `theorem` | [self_eq_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/self-eq-zero.md) | 134 | `result-track:2fee62340fee8720278dde5037f675638052424a2575930c31729a38c0089719` |
| 21 | `theorem` | [neg_eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/neg-eq.md) | 136 | `result-track:3fc2d51adfd9d68b6e33de01fc244a7e21a5d3a226873edfc625978e655db9ad` |
| 22 | `theorem` | [isRefl](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/isrefl.md) | 138 | `result-track:0f301866e7f13c611baec89badd9c0d783e13d894a18a9afe1acf843247e4949` |
| 23 | `theorem` | [eq_of_add_add_eq_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/eq-of-add-add-eq-zero.md) | 140 | `result-track:75d26c6b57916ebaca6c94c3680670482de9308f4cc8d2424ca07969bf096b96` |
| 24 | `theorem` | [add](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/add.md) | 143 | `result-track:1fcf9ba8e4c1658bbeb339fd95b5631cd07328c51653b70c9377324f85e92086` |
| 25 | `theorem` | [sub](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/sub-source-edition-2.md) | 146 | `result-track:ee6dfeda2f2fd20f3152166dfec103e97f0c55f52f1e47f5f20cf0eec9e479c5` |
| 26 | `theorem` | [neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/neg-source-edition-3.md) | 149 | `result-track:f067685a0e6b8f479c24833cb37b1a14a2a01b15229d448d03971c40a577b5fc` |
| 27 | `theorem` | [smul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/smul-source-edition-2.md) | 152 | `result-track:4543afc1c72bebd4acae8c4a16e60ac9c684bd7195b84163e2a810cdf524801a` |
| 28 | `theorem` | [isAlt_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/isalt-zero.md) | 159 | `result-track:8f88945199b4e39dc3fafbea8105792f948953500dc2e13a48a86dddc01a770c` |
| 29 | `theorem` | [isAlt_neg](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/isalt-neg.md) | 162 | `result-track:aadf346cac4fa9c5a240acec9d68d9b88c10ff2aa3cb02397e6929238782e953` |
| 30 | `def` | [Nondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/nondegenerate.md) | 177 | `declaration-track:7c394d91553b5ca3cc2e57190bc9719044a9827dc54054959f11dfcb251bf8d5` |
| 31 | `theorem` | [not_nondegenerate_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/not-nondegenerate-zero.md) | 185 | `result-track:4817e1a48c74aa3a077aeb30a3de3a69d161f6f0977729b08e463d0aa382cc90` |
| 32 | `theorem` | [Nondegenerate.ne_zero](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/nondegenerate-ne-zero.md) | 194 | `result-track:7711e525f93adf49e08880fbbdade88fc1acbea5d21e82636c6f052e8cb4f6b3` |
| 33 | `theorem` | [Nondegenerate.congr](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/nondegenerate-congr.md) | 197 | `result-track:7d740d36891ea738a7c728755a533f13b7cf66240dfa335a318921c7d0393330` |
| 34 | `theorem` | [nondegenerate_congr_iff](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/nondegenerate-congr-iff.md) | 203 | `result-track:061da070e731cec3f8404b1d6ead3aee0d6c32a362ce6b0eb0d98267d647e358` |
| 35 | `theorem` | [nondegenerate_iff_ker_eq_bot](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/nondegenerate-iff-ker-eq-bot.md) | 210 | `result-track:ca81849866e979b121ffebb87580b5ebe122b19120df6ba637d5685bb345a614` |
| 36 | `theorem` | [Nondegenerate.ker_eq_bot](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/nondegenerate-ker-eq-bot.md) | 215 | `result-track:e3cd012ef894ea508a5f650ce0a08cc7e5631d610e6a705861f9953d8761f5db` |
| 37 | `theorem` | [compLeft_injective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/compleft-injective.md) | 218 | `result-track:3c84a0aca4799003324a5302e802385e1efc99b159f9c8f13ebfa1f6475977c3` |
| 38 | `theorem` | [isAdjointPair_unique_of_nondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/isadjointpair-unique-of-nondegenerate.md) | 225 | `result-track:c081891681538d8a68aa13388d6ee7d4843d9f3eb90d1e2844d96c9cbc646d07` |
| 39 | `def` | [toDual](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/todual.md) | 236 | `declaration-track:a027ecce013fddaf823d9fa8193479bb8e4f6abd1a7705caf5cf368608d09a8d` |
| 40 | `theorem` | [toDual_def](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/todual-def.md) | 240 | `result-track:10f4666e6c041ee9a411a82c875cf3fd5be6f15d4144477c293f812b541d0e72` |
| 41 | `lemma` | [apply_toDual_symm_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/apply-todual-symm-apply.md) | 244 | `result-track:f6bffd168496aaecbfd091414acee837064bbba750f0082bf524bfa1390f1046` |
| 42 | `lemma` | [Nondegenerate.flip](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/nondegenerate-flip.md) | 250 | `result-track:0891b907c40c872a7aaeb2d36f4e7e66746116a63d368f91b857353eaa1c4458` |
| 43 | `lemma` | [nonDegenerateFlip_iff](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/nondegenerateflip-iff.md) | 258 | `result-track:3a2aeb8b0da20344decfff8be8609774bbe6699d4abef029694c19440c17d8cd` |
| 44 | `def` | [dualBasis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/dualbasis.md) | 270 | `declaration-track:f18f5e30d563900276534fe7f679ac741a51dc02336a73686435e9992dc3c775` |
| 45 | `theorem` | [dualBasis_repr_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/dualbasis-repr-apply.md) | 276 | `result-track:058d609a49fdd7c96a117cf3123b03e67450703a66f8abacf1112ccf31095e83` |
| 46 | `theorem` | [apply_dualBasis_left](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/apply-dualbasis-left.md) | 285 | `result-track:12beab9680e0593b2e78d60b2b9d15819c9209575159b7d7afb358accf403a02` |
| 47 | `theorem` | [apply_dualBasis_right](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/apply-dualbasis-right.md) | 291 | `result-track:1c39fe8ac16e24ced7e0c2d24a57e9d1cb345e2c38da48f76ea05f2cc67be239` |
| 48 | `lemma` | [dualBasis_dualBasis_flip](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/dualbasis-dualbasis-flip.md) | 296 | `result-track:eb9340b402afefa8225b7d0e3ea48db0cf3f685a5b48e78b5f72f75c8a2e45a6` |
| 49 | `lemma` | [dualBasis_flip_dualBasis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/dualbasis-flip-dualbasis.md) | 305 | `result-track:1d28c08c548952c905b25e3a7cd3af79e7455ee2fe583910c35d59762b8af686` |
| 50 | `lemma` | [dualBasis_dualBasis](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/dualbasis-dualbasis.md) | 311 | `result-track:fc19ffd2904788da91842ea4e3b1c121722b865c6c7ebf8b894ae6f7fa8db358` |
| 51 | `def` | [symmCompOfNondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/symmcompofnondegenerate.md) | 325 | `declaration-track:d588a194667a52c75ff780bcc9b8653c4a295dc6b16f5e85d8835ce48cdcfeba` |
| 52 | `theorem` | [comp_symmCompOfNondegenerate_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/comp-symmcompofnondegenerate-apply.md) | 329 | `result-track:18a3b67b1c94b435293c587fe9c7240845ddcca8ab929d011dc62f697c5ce04d` |
| 53 | `theorem` | [symmCompOfNondegenerate_left_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/symmcompofnondegenerate-left-apply.md) | 337 | `result-track:e7e01a9a73e6907b19dedb40af585ff786afa70b4aaf49f96862b6e61ceceacb` |
| 54 | `def` | [leftAdjointOfNondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/leftadjointofnondegenerate.md) | 344 | `declaration-track:e203461cce0221e548cfbec4784f65b252c5d4961936580e3911476cc25c33c9` |
| 55 | `theorem` | [isAdjointPairLeftAdjointOfNondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/isadjointpairleftadjointofnondegenerate.md) | 348 | `result-track:4afe5736e26caea67a3aabca696e10e0fc5b50804df84409dfcb7f4fd0b6ebec` |
| 56 | `theorem` | [isAdjointPair_iff_eq_of_nondegenerate](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/QuadraticAndBilinearFormsInnerProducts/PropertiesNamespaced.lean/declarations/isadjointpair-iff-eq-of-nondegenerate.md) | 354 | `result-track:a0ecc99cd0d9749b307e4ed473b654ae6286bc55ce1ab3168fe85f1445d23476` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=670c02d6b40ce0e6dbaa864842879707aeeaf982fc1829d1df687ba4ee5a7b4a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Properties/Variant11fe0330186140f8af2d682cc68992a8426cdc171825d6b26a95db3d16066363.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
