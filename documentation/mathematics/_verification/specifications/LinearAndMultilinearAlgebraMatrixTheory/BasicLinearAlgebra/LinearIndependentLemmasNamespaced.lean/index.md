# Verification target: Linear Independent Lemmas Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4b7c89d186030cf8b9d7e23f901e9ce0bd0fee4",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4b7c89d186030cf8b9d7e23f901e9ce0bd0fee4`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fin.Tuple.Reflection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Finsupp.SumProd` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.LinearIndependent.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Pi` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Fin.Rotate` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LinearCombination` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NoncommRing` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Fintype.linearIndependent_iff'ₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/fintype-linearindependent-iff-source-edition-2.md) | 81 | `result-track:e768796521183cd0ce2a0ba73228611fc37d01c4d8ff018626ccc7cfca322999` |
| 2 | `lemma` | [LinearIndependent.pair_iffₛ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-pair-iff-source-edition-3.md) | 86 | `result-track:e1fdb743bfd89bb53168fbd24de97784a3aa301fe565313e48b0a388ed6a5140` |
| 3 | `lemma` | [LinearIndependent.eq_of_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-eq-of-pair.md) | 91 | `result-track:25645dbc1aa29e47d9641e4baeba29c37179bda1972f88a94ec51a9bacb101d7` |
| 4 | `lemma` | [LinearIndependent.eq_zero_of_pair'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-eq-zero-of-pair.md) | 95 | `result-track:07c99a3f4382335e93c6ea729ac03282f2dd796078f9426f68610e1b27833d4b` |
| 5 | `lemma` | [LinearIndependent.eq_zero_of_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-eq-zero-of-pair-source-edition-2.md) | 100 | `result-track:b3bd3e4d33f69b5d9af82a1cf7ff3bfd27eae6c6471e11cb352a667862cf446c` |
| 6 | `theorem` | [linearIndepOn_iUnion_of_directed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-iunion-of-directed.md) | 108 | `result-track:93a14c6686e8a8f37d25e781a601b58c04f4b6638c808fecff1c43e706410a0c` |
| 7 | `theorem` | [linearIndepOn_sUnion_of_directed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-sunion-of-directed.md) | 122 | `result-track:63fa7244202db0fc4ef8c4c95b3d903c7dc03203bb3c5a1edef74640594ef889` |
| 8 | `theorem` | [linearIndepOn_biUnion_of_directed](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-biunion-of-directed.md) | 130 | `result-track:9de5b78b1c09f41e12b39a6eaae7edda5927f5431023d51284eba565c5d6a3e1` |
| 9 | `theorem` | [LinearIndependent.iSupIndep_span_singleton](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-isupindep-span-singleton.md) | 146 | `result-track:8460b26956600176898222bfc4f8c7ecf806e35cf4579e8f296e9edcacd28a95` |
| 10 | `theorem` | [linearIndependent_inl_union_inr'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-inl-union-inr-source-edition-2.md) | 169 | `result-track:b2b1a6178572e5b43b253e29731895c3fac6cd39071dde393ca54a7f8242e47a` |
| 11 | `theorem` | [LinearIndependent.inl_union_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-inl-union-inr.md) | 179 | `result-track:680e8b348787272ee2e93be3d9fce9b0122a97673bffa2fd1ec8442be0c665fc` |
| 12 | `theorem` | [exists_maximal_linearIndepOn'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/exists-maximal-linearindepon-source-edition-2.md) | 200 | `result-track:ed32cbe8f6293950e05116eb0d69b4698b5ed333f0f06bb8d16e770c474f7f75` |
| 13 | `theorem` | [Fintype.linearIndependent_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/fintype-linearindependent-iff.md) | 240 | `result-track:ae47f0963ba7b7004d62aa83a95446ec74a46cd6b7266f34f3f8e49ab32ee291` |
| 14 | `lemma` | [LinearIndepOn.pair_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-pair-iff.md) | 246 | `result-track:4d55c43c51ca9607f9935ccea509d080ab31d53abfc157325a2b7c78692186f9` |
| 15 | `lemma` | [LinearIndependent.pair_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-pair-iff.md) | 264 | `result-track:477a71243c8d9ad0a69ac3c2e6f43b0e7adbc0410750aa2253f74c743cd5a56e` |
| 16 | `lemma` | [LinearIndependent.pair_symm_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-pair-symm-iff.md) | 270 | `result-track:4944050bfcca6f6509fcbc3f710daff8ff29e3b6f6abc7b5f71aed14a4310047` |
| 17 | `lemma` | [LinearIndependent.pair_neg_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-pair-neg-left-iff.md) | 278 | `result-track:db937a01f5e036f29d5971e19cb5d12fd7326f2fc952f242044d930d807ee16e` |
| 18 | `lemma` | [LinearIndependent.pair_neg_right_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-pair-neg-right-iff.md) | 283 | `result-track:65334f97497df68ab2a49ac33ef026f042120393193682adb8311dd6f254722a` |
| 19 | `lemma` | [LinearIndependent.pair_smul_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-pair-smul-iff.md) | 291 | `result-track:10b4cbd3ca108e79182d0bfc2e1e64d3e893f7c5a5d27cdba06561979f202c58` |
| 20 | `lemma` | [LinearIndependent.pair_add_smul_add_smul_iff_aux](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-pair-add-smul-add-smul-iff-aux.md) | 299 | `result-track:950d3c1f44fb158f97a73679af5ddb1218a2783324d342aa3faa612ab3f96e60` |
| 21 | `lemma` | [LinearIndependent.pair_add_smul_add_smul_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-pair-add-smul-add-smul-iff.md) | 324 | `result-track:2b786c11011a6e7715cd732c691a3bd4d329d6bf8c8ff082ef12772fe9e1b570` |
| 22 | `lemma` | [LinearIndependent.pair_add_smul_right_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-pair-add-smul-right-iff.md) | 350 | `result-track:0b658317ea3a10266627ba23e407e953f33da209377ad940ba7286577f6796de` |
| 23 | `lemma` | [LinearIndependent.pair_add_smul_left_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-pair-add-smul-left-iff.md) | 356 | `result-track:e519775e7b93d0f48cc88237210656a3c4d6db9a511e417aab1a6f7f584695c6` |
| 24 | `theorem` | [linearIndepOn_id_iUnion_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-id-iunion-finite.md) | 375 | `result-track:547b9ceec857e438f4972c594615c9b1e793d86fc7590e12fc36ee0f27bae2aa` |
| 25 | `theorem` | [linearIndependent_iUnion_finite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-iunion-finite.md) | 395 | `result-track:e4250bd4445680a2e7d5b301ebe132b16f2687b51930c182005c030d6369a89d` |
| 26 | `theorem` | [exists_maximal_linearIndepOn](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/exists-maximal-linearindepon.md) | 422 | `result-track:4ed310a182fb36d18ea70b1e850d4235b88ebea7f710d19bc13922f3d9212927` |
| 27 | `lemma` | [linearIndependent_algHom_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-alghom-tolinearmap.md) | 458 | `result-track:c2fe8d9d1047b70a480e55a3ca2bc489d5219bd9ddac80351872a2eff33b8a25` |
| 28 | `lemma` | [linearIndependent_algHom_toLinearMap'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-alghom-tolinearmap-source-edition-2.md) | 466 | `result-track:f37b5278d207e15ba5e88523ddfc23bdfaa4e8818c2b1e46d738b59bc7597f57` |
| 29 | `theorem` | [mem_span_insert_exchange](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/mem-span-insert-exchange.md) | 489 | `result-track:64a199d16835a0d5330c1a9aaa85ba30dfce54e79ee9b112f76ef8d815380f71` |
| 30 | `theorem` | [LinearIndepOn.insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-insert.md) | 499 | `result-track:e6876dcfd03dc1c4f3ae3014aac42cdf193af4a2cdfa48763a0229af6947423d` |
| 31 | `theorem` | [linearIndependent_option'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-option-source-edition-3.md) | 508 | `result-track:c9391908bfc40a76504cce7831b5561534a2ff271761ca09305f9fe5d74ca9b5` |
| 32 | `theorem` | [LinearIndependent.option](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-option.md) | 519 | `result-track:10069b0ca3f9d7eaadad8ba95ab7d8bc38d9f28d63b345e3682652e5ee1601f0` |
| 33 | `theorem` | [linearIndependent_option](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-option-source-edition-2.md) | 524 | `result-track:263108263298965c6bdf579974b3cdbb44082a6ac2e7642a9f3d6d3656a8725e` |
| 34 | `theorem` | [linearIndepOn_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-insert-source-edition-2.md) | 529 | `result-track:f69606afc24d6b08ba5498de346b2c2605f6cf3d945f26c99cfc3abe8ba62550` |
| 35 | `theorem` | [linearIndepOn_id_insert](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-id-insert.md) | 540 | `result-track:faf847fa075fd08a5b8c18365ee6c33dcc4a73857207e641a82a1cd86f08dd97` |
| 36 | `theorem` | [linearIndepOn_insert_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-insert-iff.md) | 546 | `result-track:6d4a1c1f101a158414800b101e9834a61bdf415857edf599f751a6c0c7cf09d8` |
| 37 | `theorem` | [linearIndepOn_id_insert_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-id-insert-iff.md) | 552 | `result-track:87e8fd3350b54af056ac07ef5c66ebefa83a517adf620bd9530d637712821b87` |
| 38 | `theorem` | [LinearIndepOn.mem_span_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-mem-span-iff.md) | 556 | `result-track:22b5b70edff3ee119cd75e663f6684222cf2b18805a061534a1a68797cddb8bb` |
| 39 | `theorem` | [LinearIndepOn.notMem_span_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-notmem-span-iff.md) | 563 | `result-track:26897d104a777efaa5286e922fdd20c85e06f6d2d02e2c32a12b705c25adb605` |
| 40 | `theorem` | [LinearIndepOn.mem_span_iff_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-mem-span-iff-id.md) | 570 | `result-track:5817ee13db4a00127b86b18f7b196b33ee5dea91de922e2bc9145d7fd5fa2ffc` |
| 41 | `theorem` | [LinearIndepOn.notMem_span_iff_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-notmem-span-iff-id.md) | 574 | `result-track:13ba5449c6f1ebe155597802230ff86028bc58344c52f10a3c04cc3756e903b3` |
| 42 | `theorem` | [linearIndepOn_id_pair](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-id-pair.md) | 581 | `result-track:6e9c8369a86697c11fff6628278091eabd906aa3f6b6d66cbb6367a813661946` |
| 43 | `theorem` | [linearIndepOn_pair_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-pair-iff-source-edition-2.md) | 589 | `result-track:df61cf2c76296c2522fc7d1506303cd03f771110758eef4b3eb533ab3df8aea7` |
| 44 | `theorem` | [LinearIndependent.pair_iff'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-pair-iff-source-edition-2.md) | 596 | `result-track:63011fa539f984dfa7dd6d78d8665ad7dc27de2a37b2e7330326ab912a27f5c4` |
| 45 | `theorem` | [linearIndependent_fin_cons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-fin-cons-source-edition-2.md) | 602 | `result-track:dbb9d26dcb9a963059957cb84e02d09223452542724c16d5c10eb0c37732d6e4` |
| 46 | `theorem` | [linearIndependent_fin_snoc](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-fin-snoc.md) | 608 | `result-track:5aea41125bc01f4e18bddc0699b0d153608b0f010589f3b6414d0f4f0ae44b4b` |
| 47 | `theorem` | [LinearIndependent.fin_cons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-fin-cons.md) | 616 | `result-track:39867f77692b978203a5255d96abe22502d42cdb03bf818db986d7fa35ade783` |
| 48 | `theorem` | [linearIndependent_fin_succ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-fin-succ-source-edition-2.md) | 620 | `result-track:f0115ba7219b75c80ffb08a7701324a59586a38f1020e1ffe42965d47f9f9b03` |
| 49 | `theorem` | [linearIndependent_fin_succ'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-fin-succ.md) | 625 | `result-track:16af479004629430902a7c22395d638d8ffc9bea883761ad40bcc0dd9d683027` |
| 50 | `def` | [equiv_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/equiv-linearindependent.md) | 632 | `declaration-track:bf12341febeadcc6e5fe454ea84d1f5d59c845188cba8f0d86f2f7e9dd731ef4` |
| 51 | `theorem` | [linearIndependent_fin2](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindependent-fin2.md) | 644 | `result-track:7a55daa5499177e51d1203d1ec751fcbdbcb8dc5867c6d1992c321b9b92a715e` |
| 52 | `theorem` | [exists_linearIndepOn_id_extension](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/exists-linearindepon-id-extension.md) | 650 | `result-track:0c8d84eb911250625fda8c6f17956bd68d7925b3b4312d09a45b2ae4e37d11e1` |
| 53 | `theorem` | [exists_linearIndependent](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/exists-linearindependent.md) | 666 | `result-track:af7eeae6512c21d2b7898d49f538aedc0a54fea83eca1ed5fbff1996151a6bd6` |
| 54 | `lemma` | [exists_linearIndependent'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/exists-linearindependent-source-edition-2.md) | 673 | `result-track:ff92d8cd877c72dc62e82083f04f1a9a219c264b1250db74d7d9725d28c2074f` |
| 55 | `def` | [LinearIndepOn.extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-extend.md) | 694 | `declaration-track:b2d97e7980f2aa0f5a3f604cb9dbb2287b5b513c805270c16e404cc8c581802b` |
| 56 | `theorem` | [LinearIndepOn.extend_subset](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-extend-subset.md) | 699 | `result-track:d20ba3c4070f73bfb37f20b1e6f9d27875690c4c3a9b520ecf4c7084951e3047` |
| 57 | `theorem` | [LinearIndepOn.subset_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-subset-extend.md) | 706 | `result-track:889aa90ee8bd9603b178bd1b983fdb2382a6246c58b2f6ffb1157c6c5712497f` |
| 58 | `theorem` | [LinearIndepOn.subset_span_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-subset-span-extend.md) | 713 | `result-track:c3612b42e628458661b30795db277cac1f1be7264dad091de17ee58c56824345` |
| 59 | `theorem` | [LinearIndepOn.span_extend_eq_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-span-extend-eq-span.md) | 721 | `result-track:b4a8740b5e814a421240dcaeaad08b3a7fc082037608dea6e770fc6862b97f01` |
| 60 | `theorem` | [LinearIndepOn.linearIndepOn_extend](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/linearindepon-linearindepon-extend.md) | 728 | `result-track:7a1ae16d34fd706edecc8e9dc8019e948c391044c905b016ac96a7d97ec336e2` |
| 61 | `theorem` | [exists_of_linearIndepOn_of_finite_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/exists-of-linearindepon-of-finite-span.md) | 737 | `result-track:38fad1d0a59e119facac172253e2f5d88f27f7cb6526ad148591dcd74592e144` |
| 62 | `theorem` | [exists_finite_card_le_of_finite_of_linearIndependent_of_span](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearIndependentLemmasNamespaced.lean/declarations/exists-finite-card-le-of-finite-of-linearindependent-of-span.md) | 802 | `result-track:c026c001cdfae536db3f0c908b2a386033c1f347395ade5d5588501c425f3c98` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9ef897bbfc163a7645b7a1ca8b3865fcd7877e664b7c2e5b58c7c4d410ec20a8 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Lemmas/Variant83c7de278c7bf9d23c38a885a7545cea2f96d8d2e91dae3532e9d9794369eacc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
