# Verification target: Circuit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2fd3193f52863b78b94e2e5dba8c47beb4f325b",
  "lexical_observation_count": 91,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2fd3193f52863b78b94e2e5dba8c47beb4f325b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Closure` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit.md) | 57 | `declaration-track:166ea6922e8864935a818a6a221065a9816bba14f6b991219bcdd8c2a0dd4070` |
| 2 | `lemma` | [isCircuit_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-def.md) | 61 | `result-track:5ec3ea8f8b497e6d95304c9fcf0b23c5b9f99aac8956f073a933df06ad959bd5` |
| 3 | `lemma` | [IsCircuit.dep](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-dep.md) | 63 | `result-track:2396888b2404200c8de13ccdf52341e319db1d95e23e934a355601e7dffd1ca9` |
| 4 | `lemma` | [IsCircuit.not_indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-not-indep.md) | 66 | `result-track:dfcf6b3f60b408cec7ad7a39df96cf34dbe518f10af1020c119f7e0b113bd98c` |
| 5 | `lemma` | [IsCircuit.minimal](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-minimal.md) | 69 | `result-track:12c758f54887e0d902400eeccf69e7907d9ef2e52784114719aa66bc4cd5dde3` |
| 6 | `lemma` | [IsCircuit.subset_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-subset-ground.md) | 73 | `result-track:445512392ec22a13468c044e8e6186947c5befde0b49ade70081ebdfeb105721` |
| 7 | `lemma` | [IsCircuit.nonempty](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-nonempty.md) | 76 | `result-track:d9d1ef7d3aa819c098277804408d9d2e5e6d04657ad1ba9234b107d288711093` |
| 8 | `lemma` | [empty_not_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/empty-not-iscircuit.md) | 79 | `result-track:f7467447b99fff8eda266a80ba3661d23cd77846f402fe7ff1c69eb4d1cf6aa2` |
| 9 | `lemma` | [isCircuit_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-iff.md) | 82 | `result-track:8f1474469fc85f060e3b1e1996eed6edbf975b39d8b620ffeff11bfb4b39574f` |
| 10 | `lemma` | [IsCircuit.ssubset_indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-ssubset-indep.md) | 85 | `result-track:518872339f45453a1a4c91f5eba3ca8ca0cf0655fa85f4e4f3a9e7c85fb9c71f` |
| 11 | `lemma` | [IsCircuit.minimal_not_indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-minimal-not-indep.md) | 89 | `result-track:6704a152b49a850c8bc73b500af6a7c82cc8ef48a6011b82938eecd179747a3d` |
| 12 | `lemma` | [isCircuit_iff_minimal_not_indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-iff-minimal-not-indep.md) | 93 | `result-track:2d910bf765794c46d24caa839e12f38bce4a2b84ec8c926ffa9aa557acfce6bc` |
| 13 | `lemma` | [IsCircuit.diff_singleton_indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-diff-singleton-indep.md) | 97 | `result-track:7cb4c0a450930ea2ef084b507271de60308ada70ea71c2e6f51923449501f7d1` |
| 14 | `lemma` | [isCircuit_iff_forall_ssubset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-iff-forall-ssubset.md) | 100 | `result-track:c5039cefc1d717cfbd70b5581bc96f6a5a28dea372ed969095db5d7fc54a8cbf` |
| 15 | `lemma` | [isCircuit_antichain](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-antichain.md) | 105 | `result-track:0ceb5ce501df0e7260b0efbeebd7253ea138e380d5ad86c65e8883f4f907fc01` |
| 16 | `lemma` | [IsCircuit.eq_of_not_indep_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-eq-of-not-indep-subset.md) | 108 | `result-track:072e05b848937b873615aa71672b4ee650d69f4d2d8117628373866417bd3484` |
| 17 | `lemma` | [IsCircuit.eq_of_dep_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-eq-of-dep-subset.md) | 112 | `result-track:def5b9e688cf831b6c3adec6deae39e78d3e872519d0fc956afb50d48980ad5a` |
| 18 | `lemma` | [IsCircuit.not_ssubset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-not-ssubset.md) | 115 | `result-track:20e6c7450de72ec26b223812d7bbc39a5849e55594f3460ed6eaeed684cdee1f` |
| 19 | `lemma` | [IsCircuit.eq_of_subset_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-eq-of-subset-iscircuit.md) | 118 | `result-track:664ce4b4df98770b6efb6016acac629f21ffdc4234e9dbac46744c12ebceacb0` |
| 20 | `lemma` | [IsCircuit.eq_of_superset_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-eq-of-superset-iscircuit.md) | 122 | `result-track:17c47aa9b927f3d0279cd4a1ebc486ab91a6ead7a7b834c1b8e9f40cb9022674` |
| 21 | `lemma` | [isCircuit_iff_dep_forall_diff_singleton_indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-iff-dep-forall-diff-singleton-indep.md) | 126 | `result-track:010dd05de37777210f0d187f50f02d1acf8e19e42d1c5f7ddd700d17a1926d5e` |
| 22 | `lemma` | [Indep.insert_isCircuit_of_forall](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/indep-insert-iscircuit-of-forall.md) | 136 | `result-track:227dfc2f8ed8b5e111631e2bc10e427eace695f2f2bed95ef5eb91fcb9e5a31c` |
| 23 | `lemma` | [Indep.insert_isCircuit_of_forall_of_nontrivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/indep-insert-iscircuit-of-forall-of-nontrivial.md) | 145 | `result-track:bd2d1b78f58c759b28824c753e6ed0444f8a80500f976121e224550596f00ba2` |
| 24 | `lemma` | [IsCircuit.diff_singleton_isBasis](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-diff-singleton-isbasis.md) | 151 | `result-track:701d3fc7ada3591e3e2b1ad7486b953655b6096b33d42a275b732a5ef9ed1419` |
| 25 | `lemma` | [IsCircuit.isBasis_iff_eq_diff_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-isbasis-iff-eq-diff-singleton.md) | 158 | `result-track:ca2fdf11bc571412bbabc3c0c72b62b82114012bcad0368ef90346f9ec564820` |
| 26 | `lemma` | [IsCircuit.isBasis_iff_insert_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-isbasis-iff-insert-eq.md) | 168 | `result-track:663286bd9099932de4c5df74c2d7d3546dce4a2bdc80cc5378e35b794b06a562` |
| 27 | `lemma` | [IsCircuit.isCircuit_restrict_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-iscircuit-restrict-of-subset.md) | 178 | `result-track:9e56c2505f42c1e7dd5f1433bd5f306c23d6a7b50a70b50a2505810b5fcc121a` |
| 28 | `lemma` | [restrict_isCircuit_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/restrict-iscircuit-iff.md) | 183 | `result-track:a2ff17a74e9b528b3e0cd9bf807939706598159c65349dbd25355722f911f536` |
| 29 | `def` | [fundCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcircuit.md) | 196 | `declaration-track:49fe7993c22b1798ebb30e1415a7d38ea15925557497b2aabb131c6d3f74ee39` |
| 30 | `lemma` | [fundCircuit_eq_sInter](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcircuit-eq-sinter.md) | 199 | `result-track:dc7ba4a0af8226a5dd7ce001c44877e66c54eb16734ef40fa332cdf6cde99189` |
| 31 | `lemma` | [fundCircuit_subset_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcircuit-subset-insert.md) | 206 | `result-track:c206a0e152224256d05e61f48628813f959b4406bdc7a99f3d250926873d8419` |
| 32 | `lemma` | [fundCircuit_subset_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcircuit-subset-ground.md) | 210 | `result-track:0bf4cdd451e05bb8ff64c3ddda8e0b12ecc4fb579af0029ee0419111117e0da9` |
| 33 | `lemma` | [mem_fundCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/mem-fundcircuit.md) | 214 | `result-track:fa3ab27be6da25b41c9871373fb936214b449d703bb7950073c1f0126b1422ed` |
| 34 | `lemma` | [fundCircuit_diff_eq_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcircuit-diff-eq-inter.md) | 217 | `result-track:ce15c4f52d8265cb05260318093d2f2a703c85ff454ae52908069e9aac253e3a` |
| 35 | `lemma` | [fundCircuit_eq_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcircuit-eq-of-mem.md) | 223 | `result-track:fa9c522a1242c974f2fce19484da077029dfe50d81373acae2c5d2f4bc5c5a28` |
| 36 | `lemma` | [fundCircuit_eq_of_notMem_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcircuit-eq-of-notmem-ground.md) | 228 | `result-track:57c28ee3375d3cf150b2f46589e47e1f55b86573971c0e4c77499c00427dbd5f` |
| 37 | `lemma` | [Indep.fundCircuit_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/indep-fundcircuit-iscircuit.md) | 237 | `result-track:fd258b498bd0fd3391d8d480f44deca3f52883ab28cf657a1b7faa45b2d3b55e` |
| 38 | `lemma` | [Indep.mem_fundCircuit_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/indep-mem-fundcircuit-iff.md) | 248 | `result-track:ed61989f7bee7175194909ad889c5f65c334e32fac015ee7f5d396c7f72257fc` |
| 39 | `lemma` | [IsBase.fundCircuit_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/isbase-fundcircuit-iscircuit.md) | 258 | `result-track:d704f2c29f6e40f646d761585f8f8f7988f405cecf4b60fd6a2f3fb139a1012c` |
| 40 | `lemma` | [IsCircuit.eq_fundCircuit_of_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-eq-fundcircuit-of-subset.md) | 263 | `result-track:bac0ddf96d76efde764b6eb64467deb206cccc6d7b74fcff9ec3e3303abf8e3b` |
| 41 | `lemma` | [fundCircuit_restrict](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcircuit-restrict.md) | 278 | `result-track:2f4a9bc44bc0cf1a513fcdef6903196ed09c6c39df242f82eb43f9fe1b8c347d` |
| 42 | `lemma` | [fundCircuit_restrict_univ](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcircuit-restrict-univ.md) | 293 | `result-track:fe4bfbea10c802df859eb496ee381a6c402afaa7ab85dfdb38f0289b1c3d348f` |
| 43 | `lemma` | [Dep.exists_isCircuit_subset](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/dep-exists-iscircuit-subset.md) | 303 | `result-track:35fb580ac306260b23e8729145c6ed50c77420c4e89b240d0cd118602d8fa6aa` |
| 44 | `lemma` | [dep_iff_superset_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/dep-iff-superset-iscircuit-source-edition-2.md) | 310 | `result-track:7f583a271311c01c9d7547bac1010051103701853b44c098ab50bb437a3a4c69` |
| 45 | `lemma` | [dep_iff_superset_isCircuit'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/dep-iff-superset-iscircuit.md) | 316 | `result-track:11647898e39693d569cc88beecf6f310f6d5194054b26f586a48f61f84a71d1d` |
| 46 | `lemma` | [indep_iff_forall_subset_not_isCircuit'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/indep-iff-forall-subset-not-iscircuit-source-edition-2.md) | 322 | `result-track:ea0bfe5f939c8119883983709fdbc0230cd234c7b7da93bbb11a251def3186ed` |
| 47 | `lemma` | [indep_iff_forall_subset_not_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/indep-iff-forall-subset-not-iscircuit.md) | 327 | `result-track:e311e17b2165b66d0c4a98e7f014f94737679e27159b893214a53d5590256c0c` |
| 48 | `lemma` | [IsCircuit.closure_diff_singleton_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-closure-diff-singleton-eq.md) | 333 | `result-track:4899ef3d37b094ee1c317614423021cfe1077992193cae54f76109a5b53b7d56` |
| 49 | `lemma` | [IsCircuit.subset_closure_diff_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-subset-closure-diff-singleton.md) | 339 | `result-track:5600a1146b512f4c1a50263bb02cc44a423c2e9934b9347667f64577fddddfa5` |
| 50 | `lemma` | [IsCircuit.mem_closure_diff_singleton_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-mem-closure-diff-singleton-of-mem.md) | 344 | `result-track:37677659f87e950a7ae402b444d341c3cd5c8a2fb3b841d6dc2fcc5904a70b0e` |
| 51 | `lemma` | [exists_isCircuit_of_mem_closure](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/exists-iscircuit-of-mem-closure.md) | 348 | `result-track:0d6d430f998ef850744a4bb40fd75db51789820c51206e30090af909ca61635f` |
| 52 | `lemma` | [mem_closure_iff_exists_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/mem-closure-iff-exists-iscircuit.md) | 355 | `result-track:68d39cc5eddf65554eae938ab6cc8cb81107f8e678f6c2fb1204cbb79367c069` |
| 53 | `lemma` | [ext_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/ext-iscircuit.md) | 362 | `result-track:6fca326be0a08ddf239d3353eb8cd2b0138e245d67240bad68cb2c03d1eb64c8` |
| 54 | `lemma` | [ext_isCircuit_not_indep](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/ext-iscircuit-not-indep.md) | 373 | `result-track:5da59d9147a1b52cae8f43496e9861c370ca36bd95058276ff329ac26aee3dc8` |
| 55 | `lemma` | [ext_iff_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/ext-iff-iscircuit.md) | 382 | `result-track:4cd625e87a37502a2244119139ad9cbabf457c7e2528e8ac793aca937c140fd0` |
| 56 | `lemma` | [IsCircuit.strong_multi_elimination_insert](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-strong-multi-elimination-insert.md) | 393 | `result-track:3456cc97b95d26470fbce8ed2d910aa320cc52bdec074d7503a628871252c923` |
| 57 | `lemma` | [IsCircuit.strong_multi_elimination](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-strong-multi-elimination.md) | 426 | `result-track:ec9032150c39ee1f4460a3035814d0ef5c7f29579edad913a86edc24a4a7347c` |
| 58 | `lemma` | [IsCircuit.strong_multi_elimination_set](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-strong-multi-elimination-set.md) | 452 | `result-track:332a5c9ee9ed6750a40aa55237fccc155f627f22b7a6fb6a94f4c88e613c7812` |
| 59 | `lemma` | [IsCircuit.strong_elimination](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-strong-elimination.md) | 472 | `result-track:2a426fa3f0fe97f33466dd434f24751b2868c53139405f9475d387bd9eeed481` |
| 60 | `lemma` | [IsCircuit.elimination](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-elimination.md) | 484 | `result-track:a69abb434d20edf36594dd8e6a112ae7d02c960fe51ec4d38d0e9f55e3da7884` |
| 61 | `lemma` | [IsCircuit.finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-finite.md) | 500 | `result-track:00491f32e2a6a0c51de15eeae784afc31bd2f56264e9a37e9e728f2aae0d198b` |
| 62 | `lemma` | [finitary_iff_forall_isCircuit_finite](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/finitary-iff-forall-iscircuit-finite.md) | 506 | `result-track:6d9f7ea1ff766e94f8ba71745b3acd3dc6bb81bf529430cedd03a564b40d404f` |
| 63 | `lemma` | [exists_mem_finite_closure_of_mem_closure](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/exists-mem-finite-closure-of-mem-closure.md) | 515 | `result-track:21d19086ee1daeddc639b06a0817e8cf4f65bb30a49206e01c8eebf82180bdc0` |
| 64 | `lemma` | [exists_subset_finite_closure_of_subset_closure](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/exists-subset-finite-closure-of-subset-closure.md) | 527 | `result-track:d167617fe6581d23f9543675e02e7afc67b55cb931a3830bb1b34b347fd148e5` |
| 65 | `abbrev` | [IsCocircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscocircuit.md) | 547 | `declaration-track:a119a7addbeff55828af2afd9f58117c7018b40f8a20c951ea85f244fd2e3002` |
| 66 | `lemma` | [isCocircuit_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscocircuit-def.md) | 549 | `result-track:182944a23a2f1e5b5b81eeb00f6a2712af4ad8a2bb321904268bdcf02e5f9ff5` |
| 67 | `lemma` | [IsCocircuit.isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscocircuit-iscircuit.md) | 551 | `result-track:524f148b940860841a9d3ff43431751609fd57053dfcb226036384cda68c2d5b` |
| 68 | `lemma` | [IsCircuit.isCocircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-iscocircuit.md) | 554 | `result-track:15b58f7bc82f62b3111cb0a204e7f17ed3ebafdd7aa2b252836473fad369fc7d` |
| 69 | `lemma` | [IsCocircuit.subset_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscocircuit-subset-ground.md) | 558 | `result-track:5028664eebbc7fb22ca531ed1b71107271d184578c8d68e297266742e9ecb92a` |
| 70 | `lemma` | [dual_isCocircuit_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/dual-iscocircuit-iff.md) | 561 | `result-track:df4d32955021e5fc5a36031a64bfd2b315b012c56938ef17fc441eb756487565` |
| 71 | `lemma` | [coindep_iff_forall_subset_not_isCocircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/coindep-iff-forall-subset-not-iscocircuit.md) | 564 | `result-track:83364eb8036f3c35c1e3373f98211818f6d7be92bd1d1b47fb63cd8e119cd282` |
| 72 | `lemma` | [isCocircuit_iff_minimal](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscocircuit-iff-minimal.md) | 569 | `result-track:bac31cc5c47c067e051527c3dcededff1847e9a890bbeac085a85de9e403e625` |
| 73 | `lemma` | [isCocircuit_iff_minimal_compl_nonspanning](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscocircuit-iff-minimal-compl-nonspanning.md) | 580 | `result-track:47a8a2e7693ad30c8d1d3a438f8482558f32b92d791f70fbf02b7ade046a4266` |
| 74 | `lemma` | [IsBase.compl_closure_diff_singleton_isCocircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/isbase-compl-closure-diff-singleton-iscocircuit.md) | 588 | `result-track:9364f8916059a2c9b7d41dc3679f198113bfe6af3ff1edc48dbb1b385039e7a3` |
| 75 | `lemma` | [isCocircuit_iff_minimal_compl_nonspanning'](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscocircuit-iff-minimal-compl-nonspanning-source-edition-2.md) | 607 | `result-track:4c7950d2c3c8203bde742ec450b045d8936e6b594eb77b5e94cc53736b6ae3b8` |
| 76 | `lemma` | [IsCircuit.inter_isCocircuit_ne_singleton](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-inter-iscocircuit-ne-singleton.md) | 614 | `result-track:54ec411ea586ab2425ba20f54d82c4da006b0f79ed6c6ad03679619c52b9b590` |
| 77 | `lemma` | [IsCircuit.isCocircuit_inter_nontrivial](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-iscocircuit-inter-nontrivial.md) | 631 | `result-track:081a7d28cb1dc58aabdd46549f2f846fcab41f943adf37ed64e4764ef74ff3aa` |
| 78 | `lemma` | [IsCircuit.isCocircuit_disjoint_or_nontrivial_inter](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-iscocircuit-disjoint-or-nontrivial-inter.md) | 637 | `result-track:ec9fef8c42875362708f5c52b2867ce7bd1e773d460f13ea5e9953991b4d8acc` |
| 79 | `lemma` | [dual_rankPos_iff_exists_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/dual-rankpos-iff-exists-iscircuit.md) | 642 | `result-track:dd2490ac1be2caee7590783f4f26804f3e64ac8d5809f8bcdeee4509d1ed0e4a` |
| 80 | `lemma` | [IsCircuit.dual_rankPos](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/iscircuit-dual-rankpos.md) | 647 | `result-track:56d580d368fbf1f0404e70be15a49ca9788e2db653f0fc1ad611017fab585161` |
| 81 | `lemma` | [exists_isCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/exists-iscircuit.md) | 650 | `result-track:b5691370326a483a8cce5fb56ebcd57bfb950fdf77da83a9737199dadae90403` |
| 82 | `lemma` | [rankPos_iff_exists_isCocircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/rankpos-iff-exists-iscocircuit.md) | 653 | `result-track:c8ace9df8ee20de25d9f368352078dcc2071adfdfe7144219e871358c8fcab85` |
| 83 | `def` | [fundCocircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcocircuit.md) | 660 | `declaration-track:92f695ef7cc4346e3e61b8603626c64258edb2a4860557af1b459a1902c7ab4a` |
| 84 | `lemma` | [fundCocircuit_isCocircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcocircuit-iscocircuit.md) | 662 | `result-track:ae6feacd95c6f1a5ab83c132af85b4bf6057ea89ca8b83db4a32e78ba37a5bf9` |
| 85 | `lemma` | [mem_fundCocircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/mem-fundcocircuit.md) | 668 | `result-track:0586a7d2fcf1612faa6dc52b15986a953268ed26c970bd5f019b762c1a1b36c8` |
| 86 | `lemma` | [fundCocircuit_subset_insert_compl](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcocircuit-subset-insert-compl.md) | 671 | `result-track:f77eb803a823ec398bb6f97715625f95c25e8dec4d77b71487481f0085d42d9e` |
| 87 | `lemma` | [fundCocircuit_inter_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcocircuit-inter-eq.md) | 675 | `result-track:9db02346013603d614f3f5a7073b934501ba495beecdab4f97e37f15e05025fa` |
| 88 | `lemma` | [fundCocircuit_eq_of_notMem_ground](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcocircuit-eq-of-notmem-ground.md) | 682 | `result-track:81aee4fabc51de4e9df2d8f00d2922e3d792f2073032e12bc0632ade48d8e394` |
| 89 | `lemma` | [fundCocircuit_eq_of_notMem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/fundcocircuit-eq-of-notmem.md) | 690 | `result-track:1d354e7700bef11c66fd5c40280582653f2f08069ea54b2b6a3b52a530b09eb8` |
| 90 | `lemma` | [Indep.exists_isCocircuit_inter_eq_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/indep-exists-iscocircuit-inter-eq-mem.md) | 701 | `result-track:809ebbffbf1298b40090d40ea76e1794040a9e438cfa5e2f268fc12b594c9efc` |
| 91 | `lemma` | [IsBase.mem_fundCocircuit_iff_mem_fundCircuit](../../../../../../ComputerScience/TheoryOfData/DataStructures/Circuit.lean/declarations/isbase-mem-fundcocircuit-iff-mem-fundcircuit.md) | 715 | `result-track:4115fe270f6240977e43d9b89e85cce5667ddd149ce925f65eeee355e0a908b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=eb98ad4e4112f7c3b4a55537dddc48beb68300ed0bf93d10604e6bb17dcafa5f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Circuit/Variant230747e69923404de76ce2fdf216cd8ae37a3b4ff4afd28598de465f5e81fbef.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
