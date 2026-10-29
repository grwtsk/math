# Verification target: Pairwise Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f34d668781c62f2d4f6f286cc5f277b210a50a09",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f34d668781c62f2d4f6f286cc5f277b210a50a09`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std.Data.List.Count` — import line 11; external provider; requires a separately pinned dependency.
- `Std.Data.Fin.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rel_of_pairwise_cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/rel-of-pairwise-cons.md) | 41 | `result-track:57eeefb570f25a94036fb45959fc311dd117f35679bd68e12f94bba5670133fd` |
| 2 | `theorem` | [Pairwise.of_cons](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-of-cons.md) | 44 | `result-track:b81a350d3414e3133a6856cd671a0fef55779c4d10a06494b6fd9287f5e1cef4` |
| 3 | `theorem` | [Pairwise.tail](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-tail.md) | 47 | `result-track:df565fd14a7a41b084eceb1808a1e92dd1d5d9f6309c05a32ae946e2080a332a` |
| 4 | `theorem` | [Pairwise.drop](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-drop.md) | 51 | `result-track:bbd5314cb3553ebdfbfe8128f508e68ebb2c384167f2c3950aed38fdd6abe0b6` |
| 5 | `theorem` | [Pairwise.imp_of_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-imp-of-mem.md) | 56 | `result-track:04515b7570e9ee4c453eef8314980482795e875915d4c6209deb7aca4c6b2372` |
| 6 | `theorem` | [Pairwise.and](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-and.md) | 65 | `result-track:4251d11203915f192b047cc17dcfd2719bfbbe6ccea90642f551414e60ea3d60` |
| 7 | `theorem` | [pairwise_and_iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-and-iff.md) | 73 | `result-track:442edd500d35b2021e86d9f84e8de996d09fffa45acad9a9398f35f7dd5973b7` |
| 8 | `theorem` | [Pairwise.imp₂](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-imp.md) | 76 | `result-track:321d761be305d31d8c13cfb7f2ddaf3ee3f3742ee9cf754dab4b5f39a9a72920` |
| 9 | `theorem` | [Pairwise.iff_of_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-iff-of-mem.md) | 80 | `result-track:c1967f98413d8d6e07b68a8cf414cfb147babfa744c5d001ddb73f65a35cb171` |
| 10 | `theorem` | [Pairwise.iff](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-iff.md) | 84 | `result-track:3f38dd67ba06daa8af82c3dad50dda2b7ac72a6cf33ca73849a644ffd351ec53` |
| 11 | `theorem` | [pairwise_of_forall](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-of-forall.md) | 88 | `result-track:24e98fbcf2712723ff1fa1016600e6d3193ef81cb9ebe3d9dcd12f67a89942d4` |
| 12 | `theorem` | [Pairwise.and_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-and-mem.md) | 91 | `result-track:aa3b648d31fcd065205d3c354de231a082304bac1d3df2690cf4024825acdb66` |
| 13 | `theorem` | [Pairwise.imp_mem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-imp-mem.md) | 95 | `result-track:eb9efde6064ceeac88bfa0c40e4eb3bf94f490593f1753db6c0ab8f9c7128d16` |
| 14 | `theorem` | [Pairwise.forall_of_forall_of_flip](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-forall-of-forall-of-flip.md) | 99 | `result-track:66dac10eb333ef0a1cdddac1f4a6950c64e3f07c2c413e25ae6a5891aa1285a6` |
| 15 | `theorem` | [pairwise_singleton](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-singleton.md) | 112 | `result-track:b554a31fd71ed9f924f6bd15a32d08c23a8b06ace38371c5f1cc8091a92e987d` |
| 16 | `theorem` | [pairwise_pair](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-pair.md) | 114 | `result-track:72ffd8b80fb490ce902497f9972fb8bcf196ad99a400ce1702464faeed36b619` |
| 17 | `theorem` | [pairwise_append_comm](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-append-comm.md) | 116 | `result-track:3986b0eb7e433871e6b01f5b89e163467a9f56945f0450b8c333a6c39f293ff5` |
| 18 | `theorem` | [pairwise_middle](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-middle.md) | 122 | `result-track:e334f4bccb14ff5a6a69ed14ae1ed6cb4987f11c80746a4423f799864e410dde` |
| 19 | `theorem` | [Pairwise.of_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-of-map.md) | 128 | `result-track:f43998d408f0a10c2f61cbc066eb9ffc047ef3451f3a4a9b6b5a5fbf8223d0d7` |
| 20 | `theorem` | [Pairwise.map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-map.md) | 132 | `result-track:2036ee81ee32094a2bd5ec0abb81c17c7b7dadfe06294f8ee7d595aeea5ad68a` |
| 21 | `theorem` | [pairwise_filterMap](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-filtermap.md) | 136 | `result-track:d59a236d36fd0fe62ebad9d358be24e273fa9e2c2178dea99dcbd9567381b37e` |
| 22 | `theorem` | [Pairwise.filter_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-filter-map.md) | 152 | `result-track:28e61af82de73b88c2e6ed77d479947b5b20d6c9c768a18ac2a08d7d0cc14e44` |
| 23 | `theorem` | [pairwise_filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-filter.md) | 157 | `result-track:59909c7e135c7ae1b32ba0f53ffb8c83d30c29f180600f6374497365927c9b4e` |
| 24 | `theorem` | [Pairwise.filter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-filter-source-edition-2.md) | 161 | `result-track:fa22ec8e4b6b9fb6fb12e958fcb37ee32e2b67ae3946d4cddaab0e017f139f5b` |
| 25 | `theorem` | [pairwise_join](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-join.md) | 164 | `result-track:0fb5896546b869d7bfd45ac035952cdd4d07e31008d5d23f97997929294f2b5b` |
| 26 | `theorem` | [pairwise_bind](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-bind.md) | 175 | `result-track:cf9ad37ca4a35434290a567d05467eef960f9e2ef172e5354a96cdbaed7fd901` |
| 27 | `theorem` | [pairwise_iff_forall_sublist](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-iff-forall-sublist.md) | 180 | `result-track:9e4f9ab28b398fc31ba1512fbef551e5de15c09193f3ba11634fc16193cea2e4` |
| 28 | `theorem` | [pairwise_of_reflexive_on_dupl_of_forall_ne](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-of-reflexive-on-dupl-of-forall-ne.md) | 199 | `result-track:4001bb0bf52ac3d23a6554b2cf3ecc7d309807f98f9b7df7c6455710a77a510a` |
| 29 | `theorem` | [map_get_sublist](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/map-get-sublist.md) | 212 | `result-track:ba0873f180c0127c50a9418ef27827314c5ba45ac3b515fc44ee43aca4035c8f` |
| 30 | `theorem` | [sublist_eq_map_get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/sublist-eq-map-get.md) | 230 | `result-track:3b400783dcf7bec844368cb128a4de981db6fbe084f50f1c4d76b8523c158497` |
| 31 | `theorem` | [pairwise_iff_get](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-iff-get.md) | 244 | `result-track:5768bb7fb38e2495f8c8214db1fae5707b35fd28728c0682e10078f8e92eab35` |
| 32 | `theorem` | [pairwise_replicate](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-replicate.md) | 257 | `result-track:0c55a527564be836e8dbae33ca8c842c42a087f7ca3b1502c8cca2031bdfde8b` |
| 33 | `theorem` | [pwFilter_nil](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pwfilter-nil.md) | 264 | `result-track:e963b69bdcf6918f1baf5817734ce38857c90f6995a1130c7d4a431615f516e3` |
| 34 | `theorem` | [pwFilter_cons_of_pos](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pwfilter-cons-of-pos.md) | 266 | `result-track:314882ab11679410456db9a5b3cdef39c3136821b6a46f972aeb80d5a332c8b6` |
| 35 | `theorem` | [pwFilter_cons_of_neg](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pwfilter-cons-of-neg.md) | 269 | `result-track:7e2acefcc0d9c6edbb02921a41bf28535ec4468d14e4be8d86efe4ab2a8b625a` |
| 36 | `theorem` | [pwFilter_map](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pwfilter-map.md) | 272 | `result-track:065579e9b0a4a79a847f9108985765f08074868680c6498c61c7e8ef2fdf47d6` |
| 37 | `theorem` | [pwFilter_sublist](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pwfilter-sublist.md) | 286 | `result-track:b7df56a3f64d7d29ac0ee1d3e8c0a32be7be596fb19d4704d5709e4b2f2edfcb` |
| 38 | `theorem` | [pwFilter_subset](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pwfilter-subset.md) | 294 | `result-track:e3eadf43b5c658faf1273437d1d73ec2d58f09e4bff24f5c5c9a7b7fd7e012be` |
| 39 | `theorem` | [pairwise_pwFilter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pairwise-pwfilter.md) | 297 | `result-track:d9ed7505caa86ba9ccc5078173d747121534e09ac8e7110a3b6314ff3fdb6dd6` |
| 40 | `theorem` | [pwFilter_eq_self](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pwfilter-eq-self.md) | 305 | `result-track:655a0f1b070bd88d0b29e5cfeda9ba34f1e2219449a7cc42255d354f173251d6` |
| 41 | `theorem` | [pwFilter_idem](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/pwfilter-idem.md) | 316 | `result-track:40433ab469750787a36ae52b4f5994548ad3dd339d7c14a941a583fbfe2b86e1` |
| 42 | `theorem` | [forall_mem_pwFilter](../../../../../../ComputerScience/TheoryOfSoftware/FunctionalProgrammingAndLambdaCalculus/PairwiseNamespaced.lean/declarations/forall-mem-pwfilter.md) | 319 | `result-track:b59a771f6d4757550ee2e173ab5092b22c5ff698c0450e6f9a188ae0877406e7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=137b9f8283140bada8f95751bebfb56a91824e3cc585038d795301357919d25f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pairwise/Variant9d70f23819550547a07bff2de8ec38c917e4d6b3d536ce252e777072545ecbfe.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
