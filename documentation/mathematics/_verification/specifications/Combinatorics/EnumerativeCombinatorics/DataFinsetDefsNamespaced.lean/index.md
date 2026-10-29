# Verification target: Data Finset Defs Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7e3d355a455d7daa90ffaad1eeadd173e613f89",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant4b76d52e9641123b94663319e9822463e19d5869cf0f6bd26e3953b2ab9e1d83.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7e3d355a455d7daa90ffaad1eeadd173e613f89`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant4b76d52e9641123b94663319e9822463e19d5869cf0f6bd26e3953b2ab9e1d83.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variant4b76d52e9641123b94663319e9822463e19d5869cf0f6bd26e3953b2ab9e1d83.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pairwise.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Hom.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/finset.md) | 80 | `declaration-track:72ca1ad2f243e073115956f57afec58d236640391713ff9466e24c664606b72e` |
| 2 | `instance` | [Multiset.canLiftFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/multiset-canliftfinset.md) | 86 | `declaration-track:1b0dfb161e695f84089043759b876d53c50f1dcd62129139f56522150b624c6b` |
| 3 | `theorem` | [eq_of_veq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/eq-of-veq.md) | 91 | `result-track:a0504ff399a8ef5c457202c4097ae5ce9111dca242c54897c43abd5577f14dec` |
| 4 | `theorem` | [val_injective](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/val-injective.md) | 94 | `result-track:7e385d8ba59e7f961edd5e8550437f05297c178d5f5b6627dfb9d505826eecc4` |
| 5 | `theorem` | [val_inj](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/val-inj.md) | 97 | `result-track:7df99c48f2d9f53faac6baa7440f935181eb4d242eb6b148f30babc807110382` |
| 6 | `instance` | [decidableEq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/decidableeq.md) | 100 | `declaration-track:cfccfab7d97512c56a02a710f1d98d76cbdb414cd848ccee15d92550e13148c4` |
| 7 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-12.md) | 106 | `declaration-track:ea2a87bd15cdbb33d9d8ab6a1bfae62e3e372e2a972f4dca713be250e1a7088b` |
| 8 | `theorem` | [mem_def](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/mem-def.md) | 109 | `result-track:36833eb2ece9eaffdb60c7ce9c3741927158f16701a0aeeede9b0565c4f81672` |
| 9 | `theorem` | [mem_val](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/mem-val.md) | 115 | `result-track:956be7e78cc892d835e3cb76d4e5aafb4a3b1080dd0e4ccf9d0b0aef60c34e5e` |
| 10 | `theorem` | [mem_mk](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/mem-mk.md) | 118 | `result-track:82910ee2c4d37393b385cd41568fe3f985e12d2b82f08d23d73de3559ca0f438` |
| 11 | `instance` | [decidableMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/decidablemem.md) | 121 | `declaration-track:0dcadc06ef13300e7151c0bfab3d0b3704cca042cb31e6a9d2cf80aff29f6933` |
| 12 | `lemma` | [forall_mem_not_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/forall-mem-not-eq-source-edition-2.md) | 124 | `result-track:becad49f2aaae11d72f1bce838e8b0a0b3aa573f4fc4193b7202cbb9c6ee2d9b` |
| 13 | `lemma` | [forall_mem_not_eq'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/forall-mem-not-eq.md) | 125 | `result-track:8590b38f27a004a39aa9c2f65b9013832ced223dfef84774700190c98c409afb` |
| 14 | `def` | [toSet](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/toset.md) | 130 | `declaration-track:d8a2438a3805e20e012b0f915e6834b30805db1b280bee0e416058bb9144d03a` |
| 15 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-7.md) | 134 | `declaration-track:714cde8bd1af02048bb93afa5fe9d9990266647ab8f7f5a651339b399de40dff` |
| 16 | `theorem` | [mem_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/mem-coe.md) | 138 | `result-track:10072b7552d29cd93ae679a3805a9888997cb7aaff6d651e5edde5376f933efe` |
| 17 | `theorem` | [setOf_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/setof-mem.md) | 142 | `result-track:e6492220a8a0b2d6fd32b29787a2cc647af925dc0232ed1fd551a0d67e3ebcba` |
| 18 | `theorem` | [coe_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/coe-mem.md) | 146 | `result-track:2767b87e83f897adead042622b9cb2ae030c4416ab8715adbb9bc13940ac6e5c` |
| 19 | `theorem` | [mk_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/mk-coe.md) | 149 | `result-track:ab952841a4f404e621b19a3ab35ccad4fcb2e72e10020af53c1743fa9fde85a7` |
| 20 | `instance` | [decidableMem'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/decidablemem-source-edition-2.md) | 152 | `declaration-track:2bcdee60dbab99f037f7b8364413bda4bb8b8b00de0cdca2dbabc9ffc2093930` |
| 21 | `theorem` | [ext](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/ext.md) | 158 | `result-track:b205f17e4cd6cb00bb2c9a084a12fd20b65996141855b43f6d0c23539c439ee6` |
| 22 | `theorem` | [coe_inj](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/coe-inj.md) | 162 | `result-track:9aaa78d8cecb50bb9bb0c3d47d2fd12bff23a90518e420c9ff6c097ad9e0b3b1` |
| 23 | `theorem` | [coe_injective](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/coe-injective.md) | 165 | `result-track:6f270b7c1327a91125ac9c76fe859848f8f4e61541f63a154628d02c83e180b1` |
| 24 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-9.md) | 171 | `declaration-track:7bbdfb736013761eb14e586a935cd1fd8ea1368c0fce9c2cfe04d20161ab86ac` |
| 25 | `theorem` | [forall_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/forall-coe.md) | 174 | `result-track:7465e7d55219f4fa210f9dedf44f9b6e5c4214c1f89b69818ccebc1252684670` |
| 26 | `theorem` | [exists_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/exists-coe.md) | 178 | `result-track:aced98245b04538236d17171a7f0cfe25c0ebd3b63f0df204eae6d2bb479a032` |
| 27 | `instance` | [PiFinsetCoe.canLift](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/pifinsetcoe-canlift.md) | 182 | `declaration-track:70c5ded72da0829bf97bd5f966daafc8fa1e6b8ac64d8050837301e2effafd64` |
| 28 | `instance` | [PiFinsetCoe.canLift'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/pifinsetcoe-canlift-source-edition-2.md) | 186 | `declaration-track:bfd8e1b1352f120f489eb40f6932880c9022c1e6383fb449bd7c68ea85510909` |
| 29 | `instance` | [FinsetCoe.canLift](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/finsetcoe-canlift.md) | 190 | `declaration-track:196b4ef83204005fb5ef1fe2955f74ad12e42a639823c1601f87093e0ee5d2a5` |
| 30 | `theorem` | [coe_sort_coe](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/coe-sort-coe.md) | 194 | `result-track:71b324fc12c9169dd56993870ecaba2792891ead8b0e462a2890b55f1631a3a7` |
| 31 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-3.md) | 204 | `declaration-track:4cbe1d0419556f43b922d88b3dc0165b26d92a11a02821af2a7b6d34a46ebc4b` |
| 32 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-13.md) | 207 | `declaration-track:f0ad36653cd86b79a4b2ef2407c7be7cec7e8cd7c2945e78afbd4744f9d3a3de` |
| 33 | `instance` | [partialOrder](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/partialorder.md) | 210 | `declaration-track:bcbaad297fbfd73991e88c5772713a0d3a223340bf9bcda1b70c818920da8557` |
| 34 | `theorem` | [subset_of_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/subset-of-le.md) | 217 | `result-track:cbcb3786801d68465e2480bd330e633f80c5a51c1a9ae154c22648bc56521eba` |
| 35 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-6.md) | 219 | `declaration-track:6804a46e16ad83985e463813fab67c59c19c732024357571b3d4c9f7193f6726` |
| 36 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-5.md) | 222 | `declaration-track:574c424d5ca8dcd4e47bad722ba1be58a0eb7d5665e37999962be19b635516c3` |
| 37 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-2.md) | 225 | `declaration-track:49c4151f7018e9865f901301fe1aaf79c2fcfb42214a91e0ca0f99652cd416df` |
| 38 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-14.md) | 228 | `declaration-track:f57f4e613517e0d0ca87a89b422a11bfe4b7143964a13209cda63b02997c934f` |
| 39 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-4.md) | 231 | `declaration-track:5016991411472b3227424901a34d11fd910001e4923ef13071c7b5760c957e38` |
| 40 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-11.md) | 234 | `declaration-track:bc135c88d190ef28d1bd70e165a12bba2149e70eab37c89a273a638b193d63a3` |
| 41 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-10.md) | 237 | `declaration-track:918f82fed6e15ca0cfcf60bd7a5bbdd03c32c5c9047b8ccdf534b669a32dc97e` |
| 42 | `theorem` | [subset_def](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/subset-def.md) | 240 | `result-track:c80c2c73666a19c1a2bb7f480075f6714fb608333ab9175f1013325965203030` |
| 43 | `theorem` | [ssubset_def](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/ssubset-def.md) | 243 | `result-track:fc9d66f330423dd3ef0b20a6a8c2cf5c5f33ce59dae0310827427436acc924e7` |
| 44 | `theorem` | [Subset.refl](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/subset-refl.md) | 246 | `result-track:3a5cf435c61be93e1273096191e0f798967d9874ff07becc84f11f7fe2a52eef` |
| 45 | `theorem` | [Subset.rfl](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/subset-rfl.md) | 249 | `result-track:657f19d2cd4aa2209cac2e2df433f1fd6708f5939cc05b95c6632573b710aec4` |
| 46 | `theorem` | [subset_of_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/subset-of-eq.md) | 252 | `result-track:e9769eec3c7181782a0ccd7ad5a4f5e74d12675fe657379a446a72c2b572bb2f` |
| 47 | `theorem` | [Subset.trans](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/subset-trans.md) | 255 | `result-track:15e2d875b7c477fca9b0862836b05e8062f3efe9b4450797c73ea8664eea0d77` |
| 48 | `theorem` | [Superset.trans](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/superset-trans.md) | 258 | `result-track:b802b5cfb40fca4cf9b13f009f4a165a3d62b44d7865484c71fd3d5ba8f8727c` |
| 49 | `theorem` | [mem_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/mem-of-subset.md) | 261 | `result-track:10bba0c94fb5ee2f786561569c20711759e0cf8cedd5a8ec57b38ec7e5663399` |
| 50 | `theorem` | [notMem_mono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/notmem-mono.md) | 264 | `result-track:f59d56e81e1b36f774f9cf9d0aca5e451df8461a2a075f741105a22c7b62bdb5` |
| 51 | `theorem` | [Subset.antisymm](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/subset-antisymm.md) | 271 | `result-track:316704611fcb0bb666d661afef8fb7f21d925ae9bf89feaeca2adb4a8dc889e0` |
| 52 | `theorem` | [subset_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/subset-iff.md) | 274 | `result-track:9c8a09b7cc3af79698885934426eb8067ec66d12112667c47d312d91240c5c55` |
| 53 | `theorem` | [coe_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/coe-subset.md) | 278 | `result-track:a028697ecaa35aaddcd9f547ea24eb4bb17e521e648bd63cb56f98883a9ca445` |
| 54 | `theorem` | [val_le_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/val-le-iff.md) | 284 | `result-track:1a393d88cbecea6be67096c692b2297af0fc474db39764cee468dbf13f7ca231` |
| 55 | `theorem` | [Subset.antisymm_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/subset-antisymm-iff.md) | 287 | `result-track:e1cd43f17368aa4a28da4324a59a9276abff54c11f8d0e86161d3b447b70c5c4` |
| 56 | `theorem` | [not_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/not-subset.md) | 290 | `result-track:4778efcaf9c1e75f5ef44fd59e6e8c68dd269df5563ea685f62c46ca82b7f98d` |
| 57 | `theorem` | [le_eq_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/le-eq-subset.md) | 293 | `result-track:b695f28a453772f8a7e0723b253f5e2dc0ee0df9bdd48a342fe6c6cc7a57d787` |
| 58 | `theorem` | [lt_eq_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/lt-eq-subset.md) | 297 | `result-track:22c3bed017b6f9a84a112a333893ce5cd451caa3a67b7b8475842b33f669211b` |
| 59 | `theorem` | [le_iff_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/le-iff-subset.md) | 300 | `result-track:0817f1458ed8fb639df04fc7fdbe3d9de05fc7fdddeaddd6f3f5c23bf1c51791` |
| 60 | `theorem` | [lt_iff_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/lt-iff-ssubset.md) | 303 | `result-track:3358b9bff71f07080161cbb84d0df4d96c00a1abf9d9de028557e3c368a35603` |
| 61 | `theorem` | [coe_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/coe-ssubset.md) | 307 | `result-track:3099eff821c223d381ad7c9baef697c5be4bd4cb1b5d1fd912fb9f064dc615e3` |
| 62 | `theorem` | [val_lt_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/val-lt-iff.md) | 311 | `result-track:100a6338327eb38c94967965c793ac3b3d3de750180eb984b1dabfeb72a20278` |
| 63 | `lemma` | [val_strictMono](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/val-strictmono.md) | 314 | `result-track:986c9cf83b7d603abcbaad07e7b6a3c68f6525938e97393d7a63b45a1e4f60c0` |
| 64 | `theorem` | [ssubset_iff_subset_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/ssubset-iff-subset-ne.md) | 316 | `result-track:db1d9600f63f1e34b2c979a166aa3c2d148395293517280a50c82dfce3b21376` |
| 65 | `theorem` | [ssubset_iff_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/ssubset-iff-of-subset.md) | 319 | `result-track:f6896f83401f1fb887c8d9f8880920227da644e4e677c07aca8bb3850cb47eba` |
| 66 | `theorem` | [ssubset_of_ssubset_of_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/ssubset-of-ssubset-of-subset.md) | 322 | `result-track:2497e3f88639dc8b5fc3e26c7998e69cb983e745d8bd3e692d3574518993f70f` |
| 67 | `theorem` | [ssubset_of_subset_of_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/ssubset-of-subset-of-ssubset.md) | 326 | `result-track:40188d592d28728bf2799bbad94e7e10c2d65f79e347a40508a7a8ffc1e30c5c` |
| 68 | `theorem` | [exists_of_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/exists-of-ssubset.md) | 330 | `result-track:c9371454a5b2cdca4a3d02f4e374aad69e554a3b83dec4aa4087438abdec9088` |
| 69 | `instance` | [isWellFounded_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/iswellfounded-ssubset.md) | 333 | `declaration-track:8d5cf6d7ff87590fe0ec863d522e664fe8681f89a6f4e2425eadc81d643be58c` |
| 70 | `instance` | [wellFoundedLT](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/wellfoundedlt.md) | 336 | `declaration-track:c05abd0cc52ba57eeb34779a1a247de628754d957744cefea97a508f26e2f7db` |
| 71 | `def` | [coeEmb](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/coeemb.md) | 348 | `declaration-track:9b2c69fb53449836dc67beb75afefde147077b93539a85f3ac0d6b400c5ed8ba` |
| 72 | `theorem` | [coe_coeEmb](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/coe-coeemb.md) | 352 | `result-track:7bcd398f96478785a5a554a484ab0b67376eec959dd87eee0faa695aed8d3b6f` |
| 73 | `instance` | [decidableDforallFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/decidabledforallfinset.md) | 364 | `declaration-track:d4238ee50ae3c842ff194ceace43bba13e32f7b91650afd7f59b7430be2ee2e8` |
| 74 | `instance` | [instDecidableRelSubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instdecidablerelsubset.md) | 368 | `declaration-track:1fb44bd34fd08e7101139198bdc7962db6bda088c7bec526fc96799a51e51e46` |
| 75 | `instance` | [instDecidableRelSSubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instdecidablerelssubset.md) | 371 | `declaration-track:d0b56cc75c0249a52feda903acddcebc36695ebdc7b15284e773d7a5cd1f315d` |
| 76 | `instance` | [instDecidableLE](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instdecidablele.md) | 374 | `declaration-track:bf0025459c9f5954c7c83ca88cecd0ddfbb8b91c8e7b6410bd18cce1d350229a` |
| 77 | `instance` | [instDecidableLT](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instdecidablelt.md) | 377 | `declaration-track:282dbeac7a29013cb9383428d81cf187b516488f10262da5103a731e31d32131` |
| 78 | `instance` | [decidableDExistsFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/decidabledexistsfinset.md) | 380 | `declaration-track:b157f3b2a634fe444e5449ee65895b8284270232f769e3116c7b9da78adbd6cc` |
| 79 | `instance` | [decidableExistsAndFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/decidableexistsandfinset.md) | 384 | `declaration-track:136c6f66029c3d4e344fd5e476010f0df327b8ad1c5618b5619189e9b3960671` |
| 80 | `instance` | [decidableExistsAndFinsetCoe](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/decidableexistsandfinsetcoe.md) | 388 | `declaration-track:3527b17d947eaba184890f6202bd29cfd046832ff49c8321c8ef05e64a13bc76` |
| 81 | `instance` | [decidableEqPiFinset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/decidableeqpifinset.md) | 392 | `declaration-track:adb1addd6f5c88c49a1299871cd62072acadd0e2ba80c86dd87a797cef881538` |
| 82 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance.md) | 404 | `declaration-track:1c3615e96b46d9c33c0f27362bc5ab045cf184ab8f32c02bd46562a6d73bee47` |
| 83 | `instance` | [(anonymous)](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/instance-source-edition-8.md) | 407 | `declaration-track:7477f3b4b2803c3e94d203c2d382faae25965b5447d1ddcdc4ce758656da38cb` |
| 84 | `theorem` | [pairwise_subtype_iff_pairwise_finset'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/pairwise-subtype-iff-pairwise-finset-source-edition-2.md) | 418 | `result-track:8aaaaf5dd73482c4eb693ff16c964cc78f8ee770eea95fadc16a520d4dc11988` |
| 85 | `theorem` | [pairwise_subtype_iff_pairwise_finset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetDefsNamespaced.lean/declarations/pairwise-subtype-iff-pairwise-finset.md) | 422 | `result-track:2d2d89710efa7500f0abd14e092f1aef2b5766f6a54d1ebec91235d132ae2462` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6e65da269873ea167503312d64fe70d00c70798f9ef3db239d4e9c201f2e39e0 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variant4b76d52e9641123b94663319e9822463e19d5869cf0f6bd26e3953b2ab9e1d83.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Defs/Variant4b76d52e9641123b94663319e9822463e19d5869cf0f6bd26e3953b2ab9e1d83.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
