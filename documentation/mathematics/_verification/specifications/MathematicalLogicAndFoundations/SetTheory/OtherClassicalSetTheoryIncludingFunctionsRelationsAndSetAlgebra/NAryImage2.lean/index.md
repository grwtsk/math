# Verification target: NAry Image2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e935df3819a7042b2d5b75f29074cd9f18dcf22f",
  "lexical_observation_count": 74,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/index.md) · [Full source](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e935df3819a7042b2d5b75f29074cd9f18dcf22f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Prod` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2.md) | 35 | `declaration-track:162dd5c75d00c6450c0d316b86a33a06a64bf674eacc12230a322cea59b83ec0` |
| 2 | `theorem` | [mem_image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/mem-image2.md) | 40 | `result-track:97a12413dad6e3e4774e36bf2cc806fcb8a5a5311c6efd17847dfa9d630cab0d` |
| 3 | `theorem` | [mem_image2_of_mem](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/mem-image2-of-mem.md) | 44 | `result-track:b2320581d1319a3ae2542487f709625dfc5c2663e6571e5767b56cdd31575e39` |
| 4 | `theorem` | [mem_image2_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/mem-image2-iff.md) | 48 | `result-track:7e0d8092ca90f0404753f33aa15911a41b4ef8653117ca8256b8c93958d8fdff` |
| 5 | `theorem` | [image2_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-subset.md) | 56 | `result-track:5aec71fce8a81a3da30295845d7482b4afb5ded801a5142f93ea3e7d9b419014` |
| 6 | `theorem` | [image2_subset_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-subset-left.md) | 61 | `result-track:1c0e640afbfac805df9a5d047db3bd1349b0de0fd78edff744edb0d2e17962f5` |
| 7 | `theorem` | [image2_subset_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-subset-right.md) | 65 | `result-track:bf55895488bc32269e2537e6275ae3eb88ab88e7dbc44c278352e160755742cf` |
| 8 | `theorem` | [image_subset_image2_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-subset-image2-left.md) | 69 | `result-track:27102c9ddc3366bd1d3a99569380c8b29c1d317bec04496439757836ddef7cc7` |
| 9 | `theorem` | [image_subset_image2_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-subset-image2-right.md) | 73 | `result-track:0eb6f8094825d61aa72144ec2baaa024682149bc5d79aeac5edaf5a1cf63c1d9` |
| 10 | `theorem` | [forall_image2_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/forall-image2-iff.md) | 77 | `result-track:191c461865b11c86a660d2a19f5f0f5b6dfc744f29cdbec5bd0c6faeeedf3a47` |
| 11 | `theorem` | [image2_subset_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-subset-iff.md) | 83 | `result-track:e6e2aa9c69150e13b33f0f08c33457d9447726e39ef6e347743bff135b0de6f4` |
| 12 | `theorem` | [image2_subset_iff_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-subset-iff-left.md) | 87 | `result-track:d7419ed6555cf9093d75aa9e1f718ffdd67cc04371f5da3531f3d0ad6b785423` |
| 13 | `theorem` | [image2_subset_iff_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-subset-iff-right.md) | 91 | `result-track:39c170e840bd490fb51fcaf4e1d4f80e408523ccdb18ecada2a610f840a6307a` |
| 14 | `lemma` | [image_prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-prod.md) | 98 | `result-track:7a6b840807d6d8bc697a65d1e47a5ea18f5cc5a69de22fb5a342249722d68898` |
| 15 | `lemma` | [image_uncurry_prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-uncurry-prod.md) | 104 | `result-track:35ddbb5158e9eb90c974294469f2b485af870bdbd0587e43883218fad054a153` |
| 16 | `lemma` | [image2_mk_eq_prod](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-mk-eq-prod.md) | 108 | `result-track:5ab57ffd33fa234905e59ef93c257b3c0b8ca4e35ec93e9723e3041f216837c8` |
| 17 | `lemma` | [image2_curry](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-curry.md) | 112 | `result-track:6f71f1a0f242dbfda7a59432a93d7a35ee20ecb72ef4502145a21dbbda03957d` |
| 18 | `theorem` | [image2_swap](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-swap.md) | 117 | `result-track:97419f65e0b88c525d40e341f36655ef4cab2293564260a821230624d5ea84eb` |
| 19 | `theorem` | [image2_union_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-union-left.md) | 124 | `result-track:8982183737ef96d4e7d4e195adebed42603be2aaaf4b4976db50ee4a2f6aa0bd` |
| 20 | `theorem` | [image2_union_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-union-right.md) | 132 | `result-track:f7a6a0d6c9db8de976677d254cffb153b54be781e77f952714a39170d49dec9b` |
| 21 | `lemma` | [image2_inter_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-inter-left.md) | 136 | `result-track:eb39fec5aade31465e825a9ac9dc8d9c2126b17ff95fb4670d861097ad67750d` |
| 22 | `lemma` | [image2_inter_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-inter-right.md) | 141 | `result-track:c560eef1fab340dfac837dcb95d50993b0436d0fcce57ca0a1258fb382acf129` |
| 23 | `theorem` | [image2_empty_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-empty-left.md) | 147 | `result-track:5051561b763f43e03360d286595924e09ef732d6b45c6ca60f0631a211f1bda1` |
| 24 | `theorem` | [image2_empty_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-empty-right.md) | 152 | `result-track:f7b151e3da3019a589132a87d6e1728b8a15f8c1fc5264ece46a597df493c6c2` |
| 25 | `theorem` | [Nonempty.image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/nonempty-image2.md) | 156 | `result-track:9c6e3c1f4f3e466636b9fc1e87c83b4c091f8059f3713df04b603ca1565fb1f1` |
| 26 | `theorem` | [image2_nonempty_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-nonempty-iff.md) | 161 | `result-track:651a5458a31a92a2abe4bb9c3cde28e106793a0bed692fd022d4b5d2d64568e6` |
| 27 | `theorem` | [Nonempty.of_image2_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/nonempty-of-image2-left.md) | 165 | `result-track:7c694f608500b2572c54cf3199acf4ced5376f3b7594c303de4fdd9dbd98eb95` |
| 28 | `theorem` | [Nonempty.of_image2_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/nonempty-of-image2-right.md) | 169 | `result-track:5719559d9c59fc8d4732e937bbff2981f766f74b69dac61ef3cb733f524d7424` |
| 29 | `theorem` | [image2_eq_empty_iff](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-eq-empty-iff.md) | 174 | `result-track:3030dd87b61c0c26dbc76257fdc4aae8fd3b5c3327155f2219ca639dfb045ccc` |
| 30 | `theorem` | [Subsingleton.image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/subsingleton-image2.md) | 179 | `result-track:0382c61e6ff53ab4eb676a5b52ba009a9b231606c3e2689bde99b1131044bc98` |
| 31 | `theorem` | [image2_inter_subset_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-inter-subset-left.md) | 184 | `result-track:85e594eab2ddcef515791f7a6bae37a4129f770c9b2cdd64078cc084ccaeccc9` |
| 32 | `theorem` | [image2_inter_subset_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-inter-subset-right.md) | 189 | `result-track:a7810cd3fb617b37b084a92ec8d72b30b5a3036e7d583455ddcc4f2a8c92e2d0` |
| 33 | `theorem` | [image2_singleton_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-singleton-left.md) | 195 | `result-track:43e57597ec433e271593e53ef8c69d2a8c160cd625dc21cfd9b3bcd47a1c73a5` |
| 34 | `theorem` | [image2_singleton_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-singleton-right.md) | 200 | `result-track:3bbb72792587cd3b1a377c8c2b3438771c9657ac52cd050f66af70d601783425` |
| 35 | `theorem` | [image2_singleton](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-singleton.md) | 204 | `result-track:76051760498c1ea9e1aaa51e8d6a1e66adf038236823effeed0e75ece5f97508` |
| 36 | `theorem` | [image2_insert_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-insert-left.md) | 208 | `result-track:574cc68acdc7b70a5517ee2a54ed3545c5ff2d634a20201bd3aecaa5a3c801c5` |
| 37 | `theorem` | [image2_insert_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-insert-right.md) | 213 | `result-track:28c228f426f97fc6cd4a90c0ee854ef0b19135c4fd854f62cd5d46ffa7e19c2a` |
| 38 | `theorem` | [image2_congr](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-congr.md) | 218 | `result-track:b7ea1592881c695113a4618e3ae7dffc130ff7df936ae350b008da16097a5e3b` |
| 39 | `theorem` | [image2_congr'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-congr-source-edition-2.md) | 224 | `result-track:ef44c75e1518f47ac157cd1e77f3d79a5450822189049a6f47ca0dee36309c4f` |
| 40 | `def` | [image3](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image3.md) | 232 | `declaration-track:dbda9f795af7f0b26229298fce01c38ca4df7f62377e501dbf121c1afeb1378c` |
| 41 | `theorem` | [mem_image3](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/mem-image3.md) | 237 | `result-track:eafc467fd1eddaa3d82442908272da28cd8396aac6a9494e019dda688fb67f4e` |
| 42 | `theorem` | [image3_mono](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image3-mono.md) | 241 | `result-track:b9fee8cd366ddfecc9ac62400e4067f78cb7cdbf09035fac785d598ce36d643a` |
| 43 | `theorem` | [image3_congr](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image3-congr.md) | 247 | `result-track:b01ac223b31ea1f1c8e1a5813bc5bf19f37a2d05f47d0b8a04891c47d54f3430` |
| 44 | `theorem` | [image3_congr'](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image3-congr-source-edition-2.md) | 255 | `result-track:cb1e113efbdae92d3e4220b09443b0438e53056a9b45d4357043f038360d94c5` |
| 45 | `theorem` | [image2_image2_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-image2-left.md) | 259 | `result-track:0d198fd674a187ef0846079c3afaee97ac14e23c385eb4791e4f95aaadca7694` |
| 46 | `theorem` | [image2_image2_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-image2-right.md) | 268 | `result-track:eceb44394898aa76870dea828205f22d5d3cc51344a71a04d6c656d4254af275` |
| 47 | `theorem` | [image_image2](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-image2.md) | 277 | `result-track:7ed5a11204a230bce873438c19efdc802e8bf084d8b55b9c141e1dbdc0511646` |
| 48 | `theorem` | [image2_image_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-image-left.md) | 286 | `result-track:2d64856bfb739dd89a72200af85a2b1af8363c0f214c7a73d36f92effcecae02` |
| 49 | `theorem` | [image2_image_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-image-right.md) | 295 | `result-track:8bd4eba68ac3d8d8407932de42549454344aa88cf2ef739b82f0e15ca83c3a92` |
| 50 | `theorem` | [image2_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-left.md) | 305 | `result-track:e2582adc30f423ce1581cd99fc7ef0de68751397566799adc2a39957bb35bfbe` |
| 51 | `theorem` | [image2_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-right.md) | 310 | `result-track:288f44fe1d1614892169fc711622b241a161df8f0f5a4ccc962d677eab714abd` |
| 52 | `theorem` | [image2_assoc](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-assoc.md) | 314 | `result-track:9fb55fc597e324fe5a0c55aba7af3cd39046d973fa8d4dbe12e70d8d39a3ca18` |
| 53 | `theorem` | [image2_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-comm.md) | 320 | `result-track:1262300861f01ca937bde4fbe22333203fc5a2c38617efa6dddcfa17c959567a` |
| 54 | `theorem` | [image2_left_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-left-comm.md) | 324 | `result-track:9e79944cea55b06617a5e2cb762f1baecf8d8ebd98a5afabaa9c87c888f53d78` |
| 55 | `theorem` | [image2_right_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-right-comm.md) | 331 | `result-track:2104455059a7a0365b4e23c7cbb235348d9a7be9d7e6c716b027b4f27cb89a8a` |
| 56 | `theorem` | [image2_image2_image2_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-image2-image2-comm.md) | 338 | `result-track:65b3c0b758daf9ea59e50a4df551e507b3af3d97a4401b813bf0db16df2b9d1c` |
| 57 | `theorem` | [image_image2_distrib](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-image2-distrib.md) | 349 | `result-track:4019579a298dcf164929d483799e02aa0f002a847c15b320047431ecb65eaea6` |
| 58 | `theorem` | [image_image2_distrib_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-image2-distrib-left.md) | 356 | `result-track:eda6688e03c6dedb5ca19d315898a0cf7d6e97465b4ba415b1ee429278139c49` |
| 59 | `theorem` | [image_image2_distrib_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-image2-distrib-right.md) | 363 | `result-track:58a3d75e96e253d5b52fdb86c0ea3a944cc2f645a7899aa4fbd1234a53b5a23a` |
| 60 | `theorem` | [image2_image_left_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-image-left-comm.md) | 370 | `result-track:47f79bcd1daedece1a341ae614e6e7cc52edae68e02a1b09e49bfd20f6e7a163` |
| 61 | `theorem` | [image_image2_right_comm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-image2-right-comm.md) | 377 | `result-track:17cce079de1a2d0fc5e2219ce03f271d7d73ddba3e353528dba7560c852ba41e` |
| 62 | `theorem` | [image2_distrib_subset_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-distrib-subset-left.md) | 384 | `result-track:39c933b0985500d1e1794f20ba0e2cf8b9828ec81691622ff71535477b43c044` |
| 63 | `theorem` | [image2_distrib_subset_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-distrib-subset-right.md) | 393 | `result-track:26020c4f0240ef6e64af6997f565af9514e889ef3e802aa12b95cf9af6c695a7` |
| 64 | `theorem` | [image_image2_antidistrib](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-image2-antidistrib.md) | 401 | `result-track:cf5872d35a98cfe20e4b26fda591bd51aef244dd43a71b2c45c32dfee896442f` |
| 65 | `theorem` | [image_image2_antidistrib_left](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-image2-antidistrib-left.md) | 409 | `result-track:5ba36240760ceb16f29a651fdffcd9b41f4243b585942a8579259ef14a8d4677` |
| 66 | `theorem` | [image_image2_antidistrib_right](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-image2-antidistrib-right.md) | 416 | `result-track:421b6d8c801008663970d89bf6d593837da3322214b0d8f27421b2468a74bb79` |
| 67 | `theorem` | [image2_image_left_anticomm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-image-left-anticomm.md) | 423 | `result-track:972e13dddea12fdd0067dfc26a27183f6971683f29c8e61c0bbc578db5f5b380` |
| 68 | `theorem` | [image_image2_right_anticomm](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image-image2-right-anticomm.md) | 430 | `result-track:b488920124b759a235268c3c5bf58c2e2a37a7a81f7e5844d210a452ddc8d77f` |
| 69 | `lemma` | [image2_left_identity](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-left-identity.md) | 438 | `result-track:e868af137a9bf0d0ec5a7ecb7ea4b0b1c515ec20ef1af180a5ad72261710d7b0` |
| 70 | `lemma` | [image2_right_identity](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-right-identity.md) | 445 | `result-track:aca47275027837191a1cbf2fcaea5eefc35a087e42bf7280e8608e8ce5e6f5a2` |
| 71 | `theorem` | [image2_inter_union_subset_union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-inter-union-subset-union.md) | 450 | `result-track:b0867539a789451f021453050538de75026a355774c85a3ef6e3ebedc20b05d9` |
| 72 | `theorem` | [image2_union_inter_subset_union](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-union-inter-subset-union.md) | 458 | `result-track:77de495a2ae6f4a2069f2d446e6795c6d682a09412310ac725f9b50f9f97de5f` |
| 73 | `theorem` | [image2_inter_union_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-inter-union-subset.md) | 466 | `result-track:ffc58f2ca77ba4d43ad0f7e278926143b97673cc5cf21ea3b78a25dd94922725` |
| 74 | `theorem` | [image2_union_inter_subset](../../../../../../MathematicalLogicAndFoundations/SetTheory/OtherClassicalSetTheoryIncludingFunctionsRelationsAndSetAlgebra/NAryImage2.lean/declarations/image2-union-inter-subset.md) | 472 | `result-track:268f10efcd7bb7504a0babc2cb2573da343ff95c0c55d63df23fbe93520d7a3f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f084b7630403a5922b73128822598433c2325fe960d68808288d6ea2224578e1 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/NAry/Variante300729aad720132291a3b93d1bdff7f72fd609106c4233db336af99f10ffe6a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
