# Verification target: PSet Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f5ed0347294c57dbdcc7789a58995f8df4f43b1",
  "lexical_observation_count": 93,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant30e7ede83c3c99bbc2b28aaf2f35c86e19426467849831f5c9033b392b1b56fb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/index.md) · [Full source](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f5ed0347294c57dbdcc7789a58995f8df4f43b1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant30e7ede83c3c99bbc2b28aaf2f35c86e19426467849831f5c9033b392b1b56fb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant30e7ede83c3c99bbc2b28aaf2f35c86e19426467849831f5c9033b392b1b56fb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Lattice` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PSet](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/pset.md) | 43 | `declaration-track:72a36eff5a85650d287d7d7b007a1a0276b15124e041c7496a2c31521f337481` |
| 2 | `def` | [«Type»](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/type.md) | 49 | `declaration-track:687fb9fc05c0e5a5ec8f23f8b789ab9d535147f5e7c068ddc9d1ea2bce572f99` |
| 3 | `def` | [Func](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/func.md) | 53 | `declaration-track:5e671ff93c0406d08a2723e43fd3d8ad96af43b826eff77a43efd98fafcc231f` |
| 4 | `theorem` | [mk_type](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mk-type.md) | 57 | `result-track:b6a5227afeec9428ea985271888b4a71a6069c5ca5acc61ac1676b247c7de7ef` |
| 5 | `theorem` | [mk_func](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mk-func.md) | 61 | `result-track:22a60b6c9bc377acced8b8f4a84c6522210033b4ee7d04b087a1c7d8745ec2bf` |
| 6 | `theorem` | [eta](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/eta.md) | 65 | `result-track:37d50398159ab1ee1b8d5970cc158887447290f0f4a3aa39cc5dc6d965535858` |
| 7 | `def` | [Equiv](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv.md) | 70 | `declaration-track:883480c9f0fcde8a3a04b16bbd2f60a67476939f6dabd144dbcc2efff5021748` |
| 8 | `theorem` | [equiv_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-iff.md) | 73 | `result-track:83e4164f871fedba7cf9431fe6ea2796f19ddd044935b18d6f4390fa4308be0e` |
| 9 | `theorem` | [Equiv.exists_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-exists-left.md) | 78 | `result-track:8517606c4da0139d1ee5767a00024f8e12f3759f3d8512ca8f39b8f2b8eee9d5` |
| 10 | `theorem` | [Equiv.exists_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-exists-right.md) | 81 | `result-track:46e05daaf76b1407516d854aa1f5687f98dae90d8c69665233f45334583ad6b3` |
| 11 | `theorem` | [Equiv.refl](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-refl.md) | 85 | `result-track:54263ce6f88aa0f0467380eb8c5bcb41f603200eb9a74fbc8dd6714adb45e683` |
| 12 | `theorem` | [Equiv.rfl](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-rfl.md) | 88 | `result-track:d6609aa4ae091ae98afe5517d2edee9c6d6ca84463362a9733ee6a47b7847c3d` |
| 13 | `theorem` | [Equiv.euc](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-euc.md) | 91 | `result-track:f4974861404de2ff44daf77512b63860c2dc70e1d1c12f0a76936e02952a5c26` |
| 14 | `theorem` | [Equiv.symm](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-symm.md) | 103 | `result-track:4bce81153fa50377f0656846f66f8496636fc762bce274c92faade6e7f95f9ee` |
| 15 | `theorem` | [Equiv.comm](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-comm.md) | 106 | `result-track:395b034eb7223f6ecf8f4ca225a2610100a3e2706122a4160ddb7e88e174af6c` |
| 16 | `theorem` | [Equiv.trans](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-trans.md) | 110 | `result-track:a1ca904e5e5993066412538208a57f5afe0a7e4dc24159477f1cd045cc54f40e` |
| 17 | `theorem` | [equiv_of_isEmpty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-of-isempty.md) | 113 | `result-track:92e38647bb1b36884b1d4b3be73833ceec2bac09cdc84e127581fecda50dc2b1` |
| 18 | `instance` | [setoid](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/setoid.md) | 116 | `declaration-track:ff440867b9259cf1f32454bf47ba3d9e7dc7406f45ea73b84a43ef1e8234433d` |
| 19 | `def` | [Subset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/subset.md) | 121 | `declaration-track:13666ae7d43f7e47665a3f0e37784d9e669df2553f6d883465d46d42cf61b851` |
| 20 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-4.md) | 124 | `declaration-track:5675aeb091b8adbacba1ea4abf8c7f21184fb41fe87f49be3fce255fc03ea6c6` |
| 21 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-3.md) | 127 | `declaration-track:4670788ee8b5630f953c85a839ad8a948ae25147779bc4daecd62b40cad39424` |
| 22 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-7.md) | 130 | `declaration-track:70ffe5402efae526d9773a8c212440d3699a9a445be3e5e2cb34a1226bc6d188` |
| 23 | `theorem` | [Equiv.ext](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-ext.md) | 136 | `result-track:f03934820ad82bb4aa5feb6e9e1dfbcb74dbe4ee1a660a473f29dd8a1e7abfcd` |
| 24 | `theorem` | [Subset.congr_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/subset-congr-left.md) | 147 | `result-track:fd9f8f61b0b32997fd13d87a2757d875758b93c4d7b8ebc49863aa29a5876d0d` |
| 25 | `theorem` | [Subset.congr_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/subset-congr-right.md) | 158 | `result-track:9e2fa29d2709bac2e65d9333c6cdf329a97bd970673c4b9e8de4626c1b6c84f6` |
| 26 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance.md) | 169 | `declaration-track:37ad5ca171f1c8d8e981ed7cbfe607480600d189560a9b7b982c45690405ba59` |
| 27 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-10.md) | 174 | `declaration-track:ab1d73a6b4df3c1f0e0a9c6ab5fb8e1a76eb9b2c37e527cb93475ea7b881350e` |
| 28 | `theorem` | [le_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/le-def.md) | 177 | `result-track:1354100b5bf10c56201c7844c79dc72b2876aa353c8236d98921e63c88ee040f` |
| 29 | `theorem` | [lt_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/lt-def.md) | 181 | `result-track:b2b228deea18d3b3503645638fc54ba59d439f14c29cd79d237be4a75c3bad8d` |
| 30 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-8.md) | 184 | `declaration-track:a333782ca88c4571546414e6a58756723a6782e3716ec34b74d189d30ff6a18b` |
| 31 | `def` | [Mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem.md) | 188 | `declaration-track:9fe9d1fcdfc2de3c806c2a6621ea86cb807a25f66ab9a84f198e66293003a688` |
| 32 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-2.md) | 191 | `declaration-track:4328e3569b36b9ce6798b38b00ff572d65f96167f80e1a142f76d8a1fe7a320d` |
| 33 | `theorem` | [Mem.mk](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-mk.md) | 194 | `result-track:389ea1d39be46bc4f58325825aee2c724afdb04f01209dc912ce5cb461822ca3` |
| 34 | `theorem` | [func_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/func-mem.md) | 197 | `result-track:6aef088521524e9d3241698b12dcd81b045454038bb07391544d91d9406c7148` |
| 35 | `theorem` | [Mem.ext](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-ext.md) | 201 | `result-track:67f904f3f298f48f8243e8216e333c01fb145b813f5ded3dc912aa68bf9a9392` |
| 36 | `theorem` | [Mem.congr_right](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-congr-right.md) | 207 | `result-track:c8868063d4c70965c1b6c9f6d49b2e369f4d2d1651bbd69d50efc84fa79ddcf9` |
| 37 | `theorem` | [equiv_iff_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-iff-mem.md) | 216 | `result-track:1f4e1eeaced41c9ce4bdce154732d34e7774a962a654df77c4f1ace85be909a7` |
| 38 | `theorem` | [Mem.congr_left](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-congr-left.md) | 224 | `result-track:50b9ce4a153587d38cb11d2bbeb987cd637a86588498b82c50a0adb0ecf6384f` |
| 39 | `theorem` | [mem_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-of-subset.md) | 227 | `result-track:f7fac6e4e90fa414ca1fe849806a4c06623934a3edd1f700e4e110f0349d226e` |
| 40 | `theorem` | [subset_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/subset-iff.md) | 230 | `result-track:b19686fde3d6c5d84504e48268ba3b7653ed430625ba459a2d72682c7cadead3` |
| 41 | `theorem` | [mem_wf_aux](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-wf-aux.md) | 233 | `result-track:6cac216e10d5d9ba3a42aee022b220b41c53d51aa3acf230702b03f5f853dfd4` |
| 42 | `theorem` | [mem_wf](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-wf.md) | 242 | `result-track:4f1ba19035a969459b705882f58def3f85f12696455adce2ea047c292b7e75f0` |
| 43 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-15.md) | 245 | `declaration-track:dd1030e095a040267772dfabeb59c137712e86cd1ad4cc0113a7961f68a5f4a1` |
| 44 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-6.md) | 248 | `declaration-track:6cc5a66583d8cc9f8bb78acab4b285cc6b96e35fac13ee923054cd5f3fc6ad08` |
| 45 | `theorem` | [mem_asymm](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-asymm.md) | 251 | `result-track:e6cffc578d5e58a8dfa7538fc1c50822cb425ecc98f8cfa55a22e3bbe2408caf` |
| 46 | `theorem` | [mem_irrefl](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-irrefl.md) | 254 | `result-track:a941243c8eaf8e855c3bc3cd08f5b37c23b6a1909aa6efe006027b380872cfa6` |
| 47 | `theorem` | [not_subset_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/not-subset-of-mem.md) | 257 | `result-track:8559fc7eb60539482d7d0227159ab4c4ae029bae0b3b91c2648c651b2293241b` |
| 48 | `theorem` | [notMem_of_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/notmem-of-subset.md) | 260 | `result-track:41a0a761226c68505a0122d141f408c68b23c99bb6730d669bd708bf1fb4fda2` |
| 49 | `def` | [toSet](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/toset.md) | 266 | `declaration-track:8581b2ad4a6edb23a72705f66dc94af3c394120ce5a5786d3d075c9083fd2a68` |
| 50 | `theorem` | [mem_toSet](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-toset.md) | 270 | `result-track:540eba2768100b067cdba8226b46eb25371c40919ed643511a03b207477c454f` |
| 51 | `def` | [Nonempty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/nonempty.md) | 274 | `declaration-track:a5cb930244ae4c8bce972b8ee0c55cf5aa9bd363110ef7cc50f00eb7d36a8705` |
| 52 | `theorem` | [nonempty_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/nonempty-def.md) | 277 | `result-track:9fefe0701b435649711c42d085f9c5eba66b10067b0506fcca41483f1aa62cf7` |
| 53 | `theorem` | [nonempty_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/nonempty-of-mem.md) | 280 | `result-track:670dc1888d7550e7c9bf5a2692bdf60a8a9c46f0a400ed314f14089c67d0703c` |
| 54 | `theorem` | [nonempty_toSet_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/nonempty-toset-iff.md) | 284 | `result-track:208454791b8255aae384beebea80af2300c70beabfe8fd0bdf0b543be22a9b4a` |
| 55 | `theorem` | [nonempty_type_iff_nonempty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/nonempty-type-iff-nonempty.md) | 287 | `result-track:ae654dd06825531eab91796178f353ba051fd58a0504531442e0ef9a3e1b15e0` |
| 56 | `theorem` | [nonempty_of_nonempty_type](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/nonempty-of-nonempty-type.md) | 290 | `result-track:866708f7898997bdacd6b36ce9b14182ff1effde9340dd303750045d2e5cbfc7` |
| 57 | `theorem` | [Equiv.eq](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-eq.md) | 294 | `result-track:c73688d6cf37507864a306b85cf78f1e9413bc5855f180c0c84c5090708ccb83` |
| 58 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-16.md) | 297 | `declaration-track:f4223b958fb5350d881110c101f78273637e70e0458e86aad8c3f7fde8b534de` |
| 59 | `def` | [empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/empty.md) | 301 | `declaration-track:ae3ba3d8db27cc40f0eae18a231a66491c6a081125fb07e47b6bfce2dac7244a` |
| 60 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-17.md) | 304 | `declaration-track:f6619b7ff8c0dea2ad07e9cb89e1398248306a297beb93d67e88a8f5339a6e08` |
| 61 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-5.md) | 307 | `declaration-track:6c78378b30e9cbd615651ecf7d8836f7c5d2fe01255db3fe55b5d22bda82ae06` |
| 62 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-12.md) | 310 | `declaration-track:b9aada96d57eb3fd00f7b890b2fb328ca575fcb17782ddcb7cf990034ffd9a78` |
| 63 | `theorem` | [empty_def](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/empty-def.md) | 313 | `result-track:05dcc9b385c54447e7b58a12025b6a14af26b3d0d4ff3ae61150be41e52e4a29` |
| 64 | `theorem` | [notMem_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/notmem-empty.md) | 317 | `result-track:003d42288ad3db6290be1a3db96fcc5d312a4cf0f32710f7259548a60181b7c5` |
| 65 | `theorem` | [toSet_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/toset-empty.md) | 323 | `result-track:028622c3e47771c28d05ec2fa7c5f34e09dab7c3de40d468f14cb03e5ebbddd5` |
| 66 | `theorem` | [empty_subset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/empty-subset.md) | 326 | `result-track:8363a039d47040a460796dcd35766994b5123c878fab324ebf97b66fdfa253e7` |
| 67 | `theorem` | [not_nonempty_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/not-nonempty-empty.md) | 329 | `result-track:365fe251e3b4d9446f2afde59dcbeedc44c0cc7d9df07cbb7ca92b6c8f1f5e73` |
| 68 | `theorem` | [equiv_empty](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/equiv-empty.md) | 331 | `result-track:eef6a85659d5a35bcec7fed2bdc8d0dd61d53b4a1ade948270a080653efbe9c1` |
| 69 | `def` | [insert](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/insert.md) | 335 | `declaration-track:7c6c53962ed3ea0fa1f03d0f693966b614701657737fea6a86a46016850dea1c` |
| 70 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-14.md) | 338 | `declaration-track:d8a7eabb6f75b3d2ce146f77fbf69b5194ddce6497d1b8979a90d14d10b27b0f` |
| 71 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-13.md) | 341 | `declaration-track:d8016fe8c0f0d64fdc6a287a7fd15b74cbcf0040fe6bc497ccf13ffd02d11244` |
| 72 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-11.md) | 344 | `declaration-track:ab9ebd1e1f2b9ee497449360c28b14e6e27fbb42195a8a151af95700f77119af` |
| 73 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-18.md) | 347 | `declaration-track:fb629db82df4fdbf4deb760682aa0421f536a5c6f0bd3f413cbbd038f3b45bf0` |
| 74 | `theorem` | [mem_insert_iff](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-insert-iff.md) | 351 | `result-track:21ec27c9ee30af4dd97d5f78abf2baf3e9ef25764d9bceae9daab22f284ecb81` |
| 75 | `theorem` | [mem_insert](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-insert.md) | 363 | `result-track:2a688a8a74cabf872cbcd2d678e7f28ba2264c70766d18afeb4103700a343e94` |
| 76 | `theorem` | [mem_insert_of_mem](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-insert-of-mem.md) | 366 | `result-track:c9d03b05281a1aad2ce27cbdb21f9c04f630227f0098920f540f0e798e211152` |
| 77 | `theorem` | [mem_singleton](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-singleton.md) | 370 | `result-track:06b7b85bddcc30b902d2ee81e7c1b9aad5181104102a4657bdd67f4b0b5dc0ef` |
| 78 | `theorem` | [mem_pair](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-pair.md) | 374 | `result-track:8a2310ed853dffbe27935fa0a04afee9bd6d86ebf197f8b685bd47cf32ddefed` |
| 79 | `def` | [ofNat](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/ofnat.md) | 378 | `declaration-track:1e687e282388e8d7a73fb9cd149c6bea09b6d27f4e4662beeec940ca16606b69` |
| 80 | `def` | [omega](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/omega.md) | 383 | `declaration-track:b3c34713dd74748974c1d8c3eff8c6a7d6c36f1c40897569fcd300b911bbd269` |
| 81 | `def` | [sep](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/sep.md) | 387 | `declaration-track:ef186d88dfe7315e388e225f40de2440b9645554b72342e7aec535995e75e1b4` |
| 82 | `instance` | [(anonymous)](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/instance-source-edition-9.md) | 390 | `declaration-track:a44950ee7f02986cfa8c96bf3c79a06003e5fc5ae86c92f568d584f299b596c4` |
| 83 | `theorem` | [mem_sep](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-sep.md) | 393 | `result-track:870d95148fe802346dc2a35a2279498b0d8721327d09005b5b13130e07e940fb` |
| 84 | `def` | [powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/powerset.md) | 400 | `declaration-track:f84bad4f5b9e5670cb391917174e34b1177c65d8f7fe8b93e04b083546bd355a` |
| 85 | `theorem` | [mem_powerset](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-powerset.md) | 404 | `result-track:d52cc14bac1869339bf75097f3ff1c17d4df420657fa7a3b206bcf03c5ab4724` |
| 86 | `def` | [sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/sunion.md) | 413 | `declaration-track:d7f2b38e7b375e96dc2342e941700035c8cd6258f81be3b8694e2a3a64ec07ae` |
| 87 | `theorem` | [mem_sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-sunion.md) | 420 | `result-track:42b9d7706c036a12de78b07851aee9ef18c4b08363f98ac14ff8cf216ddb76d7` |
| 88 | `theorem` | [toSet_sUnion](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/toset-sunion.md) | 433 | `result-track:fcd0153d172543a0b0184644e3af5409730a27a4251c60ab28e9bee28485c4e1` |
| 89 | `def` | [image](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/image.md) | 438 | `declaration-track:f727de154dc1a31846e217bc8b3238016d850a2200f0a3d26fd76dc153dd30a0` |
| 90 | `theorem` | [mem_image](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/mem-image.md) | 442 | `result-track:73c12759f3cae1d509237e39cdc6be7f3b493cc770a8defc7ba84f8b75a8fac3` |
| 91 | `def` | [Lift](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/lift.md) | 448 | `declaration-track:2037570a7eca1eb6aa678f13acf41cd3f6a2d4f7fce5dd772c9b3d597cc8c098` |
| 92 | `def` | [embed](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/embed.md) | 454 | `declaration-track:3668bce6d1c0f820914b6d16bf3c099d34be2e5186ecacba52139d56a872b8e1` |
| 93 | `theorem` | [lift_mem_embed](../../../../../MathematicalLogicAndFoundations/SetTheory/PSetNamespaced.lean/declarations/lift-mem-embed.md) | 457 | `result-track:a109318022bfb4482c67fd9975a6de9ec7d97b37895b39f35debdbdd3bc6da5a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cb74690b7811ad4d00d0af3a09cc17ba7a98cdc06d07f3ddce8e1afd7f43bcd9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant30e7ede83c3c99bbc2b28aaf2f35c86e19426467849831f5c9033b392b1b56fb.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/PSet/Variant30e7ede83c3c99bbc2b28aaf2f35c86e19426467849831f5c9033b392b1b56fb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
