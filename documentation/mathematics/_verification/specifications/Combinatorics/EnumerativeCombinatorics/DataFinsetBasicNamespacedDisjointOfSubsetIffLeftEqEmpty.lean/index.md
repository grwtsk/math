# Verification target: Data Finset Basic Namespaced Disjoint Of Subset Iff Left Eq Empty

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa53d41f180191d5c56bb654d500a762b4c1497c",
  "lexical_observation_count": 115,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant82ade7ed1c4410f9bc5ca38666d10c84a3b3a6c78577fd92edaf790ff2c46d66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa53d41f180191d5c56bb654d500a762b4c1497c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant82ade7ed1c4410f9bc5ca38666d10c84a3b3a6c78577fd92edaf790ff2c46d66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Basic/Variant82ade7ed1c4410f9bc5ca38666d10c84a3b3a6c78577fd92edaf790ff2c46d66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Attach` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Disjoint` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Erase` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Filter` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Range` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.SDiff` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Logic.Equiv.Set` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Directed` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.Defs` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.SymmDiff` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sizeOf_lt_sizeOf_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sizeof-lt-sizeof-of-mem.md) | 70 | `result-track:4345f3421176885b44c106be9c9a3319ccb3ad36a0646339545b351336296206` |
| 2 | `theorem` | [disjUnion_eq_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjunion-eq-union.md) | 87 | `result-track:4b97f129b6a1dbb8cd27150bf52f6bf71582e03e29a8c709baa1329a4b982274` |
| 3 | `theorem` | [disjoint_union_left](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-union-left.md) | 91 | `result-track:ad4dc520dbd05451f0b8b8f2d72242839e1370ce9c5c410f006f31ffc9e5974f` |
| 4 | `theorem` | [disjoint_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-union-right.md) | 95 | `result-track:d58e5468e68df42e9f3b4855cd6fd46c71803bb0e72f3efae9df1b4e95c20647` |
| 5 | `theorem` | [not_disjoint_iff_nonempty_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/not-disjoint-iff-nonempty-inter.md) | 100 | `result-track:9fbc3882bf8f127a57352546b03099da0709f129b8d85bd5a83eb0fdf19556b7` |
| 6 | `theorem` | [disjoint_or_nonempty_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-or-nonempty-inter.md) | 105 | `result-track:c03a6da8b6d66d86d3701a616b90de02d40013a8c9a55427c956d8f9a28cddb7` |
| 7 | `theorem` | [disjoint_of_subset_iff_left_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-of-subset-iff-left-eq-empty.md) | 110 | `result-track:16575993775b4a6c0a018f64f5ce14d6d43178d912893252cd7ca0934eab0753` |
| 8 | `lemma` | [pairwiseDisjoint_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/pairwisedisjoint-iff.md) | 114 | `result-track:82bd63b4f19200f4b922ecef5ae14590cb578743f81c4feb6f8c4c5b97100ee8` |
| 9 | `instance` | [isDirected_le](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/isdirected-le.md) | 121 | `declaration-track:3c3c2e58cc7eaf0cee52bfc0cdddd08c226007115648db34f1919adcc06c9707` |
| 10 | `instance` | [isDirected_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/isdirected-subset.md) | 122 | `declaration-track:ed1037b7e55cb073b3150909b2c387c7ef760fc786f6df8ec273f0cf47598df8` |
| 11 | `theorem` | [erase_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-empty.md) | 131 | `result-track:db027ecb6a18613fbd2569e8087f43b9c57ab2b7202fd7fa1814d127636d23ee` |
| 12 | `lemma` | [Nontrivial.erase_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/nontrivial-erase-nonempty.md) | 134 | `result-track:cbf22841f68ebd507317a66acd82978f291f5b309dcf6cd5748b3f5ba5d8abec` |
| 13 | `lemma` | [erase_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-nonempty.md) | 137 | `result-track:ebc2d5bf6a132e918b4d50f9a645ba91db66311d33a0228a2e29187a79020aee` |
| 14 | `theorem` | [erase_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-singleton.md) | 144 | `result-track:52d54a63d27bf9beacc14721fb40449d296742a9f6cbe9ab762ae0c17253bdb9` |
| 15 | `theorem` | [erase_insert_eq_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-insert-eq-erase.md) | 149 | `result-track:32495192c12a93bc172549818196bfc6527318e2a176cc085aa0df59e9e8bb9f` |
| 16 | `theorem` | [erase_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-insert.md) | 154 | `result-track:9e06e55c25bcba5ad0029c1036ea5ac4da8ff4c78a19c1eecadd8e1bc29a226e` |
| 17 | `theorem` | [erase_insert_of_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-insert-of-ne.md) | 157 | `result-track:c1384077ca830b1499f2e4af3fbd1ec6e478dacd6c3830efc94da9170e4e7472` |
| 18 | `theorem` | [erase_cons_of_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-cons-of-ne.md) | 163 | `result-track:7af9534cd8960a41c1ad43a52033478311a9d076a8e2f80a786048ff4b131557` |
| 19 | `theorem` | [insert_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/insert-erase.md) | 167 | `result-track:40aff1f98d0505e08fa0e1b128bf13391a895b75bcf33332f07c41f2e2c7f03f` |
| 20 | `lemma` | [erase_eq_iff_eq_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-eq-iff-eq-insert.md) | 174 | `result-track:925e0ab45993af29fb74b644a76e0e74839a48b1650e8a877f6776ba30c959eb` |
| 21 | `lemma` | [insert_erase_invOn](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/insert-erase-invon.md) | 177 | `result-track:5008e795c4986e4bbad0375084bbd175e1cc2cadea54bdabd34686b602919e43` |
| 22 | `theorem` | [erase_ssubset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-ssubset.md) | 181 | `result-track:de4d22393e5aecf746fe733e7c7b0514463c4a5b699e99976c7f8dbc8aebf7f5` |
| 23 | `theorem` | [ssubset_iff_exists_subset_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/ssubset-iff-exists-subset-erase.md) | 186 | `result-track:74dd189543fc8571cc25dfeb53982ab83220f06ed6999baafebe66913e794eca` |
| 24 | `theorem` | [erase_ssubset_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-ssubset-insert.md) | 191 | `result-track:6f31fad6e2a199be360003e4a7e50deb08e9aca4cc2faf3b4c08fa1afd21be0e` |
| 25 | `theorem` | [erase_cons](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-cons.md) | 195 | `result-track:7ad7088b9914ac03e6114783d0b3c7f5f44f9f3d435e9cde5a8b3c64d89e148c` |
| 26 | `theorem` | [subset_insert_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/subset-insert-iff.md) | 198 | `result-track:d8d9b681c1038b6a741be9e672047a9c059638babecaa54ba08e994de423baa4` |
| 27 | `theorem` | [erase_insert_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-insert-subset.md) | 202 | `result-track:0599bb9552866ee7b9bed6b830ab69f78ecdd26280accb0d85508f9d503d09b9` |
| 28 | `theorem` | [insert_erase_subset](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/insert-erase-subset.md) | 205 | `result-track:e343b220eda8964f8614498ea13cd08a9bde991b47fd54103b82c916609afb68` |
| 29 | `theorem` | [subset_insert_iff_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/subset-insert-iff-of-notmem.md) | 208 | `result-track:ee2db1aed2058251abae6b0d21cf141a15712861669bb889117c46e3af1c918d` |
| 30 | `theorem` | [erase_subset_iff_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-subset-iff-of-mem.md) | 214 | `result-track:912175fac24bd8ee52cdf0d80719f633ac638a1e08be6d50777a7d81ad38e054` |
| 31 | `theorem` | [erase_injOn'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-injon.md) | 217 | `result-track:be4539af2843a1b88ff31bde92aa70e7077f77f1101d6f69a96ee8c76714f07d` |
| 32 | `lemma` | [Nontrivial.exists_cons_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/nontrivial-exists-cons-eq.md) | 222 | `result-track:93d9711b8eecb0c51197acd018b0b023ff4870c281004a6243c8fd0bb9247132` |
| 33 | `lemma` | [erase_sdiff_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-sdiff-erase.md) | 237 | `result-track:eb488bddad9ab9fbe517ca5ab2b4287ca98bd988888bcefeb5e246bb51e5274f` |
| 34 | `theorem` | [sdiff_singleton_eq_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-singleton-eq-erase.md) | 242 | `result-track:4e96b11548dc7261645fb656a4864b92dfeea4a5fb7501d92e11d011831c2c91` |
| 35 | `theorem` | [erase_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-eq.md) | 247 | `result-track:03f58ebe730d2c0c07cf0fe8f8d5208ca2967ae05965e3bd14896d8e2b23adfa` |
| 36 | `theorem` | [disjoint_erase_comm](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-erase-comm.md) | 250 | `result-track:68c09b17173b45fc85293f38ee8530697ea3d5cb0320cb71d501f16c81bd6115` |
| 37 | `lemma` | [disjoint_insert_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-insert-erase.md) | 253 | `result-track:18e8b431980e472fd01a0a206297f3f79161439a0d5ffe944253b9cbd0de0124` |
| 38 | `lemma` | [disjoint_erase_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-erase-insert.md) | 256 | `result-track:93e9ebdd9b31672157ce80b385a9ecedd25251584dd687ebdb61f230b56e5153` |
| 39 | `theorem` | [disjoint_of_erase_left](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-of-erase-left.md) | 259 | `result-track:499e94b6203b9fcf79670652b6895c29efd6738acf1fc92bbb928324a60364f7` |
| 40 | `theorem` | [disjoint_of_erase_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-of-erase-right.md) | 263 | `result-track:102eb7415922b3297b21a146c78ac755fc3c046ceddfd173046f12c4ccce7f56` |
| 41 | `theorem` | [inter_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/inter-erase.md) | 267 | `result-track:5afde09c3e7b456541639d664c6ad7219e2bf97183f4464c86846cbd99ce280f` |
| 42 | `theorem` | [erase_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-inter.md) | 271 | `result-track:e7e07ee95be16e62af43f4078ebda21cd84dcd688472820ebd53edb9d81b465c` |
| 43 | `theorem` | [erase_sdiff_comm](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-sdiff-comm.md) | 274 | `result-track:4f77fd9704091bf355a17074838a6697d934afdcc2c2b29c588da2d70d4cb7e4` |
| 44 | `theorem` | [erase_inter_comm](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-inter-comm.md) | 277 | `result-track:ead7211857f6d385fa892082acb18812c19356fef02621998c0d022fe9218fcd` |
| 45 | `theorem` | [erase_union_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-union-distrib.md) | 280 | `result-track:53162c2781a2bf441081d1ce84481bde18d47c6e48eb644b458e5c34a70f76f7` |
| 46 | `theorem` | [insert_inter_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/insert-inter-distrib.md) | 283 | `result-track:2e8ee6fb92b9f8adc0f6a28f17aea52921ecb53ea0b85c7abcd71657514cb3ec` |
| 47 | `theorem` | [erase_sdiff_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-sdiff-distrib.md) | 286 | `result-track:ff9a44e2aca85a446185307e4b3b6d999f81bf6681439c2267cd81524d85c85b` |
| 48 | `theorem` | [erase_union_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-union-of-mem.md) | 289 | `result-track:8041e91fd72400d8503ac1ffc2128b41dda337ac14577f88630258261007a269` |
| 49 | `theorem` | [union_erase_of_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/union-erase-of-mem.md) | 292 | `result-track:a67e9b6fcf914fab37b5d86c747b481c37245dfcd1cc3af22ed989716a3c682a` |
| 50 | `theorem` | [sdiff_union_erase_cancel](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-union-erase-cancel.md) | 295 | `result-track:0e8030e135de6355bdebaa952215b8e1c1df018f8fcc5ef5c70b084216e6d561` |
| 51 | `theorem` | [sdiff_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-insert.md) | 298 | `result-track:08973cb9b5145373abcc072cd008fad88a8cbe8e927a2e646cb34fc84f77b357` |
| 52 | `theorem` | [sdiff_insert_insert_of_mem_of_notMem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-insert-insert-of-mem-of-notmem.md) | 302 | `result-track:e7f654d515ddb474ebacb55d8f80356e573051ad2b129dfa386c995fcbd55957` |
| 53 | `theorem` | [sdiff_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-erase.md) | 309 | `result-track:60734f31d69887488f96fb16b103a5c38775dbf73d9d32cfcb0d4196b8c8b305` |
| 54 | `theorem` | [sdiff_erase_self](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-erase-self.md) | 313 | `result-track:05959e90b272fcb227c3a5afe9c00fa9f4d25cc47bc1af6bd90b179bfe2789b4` |
| 55 | `theorem` | [erase_eq_empty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/erase-eq-empty-iff.md) | 316 | `result-track:8536739d78f4a9f58de893a2dcfc47ffdab5547c5727a7d184b62b2988ba3132` |
| 56 | `theorem` | [sdiff_disjoint](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-disjoint.md) | 320 | `result-track:c2823728533828e6b7aede0535ce3f02a717772d5dcc27cf19f5fadb45e05111` |
| 57 | `theorem` | [disjoint_sdiff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-sdiff.md) | 323 | `result-track:65e979435635974a90e9f70c459dacb653a20b30e0cc53de38ed4d01a2ba57f2` |
| 58 | `theorem` | [disjoint_sdiff_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-sdiff-inter.md) | 326 | `result-track:890f90a7d6106cff32646d5453bd720c69139b664c53100b9ed53914c7a9a281` |
| 59 | `theorem` | [attach_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/attach-empty.md) | 334 | `result-track:431ae19fdd9cfc683caa36b66cc9dc20c3eceabf81616916094b25972b56b2da` |
| 60 | `theorem` | [attach_nonempty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/attach-nonempty-iff.md) | 338 | `result-track:792506ae94588dfdf0157aaf7d0613676f19da87bf5b5fd5881cb67b5dd6ef72` |
| 61 | `theorem` | [attach_eq_empty_iff](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/attach-eq-empty-iff.md) | 345 | `result-track:120ffa07cf889132de3bc70b5d1023d48eb4a944c3c17a4b6773e203f30a4449` |
| 62 | `theorem` | [filter_singleton](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-singleton.md) | 353 | `result-track:8af24f8c89d57f1cb3c6498a10815f8849e6aab775018170e141df47c6fb94e4` |
| 63 | `theorem` | [filter_cons_of_pos](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-cons-of-pos.md) | 359 | `result-track:009c9dc4c83e58077cc35595f1af94ca750332df5d7f047b4e83536f251667bf` |
| 64 | `theorem` | [filter_cons_of_neg](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-cons-of-neg.md) | 363 | `result-track:92216a45661d0af2c5788255761874b3e1661cb280d8bd5704eccccfcd747c79` |
| 65 | `theorem` | [disjoint_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-filter.md) | 367 | `result-track:29911e313195c173d5cb60e8e3c00eb51665bd91755dd8a0af7d074e0db7d21c` |
| 66 | `theorem` | [disjoint_filter_filter'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-filter-filter.md) | 371 | `result-track:d0a147872827a3dcceb8ba526641f39f09268e80436d30c68b021943f0e7c869` |
| 67 | `theorem` | [disjoint_filter_filter_neg](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/disjoint-filter-filter-neg.md) | 379 | `result-track:1d01d934bfba67cf63c7b05c397f0aa0f9d02461f031a201ae381c7f4084d20e` |
| 68 | `theorem` | [filter_disj_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-disj-union.md) | 384 | `result-track:681b77c92538ea9dc37bf577ea161ab23c18a1f8179a187d464ee16b6ee8bb6c` |
| 69 | `theorem` | [filter_cons](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-cons.md) | 388 | `result-track:e0f07b40930fb87895bcf916241ff8a11777d6298b1d21203dbd28cb7d9713b3` |
| 70 | `theorem` | [filter_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-union.md) | 398 | `result-track:80fa62a8fb48ce725cb675f78d068fde30c74fdefdd0240eccc179a91df593bb` |
| 71 | `theorem` | [filter_union_right](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-union-right.md) | 401 | `result-track:ba9082e6918b0ddcd8434ab96a2e6dfb56df930ebbde086f7089540c908cda13` |
| 72 | `theorem` | [filter_mem_eq_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-mem-eq-inter.md) | 404 | `result-track:726af2b34ed9e160845928185f94ad1381d3096605821883397dea8f59affeac` |
| 73 | `theorem` | [filter_inter_distrib](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-inter-distrib.md) | 408 | `result-track:8d5bd8962600e98f5ac69b4d263c4b84d2060541bb12c75df1c6616a475fba9e` |
| 74 | `theorem` | [filter_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-inter.md) | 412 | `result-track:b339f631b0f473150f9e95414f02f272e362f8ba6d95c87b31a95e6ef77e9d91` |
| 75 | `theorem` | [inter_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/inter-filter.md) | 416 | `result-track:d29060eabfb30a81e93993e40b9e00d9327da60779d923499103cefaed6a590c` |
| 76 | `theorem` | [filter_insert](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-insert.md) | 419 | `result-track:838dc56c9dcb2baa6575d07d062ba9fa063d425412c2615c27b5fa0fcc93a198` |
| 77 | `theorem` | [filter_erase](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-erase.md) | 424 | `result-track:3db9801206cc88864c8fcd64f2387db1973ad797d686d999bfb04229cf1dc0f2` |
| 78 | `theorem` | [filter_or](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-or.md) | 428 | `result-track:ffa2357d5f2841dc177aa372391ada740f8ee112ef49d15ecdca761af8ed2905` |
| 79 | `theorem` | [filter_and](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-and.md) | 431 | `result-track:b9136a6d316b082926ad9f73f35fe5688a0717894ea5a64914d510075f411382` |
| 80 | `theorem` | [filter_not](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-not.md) | 434 | `result-track:ecf163833ec69a40ae122bdae8a2347fc1ee5440dd03fba64adc065a496c8d3a` |
| 81 | `lemma` | [filter_and_not](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-and-not.md) | 439 | `result-track:bde55f69ab9b3f99328c418628524757067d22217ee466a1660a72cd2191d703` |
| 82 | `theorem` | [sdiff_eq_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/sdiff-eq-filter.md) | 443 | `result-track:599f13e5d0028875013c59e1085c8e7081a59e9c3e58539677278a3ca786c096` |
| 83 | `theorem` | [subset_union_elim](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/subset-union-elim.md) | 446 | `result-track:336035d2c525323778034641d70d9b75596426ca5a13ccc2f2a812196cb1e2ef` |
| 84 | `theorem` | [filter_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-eq-source-edition-2.md) | 464 | `result-track:aafd74128951780122d97b2256988c8976fb1dcafc13c17ef251be466e20d036` |
| 85 | `theorem` | [filter_eq'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-eq.md) | 481 | `result-track:93fa366578d85d90b1f6a5076140210443240b80bb10a717e12b394e3532fbf5` |
| 86 | `theorem` | [filter_ne](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-ne-source-edition-2.md) | 485 | `result-track:7f89892a1058e15c6636cc715fc0ea1e0333a51803dc343bbd48bd204e1c3e6a` |
| 87 | `theorem` | [filter_ne'](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-ne.md) | 491 | `result-track:4516bd91cf67578f196a9be5f9041ec28fc20b1a327688a941bbcbc7c2d44d5d` |
| 88 | `theorem` | [filter_union_filter_of_codisjoint](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-union-filter-of-codisjoint.md) | 494 | `result-track:2067f439c9bd00281ce8adf55629c3dee4fda484936f2cac803a1eaf512d1e2e` |
| 89 | `theorem` | [filter_union_filter_neg_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/filter-union-filter-neg-eq.md) | 498 | `result-track:98d8e60022a48a90675dbd19deaa42bdf70c88a293f6b0249167f3befa358bd8` |
| 90 | `theorem` | [range_filter_eq](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/range-filter-eq.md) | 516 | `result-track:d483b4e1d9252b7920623824d4321dee63755e5cb962e4b68769f655bf406f95` |
| 91 | `theorem` | [toFinset_add](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-add.md) | 533 | `result-track:73bcec5d6cc3918d0894231a0481cf3a443d5bda59cf1c8d545238d1ab53957e` |
| 92 | `theorem` | [toFinset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-inter-source-edition-2.md) | 537 | `result-track:f35d09cbbc2abac42a62855c4a42a3cb8b5b960bc6317ac6c793dddb4c819b34` |
| 93 | `theorem` | [toFinset_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-union.md) | 541 | `result-track:6a114a6e3f753d0d38c48dec6b76075afbed87a63eafca57bfc15fdc3c285bfe` |
| 94 | `theorem` | [toFinset_eq_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-eq-empty.md) | 545 | `result-track:14753651077333cd3408a26da8aa66f93e3f49f12135d559f753fe964d58361c` |
| 95 | `theorem` | [toFinset_nonempty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-nonempty.md) | 549 | `result-track:6447c50884565f3a2877c99eda657e8430e62e083787ebfdefe3d527963d58cc` |
| 96 | `theorem` | [toFinset_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-filter.md) | 556 | `result-track:2e1ee6f964b881cb9dd5eb8ea7edc159d90b92ddcd0a303b6eb5aa4eb43e60c6` |
| 97 | `theorem` | [toFinset_union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-union-source-edition-2.md) | 568 | `result-track:ce75470e3af17a5d34b8608ba31cdb13b75c85c26db87450f4402a807a8abe16` |
| 98 | `theorem` | [toFinset_inter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-inter.md) | 573 | `result-track:68590f55182ea78b5212af820d6f2832b22d007ad78d513d28d0e83e8ebe44fb` |
| 99 | `theorem` | [toFinset_filter](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-filter-source-edition-2.md) | 581 | `result-track:983c4bd2a13edc3efaaba462e2aae94e58dbc6154f6795de45feb0096b88b2a7` |
| 100 | `theorem` | [toList_eq_nil](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tolist-eq-nil.md) | 592 | `result-track:43d9a96129b0ec383072c3b5df43fc738c7eec55416fc61884332e425584ca90` |
| 101 | `theorem` | [empty_toList](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/empty-tolist.md) | 595 | `result-track:6e2f2cabf146e48044f37b8e1aa48db2af990317cf1c1fafbee2518178646729` |
| 102 | `theorem` | [toList_empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tolist-empty.md) | 598 | `result-track:f3700d14cc2f5f2d49bc66a19ce9ce42dd0eb0fabcc26608838db9173fa66ef3` |
| 103 | `theorem` | [Nonempty.toList_ne_nil](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/nonempty-tolist-ne-nil.md) | 601 | `result-track:80f40f84ae3830e8e50d752f4589d009d2f501a14cedb7d0e01233a60c65a80f` |
| 104 | `theorem` | [Nonempty.not_empty_toList](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/nonempty-not-empty-tolist.md) | 604 | `result-track:e58cf4b57d9f30fccf18ddf4ef8f6498be9b5cac9aec728e87257cfffc111469` |
| 105 | `def` | [chooseX](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/choosex.md) | 618 | `declaration-track:a7e869d3e7bef900987efa5a564ab9ca84801f68b94f6f0d445980f05632e706` |
| 106 | `def` | [choose](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/choose.md) | 623 | `declaration-track:3a5426ac45016a2444001b6b695abf30c2a04bd2a8a50338d83535e51fbd35be` |
| 107 | `theorem` | [choose_spec](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/choose-spec.md) | 626 | `result-track:d433021ea7de21157b064b366c0cb3fd78a18778d8c4bd2e530e09802ce59bd9` |
| 108 | `theorem` | [choose_mem](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/choose-mem.md) | 629 | `result-track:702afde7bbfcda9b0611e179a8925df75e21ea1965aa9e1ed396d39ee034c1ec` |
| 109 | `theorem` | [choose_property](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/choose-property.md) | 632 | `result-track:64bc80be42e0685462f3937bbf216d54373025166e93e4a0524f576675316ce6` |
| 110 | `def` | [Finset.union](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/finset-union.md) | 645 | `declaration-track:8881f6c2a9930d304964ded8e46fb02485ee40aafc7d9dd2096afd91cc332344` |
| 111 | `theorem` | [Finset.union_symm_inl](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/finset-union-symm-inl.md) | 650 | `result-track:4a665e055510b23a70490d365e22d9710985161842678e8f9008abc7f3acf3c6` |
| 112 | `theorem` | [Finset.union_symm_inr](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/finset-union-symm-inr.md) | 655 | `result-track:eb13890b4c6d03242ccdb7697efc5bf2efe66a43cf40a963bbd213c1c01a3622` |
| 113 | `def` | [piFinsetUnion](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/pifinsetunion.md) | 661 | `declaration-track:98ebe467726bf797348575b11f97a64f8100daa57265f3086870c282703944c0` |
| 114 | `def` | [Data Finset Basic Namespaced Disjoint Of Subset Iff Left Eq Empty](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/root-grwtsk-combinatoricsanddiscretemathematics-sizeofltsizeofofmem-vari.md) | 667 | `declaration-track:8caf245cddc2e289ab1cd822562caa822ffe8548aeb232bce17ffa1cbc9d1784` |
| 115 | `lemma` | [toFinset_replicate](../../../../../Combinatorics/EnumerativeCombinatorics/DataFinsetBasicNamespacedDisjointOfSubsetIffLeftEqEmpty.lean/declarations/tofinset-replicate.md) | 680 | `result-track:9b22fe1ff756f5c74d972f3e7d4bcfdc6352d02b0cc2d95913580b62a1dd55bc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b6f689b4cc334e7219b8d0f1b3ce7e5648d33069b2fcc53ccc2593537bca777c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variant82ade7ed1c4410f9bc5ca38666d10c84a3b3a6c78577fd92edaf790ff2c46d66.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Basic/Variant82ade7ed1c4410f9bc5ca38666d10c84a3b3a6c78577fd92edaf790ff2c46d66.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
