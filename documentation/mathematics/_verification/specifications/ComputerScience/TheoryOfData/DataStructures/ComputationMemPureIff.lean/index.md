# Verification target: Computation Mem Pure Iff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27573d8f6c6e48b6d13044f63fa3a7c09934ba50",
  "lexical_observation_count": 181,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf2997fcf0b88767d4dee12a557a4752608c22e4c3206319892848e82ff5ed36e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/index.md) · [Full source](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27573d8f6c6e48b6d13044f63fa3a7c09934ba50`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf2997fcf0b88767d4dee12a557a4752608c22e4c3206319892848e82ff5ed36e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf2997fcf0b88767d4dee12a557a4752608c22e4c3206319892848e82ff5ed36e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Find` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Stream.Init` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Common` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Computation](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/computation.md) | 29 | `declaration-track:bbf16c3e54eb1ed02442ca3e8db8c19c34c1674f814ffb62c4005ad22e2cfac8` |
| 2 | `def` | [pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/pure.md) | 38 | `declaration-track:3a246acfd826a8d345435b55cbaea9180fb8c79ced2045580415b54ea3e8262f` |
| 3 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/instance.md) | 41 | `declaration-track:0c972ebbc0e01c870c0e5de19f8ce8d7ee9b117e6914f5f2e55f7dfe09f44838` |
| 4 | `def` | [think](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/think.md) | 47 | `declaration-track:50e90c3ce2a49e7cf7af70c1c8a9661b559dcc9768833b8ccb246bea6259adac` |
| 5 | `def` | [thinkN](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/thinkn.md) | 55 | `declaration-track:342e837092ae595fbf5609c9554f3cc82a2849302e7b38dc74e7b5f064db0a97` |
| 6 | `def` | [head](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/head.md) | 62 | `declaration-track:b0548394e52cc6739c36b04ca669534f0ad10814711e2cd70f8bedd8cf6991e7` |
| 7 | `def` | [tail](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/tail.md) | 68 | `declaration-track:37b3d779cbc8fa9755e1c53a1530e968a2bd5c748d23a5512514d8a326332e6f` |
| 8 | `def` | [empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/empty.md) | 73 | `declaration-track:173ffd1676d9fcf1b0e3400536db9d6f35e7b41144d82469453087b08f5a37c2` |
| 9 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/instance-source-edition-5.md) | 76 | `declaration-track:be3fe3ffa691d3a6e4b256d8560c8d039e45036d4b35a0bb7273ac71ace95d73` |
| 10 | `def` | [runFor](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/runfor.md) | 81 | `declaration-track:c641490c7d8f0875d979fd1a14680c7e3014892a0dbbed8c2f2da5a9a490e1c7` |
| 11 | `def` | [destruct](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/destruct.md) | 86 | `declaration-track:a39f3605b2c58d5560b5e706746047f89b102a0f9378b2b8164d096f8c79cc38` |
| 12 | `def` | [run](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/run.md) | 93 | `declaration-track:ab2ab1b16f6ec919bd5126fd68585982aea2e4adeb6aaf9407c6069d156c4a0b` |
| 13 | `theorem` | [destruct_eq_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/destruct-eq-pure.md) | 99 | `result-track:b708249cf3973fca32930bbd1227629bab7d2ca6564263209e4f00febcf2c44a` |
| 14 | `theorem` | [destruct_eq_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/destruct-eq-think.md) | 110 | `result-track:e761c54ec408c1cb62ec504a46f7bc768095976f518aa56cae31d90ad880c4ee` |
| 15 | `theorem` | [destruct_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/destruct-pure.md) | 123 | `result-track:b17073ae2b7c9421cc94b139028a5cb4d8dbf2182ba70159e195876b8b69920e` |
| 16 | `theorem` | [destruct_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/destruct-think.md) | 127 | `result-track:2fdfa895d563c5d46f5ac3af42835c987f62425f942a7efe8789f67cf9c2bb77` |
| 17 | `theorem` | [destruct_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/destruct-empty.md) | 131 | `result-track:225bb968b7f8e692c411440684a68fcc18bd147faef64b5bc9346d59dd93ef0c` |
| 18 | `theorem` | [head_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/head-pure.md) | 135 | `result-track:2b752e60124aa3994fd79e3345b77354a9ddfd53d5dfd8d755cff648170dc96b` |
| 19 | `theorem` | [head_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/head-think.md) | 139 | `result-track:fca0dce8f2001ec960b8c5a61bf120cef146dc1089108f9beb8861835ca3979e` |
| 20 | `theorem` | [head_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/head-empty.md) | 143 | `result-track:5c295292f6eef3e41b97b120566b1e786057e437e1e9b81e00f28f771601f56c` |
| 21 | `theorem` | [tail_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/tail-pure.md) | 147 | `result-track:71b1d93db6f993784b2b02569e21b17b7bbedd4fc7ff53b04bc72984032d7455` |
| 22 | `theorem` | [tail_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/tail-think.md) | 151 | `result-track:e61c5d4d92ceb70b82a971ea827683b5c16fa646bd5efbf21ddee326a1df1b1a` |
| 23 | `theorem` | [tail_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/tail-empty.md) | 155 | `result-track:a1914017dc01b068327b9636a47a3248502f130a3990b10ccb5fd308623c82a2` |
| 24 | `theorem` | [think_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/think-empty.md) | 158 | `result-track:995ba275a262186b20608e45badf4345cf017c3066879b8344f2210bfaad72b3` |
| 25 | `def` | [recOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/recon.md) | 162 | `declaration-track:8def9cc5794d8f114b7b5af8270173cc9f4ba9e08280cca23aa2a2365794be8b` |
| 26 | `def` | [Corec.f](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/corec-f.md) | 174 | `declaration-track:d654af699531a40642f171bbc0f019990a268c894566508694a38a257e1e5a3b` |
| 27 | `def` | [corec](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/corec.md) | 185 | `declaration-track:857a7f8696a0ed509b247f139096ed3c998f75db41378d1272b56ebe0cb6cf6b` |
| 28 | `def` | [lmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/lmap.md) | 199 | `declaration-track:8f27b9cc5a1dd0c27b9ea28d48a54bd45be05bdff50544f23b9623a3090915fd` |
| 29 | `def` | [rmap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/rmap.md) | 204 | `declaration-track:3e66b63482c4c1f7ecfad80963a0a5d708660316595bbf11d37793099c5dee02` |
| 30 | `theorem` | [corec_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/corec-eq.md) | 211 | `result-track:fc3e02c56ea2ddb742f7807e0573ae2b59be4b96dfa3f0ef92cb99cf66943f0d` |
| 31 | `def` | [BisimO](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/bisimo.md) | 235 | `declaration-track:21f0f95c195da85cb2f9c8e8ab668f3878e7ec472cb7ac811ddb0188ae81d362` |
| 32 | `def` | [IsBisimulation](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/isbisimulation.md) | 244 | `declaration-track:12a378961d2da417110176bc11425d8404bc852f31bf03243de73221402d82be` |
| 33 | `theorem` | [eq_of_bisim](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/eq-of-bisim.md) | 248 | `result-track:917d0dcce3aa86c990798faace7915d6ac74f4214558ccd2672680d53d57b4e0` |
| 34 | `def` | [Mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/mem.md) | 276 | `declaration-track:533a963a9cac78a85ec04d43caedb6720dffff16f5a1a0811037f51f90aca0a4` |
| 35 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/instance-source-edition-3.md) | 279 | `declaration-track:8ad54eda54421a336edcef45436db427f66f08f3aad9e34728764fe7f4ba4549` |
| 36 | `theorem` | [le_stable](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/le-stable.md) | 282 | `result-track:1ee19fe51f8caa8044217926d1ace08b1a4348fda150115c312d23bb132478f7` |
| 37 | `theorem` | [mem_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/mem-unique.md) | 287 | `result-track:bc0b3e2c10c2f8b5f6d4afe1b314680735898de98a48829d0850b2982f7eacb4` |
| 38 | `theorem` | [Mem.left_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/mem-left-unique.md) | 292 | `result-track:a3f5b09fb287e94a6f76cb3b28e834e3d7a39832951c228b7cfb65cee7da951f` |
| 39 | `class` | [Terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/terminates.md) | 296 | `declaration-track:b0cc0cbc1b0082a3c7cf16c9903da6a09a93e641772d1c3e1699b7fd3f6f22ed` |
| 40 | `theorem` | [terminates_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/terminates-iff.md) | 300 | `result-track:4dc6f82e90af92958752e911a372dad435cdae7bee0f87d75fc7da534858dce4` |
| 41 | `theorem` | [terminates_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/terminates-of-mem.md) | 303 | `result-track:d3e28d1a5bf59d25e350c90f1b278a1222f6f8beed39578f4b7935dab2cf3f71` |
| 42 | `theorem` | [terminates_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/terminates-def.md) | 306 | `result-track:bc47c2878c166a496686323291f12df53751a67d2da1bea60b29771c3f7393a4` |
| 43 | `theorem` | [ret_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/ret-mem.md) | 314 | `result-track:4f8ea3dcc27b2faaefef2493fd9178a458cd97eb727bec825ec0b36a95975b54` |
| 44 | `theorem` | [eq_of_pure_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/eq-of-pure-mem.md) | 317 | `result-track:ca6f19e9d0aa811a3ac6ccfe2420938e3715fe0166aa4376ed7c31026f860ffa` |
| 45 | `theorem` | [mem_pure_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/mem-pure-iff.md) | 321 | `result-track:53af04b04319f97beadc75aabfd4f07b172d6efec78e64d943888686ee2bb221` |
| 46 | `instance` | [ret_terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/ret-terminates.md) | 324 | `declaration-track:c967502c9685994c8b794a42bd4291e58f227454e47443ea86092c7b5351ecac` |
| 47 | `theorem` | [think_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/think-mem.md) | 327 | `result-track:87b194b8eba95872c7a8f51875140d393e987dc01f5023ef2a7f454e1af01183` |
| 48 | `instance` | [think_terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/think-terminates.md) | 330 | `declaration-track:bfb51147f8c280a1c9e0ea685f5b96bc1603af33103c2936fc77c10b8599f75b` |
| 49 | `theorem` | [of_think_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/of-think-mem.md) | 333 | `result-track:5c0dd62b73bf628ba018c2182b914c286c159d0b0248d992b19fe1046ffb3b8c` |
| 50 | `theorem` | [of_think_terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/of-think-terminates.md) | 339 | `result-track:db7ae7a6f88b18dcb2a9944e4f7361c00222c80d0123112edca0a2c95bcce842` |
| 51 | `theorem` | [notMem_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/notmem-empty.md) | 342 | `result-track:6f5417f089202a73099e6996a6db2c0c10c4e4d2d729e4c615f25939a7d7a5df` |
| 52 | `theorem` | [not_terminates_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/not-terminates-empty.md) | 346 | `result-track:0a7d948c9aaf2afe5e1b38128087fc3ea3ad4692a4adba3ac9ea8f5c3e118544` |
| 53 | `theorem` | [eq_empty_of_not_terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/eq-empty-of-not-terminates.md) | 348 | `result-track:bca6d9ee6baa3efa5f5104b6f27862f6784eefb3de07d619691434910bb0bdb5` |
| 54 | `theorem` | [thinkN_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/thinkn-mem.md) | 353 | `result-track:1f905c82960ff205376120a7b115d91c793868488ab39eaa74f03cf33b4f20ff` |
| 55 | `instance` | [thinkN_terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/thinkn-terminates.md) | 357 | `declaration-track:340cce9d659d1524fe98d518bdfd2ffe2ebd34d802088024fc9f91e97340aafd` |
| 56 | `theorem` | [of_thinkN_terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/of-thinkn-terminates.md) | 360 | `result-track:01646b077c256af884e48597c45e9030f40bbf60f0ecdae53a205eba99af3292` |
| 57 | `def` | [Promises](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/promises.md) | 365 | `declaration-track:d5a841e27dab7f6d067eb31f2185ba2c29306031982f112f00846832330e78c8` |
| 58 | `theorem` | [mem_promises](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/mem-promises.md) | 372 | `result-track:3a505c153e61c29def47ed521c19ba7e0c3c446545666bd3fb2d65324fce0701` |
| 59 | `theorem` | [empty_promises](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/empty-promises.md) | 374 | `result-track:8fbb05d7b5f2caeff34629e2a036f23f04449099c74768967367bdfc60a1104f` |
| 60 | `def` | [length](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/length.md) | 381 | `declaration-track:ba39000a2074433643a5e532303afe102ff897b37dc0fc65dcfd293326a8ae33` |
| 61 | `def` | [get](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/get.md) | 385 | `declaration-track:cd26a40973de5d8fe9ca31aa53e379f1169c6060644db35d4e0089fe0c3dce98` |
| 62 | `theorem` | [get_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/get-mem.md) | 388 | `result-track:66bd70cfc96accfbc0f6efe6b5398392145bd8cf15c48103be656d7cc3ec2d35` |
| 63 | `theorem` | [get_eq_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/get-eq-of-mem.md) | 391 | `result-track:1dbbae34cd9b95526533a56cfc92e7d9b555f5b035409026bd161bc84399502d` |
| 64 | `theorem` | [mem_of_get_eq](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/mem-of-get-eq.md) | 394 | `result-track:725be17b3499de43baf5b21255a83f10c626eed07314b6762d324bfc2ce937cb` |
| 65 | `theorem` | [get_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/get-think.md) | 397 | `result-track:a868e6edbe52f75a00b3a4765e748865fa835027d0657f855ea95dcc3ba01466` |
| 66 | `theorem` | [get_thinkN](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/get-thinkn.md) | 403 | `result-track:4b989415438e24a5ef62835abcb2d360d69f67ea8145086bf9360183f2989137` |
| 67 | `theorem` | [get_promises](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/get-promises.md) | 406 | `result-track:ff5df166a0d9ce072c04f4bfa65a954102b1e5df959a454f7000c5882b2283f5` |
| 68 | `theorem` | [mem_of_promises](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/mem-of-promises.md) | 408 | `result-track:943f20fd02e6bdcd3fc1cadf842771e34171784fb8588f6dad4cd49333e1a1b2` |
| 69 | `theorem` | [get_eq_of_promises](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/get-eq-of-promises.md) | 414 | `result-track:c30484610ace37c89abd76213b9dd725da19422de5a0e08fe9d2e59845a28417` |
| 70 | `def` | [Results](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results.md) | 421 | `declaration-track:fa06e4a2113b2c1adba7a14c6492e4ebdcc4509bddadb9165a0564cf5bf9cdb0` |
| 71 | `theorem` | [results_of_terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-of-terminates-source-edition-2.md) | 424 | `result-track:ef6dcfcbeddd89e612d3b88065215b070c1bb73c75347d5761acaf739f8e3c76` |
| 72 | `theorem` | [results_of_terminates'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-of-terminates.md) | 428 | `result-track:298074dfbc0a0213a27d3b44715eeb6297b9183e3c2f8aad46e081320e4fc298` |
| 73 | `theorem` | [Results.mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-mem.md) | 431 | `result-track:36b9b6ed0c15cde6dcdfc4c85fdaab942b3a744fbf9721230515508db527e88f` |
| 74 | `theorem` | [Results.terminates](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-terminates.md) | 434 | `result-track:ef2cbe7e456929d22e07abbd630f4cbcf5ea57831ce23cd0992b3cf1d8951215` |
| 75 | `theorem` | [Results.length](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-length.md) | 437 | `result-track:1033f421580ba7d5b1f47fbdb87ac277404d1cb82b184dae4d1cbbc1e3ef782a` |
| 76 | `theorem` | [Results.val_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-val-unique.md) | 440 | `result-track:01dff3f55a8bf17ef5f1b394a7c4408a18c6b5591d9323fb5e9838bec3382097` |
| 77 | `theorem` | [Results.len_unique](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-len-unique.md) | 444 | `result-track:cb0a2ca38f15a082b0408054e7910d0a12b90b56b85826ade734ab47ce125143` |
| 78 | `theorem` | [exists_results_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/exists-results-of-mem.md) | 447 | `result-track:c767ca251794cb8ecc136aa932533d25927e6384ea9785803667b4b1455735e1` |
| 79 | `theorem` | [get_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/get-pure.md) | 452 | `result-track:c2dd2a4acbd704ab3f7c82ab09b2060547fdfc439c06d080f0f9ac6f18ef43cd` |
| 80 | `theorem` | [length_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/length-pure.md) | 456 | `result-track:92bc34ee330ad5436087d22e10d960f2472ee11c870af51b537ba11d9fd754af` |
| 81 | `theorem` | [results_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-pure.md) | 460 | `result-track:884dea119bd2cfcfdc526d0149f4ee05765db0d9d05fffec0ed6dce620fd2803` |
| 82 | `theorem` | [length_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/length-think.md) | 464 | `result-track:6abe9957df821f3f9eaa5e98fc37ab8249abafafedb6fb9bad9c7e35d800fdfd` |
| 83 | `theorem` | [results_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-think.md) | 475 | `result-track:a72563fe6cd0b9f0ddb45bb9f096a9b504b352f76c71ca96628589f47f34bea1` |
| 84 | `theorem` | [of_results_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/of-results-think.md) | 479 | `result-track:0b21a471698d1ff77870fe294cbcc6117b2a59fce8ca4fd96423b5bc4e349208` |
| 85 | `theorem` | [results_think_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-think-iff.md) | 486 | `result-track:3ecf20522136ea5ec4fff39efc9f602ccf491f8308b465cc12a8a55270a8ef55` |
| 86 | `theorem` | [results_thinkN](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-thinkn.md) | 491 | `result-track:92839fc013f9e2642297c47c01625d8e7a7788b528ff9a20407461053ec513e0` |
| 87 | `theorem` | [results_thinkN_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-thinkn-pure.md) | 496 | `result-track:cec8bcf2a24fe2a0afcdc71cec9088cab748bee45b8d6c1fb6d1c46eecf6ae77` |
| 88 | `theorem` | [length_thinkN](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/length-thinkn.md) | 500 | `result-track:3089f95ed6abb260ed792ddea0dafed39f10554574d3f7b5f283a276f9d2e4e9` |
| 89 | `theorem` | [eq_thinkN](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/eq-thinkn-source-edition-2.md) | 504 | `result-track:e6ae6b47f2fbdd7d1834a61149308c8c29cc59bd8c5d9d111d299e10df5f8bf2` |
| 90 | `theorem` | [eq_thinkN'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/eq-thinkn.md) | 518 | `result-track:a489f0eb1793e06e1d441c5c9d4711df8df072c1fba59edd4eaffa583d6f7273` |
| 91 | `def` | [memRecOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/memrecon.md) | 523 | `declaration-track:266d030eb603b496ea4107fe721c33d9d396835e831a91c2195d0f76db2609df` |
| 92 | `def` | [terminatesRecOn](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/terminatesrecon.md) | 531 | `declaration-track:dcda11e15ac41eb27b0cd4b3f5ac4cbf74ce21a3dd40cb425a393979355c422b` |
| 93 | `def` | [map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/map.md) | 539 | `declaration-track:e326517e4f533ae8026c478762e5ef3af9f37a70d0f620124e58f6684cd276a9` |
| 94 | `def` | [Bind.g](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/bind-g.md) | 548 | `declaration-track:1404b063fe12cc87ef8aa5007819ea0cf2686dcf7903217347ea903664848b67` |
| 95 | `def` | [Bind.f](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/bind-f.md) | 553 | `declaration-track:2b7e0aa2247f410eff2c50fb31e312aab0f466462c7009367f952764bf48e120` |
| 96 | `def` | [bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/bind.md) | 562 | `declaration-track:ba142d921a9e9bc19567efe4b57f74e8a8c544b541b6815c17fe7a13a2800783` |
| 97 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/instance-source-edition-4.md) | 565 | `declaration-track:ac664a3d1df1b60313e54e85d60055af513e86d22964f58371e462c4d672c733` |
| 98 | `theorem` | [has_bind_eq_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/has-bind-eq-bind.md) | 568 | `result-track:6e07d5a37ef53031a7d8239774769b1d5382b3ecb0bbc28d7663815991f830fb` |
| 99 | `def` | [join](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/join.md) | 572 | `declaration-track:7dc2cf971dd93a942179ab48a71d811be0e385e201c70d097abd9152664bd371` |
| 100 | `theorem` | [map_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/map-pure.md) | 576 | `result-track:3913f91b51cc3f97a5288a9a268fc94d79038afb9e9271fc3efd6750ac0b014b` |
| 101 | `theorem` | [map_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/map-think-source-edition-2.md) | 580 | `result-track:9b095fbbc71e293adf254df9970c2f0ac9caebcfb289df0302b2876582c70e85` |
| 102 | `theorem` | [destruct_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/destruct-map.md) | 584 | `result-track:17777334eaa0093e30abd3e3e4b1fc3e501489933d8d668598921a287c922123` |
| 103 | `theorem` | [map_id](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/map-id.md) | 588 | `result-track:a5b1e1e4b5de2b985a9fa86ad737abddb3d17a7506f1d9fa03a4f5e31a2a8325` |
| 104 | `theorem` | [map_comp](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/map-comp.md) | 595 | `result-track:a855344aef59088eb4c01268f08bd50572d065618208edf9081535ce87d36aed` |
| 105 | `theorem` | [ret_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/ret-bind.md) | 602 | `result-track:00886004cd0e118f9ff15752f9ff4085eb73e1102f30a3e59116d5890b7295a0` |
| 106 | `theorem` | [think_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/think-bind.md) | 616 | `result-track:2e389b5a1be43ddec6fda1b4ec8d845f89d1b49709a4113aab561ca93ceab086` |
| 107 | `theorem` | [bind_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/bind-pure.md) | 620 | `result-track:bf5291d648a3d0343ee7389bf563c231fae0e6e6f8437ad31b4880f4acefbec3` |
| 108 | `theorem` | [bind_pure'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/bind-pure-source-edition-2.md) | 632 | `result-track:f6790941c0a7270ef49bd6b54b2db046690cb16452e621662636f227ed2529de` |
| 109 | `theorem` | [bind_assoc](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/bind-assoc.md) | 636 | `result-track:18018474fbee8fc2c29bfeb2d06d0eca0e548c7486b1d14d0f85ec4b99113fcb` |
| 110 | `theorem` | [results_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/results-bind.md) | 652 | `result-track:9bff711ee98689859393fada5ecc3b2d4745c47fb2b20ce8101eccf53755a119` |
| 111 | `theorem` | [mem_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/mem-bind.md) | 667 | `result-track:878424671f658f3f36d484ddcfd47ae0e7f6e8bcd1e5b4ee57eda948f56b280e` |
| 112 | `instance` | [terminates_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/terminates-bind.md) | 673 | `declaration-track:b5c6af144d378a301c1bcb6c2f38122a060ecec774403ca81510c0a5dc03f65a` |
| 113 | `theorem` | [get_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/get-bind.md) | 678 | `result-track:213efbef67ca411c1c514a497afe2c3afc97f8ee7234b46aaf656b4da63b406e` |
| 114 | `theorem` | [length_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/length-bind.md) | 683 | `result-track:af713d55a6c1882dcf9740e6f63eaf0b79204515afaf93a6a4695723d41a0d52` |
| 115 | `theorem` | [of_results_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/of-results-bind.md) | 688 | `result-track:e0b6d683abe9342955a48fed07ede64bd82b72eea7cd7bf5af814c0b882b18d9` |
| 116 | `theorem` | [exists_of_mem_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/exists-of-mem-bind.md) | 703 | `result-track:c38f7584f5c8395dcfbd5670201ea1ff6fe5b2101b9df0f28958b99712fac407` |
| 117 | `theorem` | [bind_promises](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/bind-promises.md) | 709 | `result-track:25dbaecbcb30a39add5970b5e3b0691dd7ddc2abd929b922b3eea64200aabddb` |
| 118 | `instance` | [monad](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/monad.md) | 714 | `declaration-track:2286f2a7027ec47c4c748c766ee4d6bf2477391dba73b4392f8c679e3afdb5be` |
| 119 | `instance` | [(anonymous)](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/instance-source-edition-2.md) | 719 | `declaration-track:2fab55a18be02d49d6ab3b4fac81bce7116558866e50023c079503524503376b` |
| 120 | `theorem` | [has_map_eq_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/has-map-eq-map.md) | 725 | `result-track:4d3f7256709ffc9e196eeebe190a75b4226137ba2885c0243a2203312904ffc8` |
| 121 | `theorem` | [pure_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/pure-def.md) | 729 | `result-track:7549a576b5dd4b31fbee0b22d7efa51f96f5dc49ab2227f787ce1a67589f53ae` |
| 122 | `theorem` | [map_pure'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/map-pure-source-edition-2.md) | 733 | `result-track:8be3e4ffc30b1624e1cd75775473c56ba7a96c7e1a32c99c13432bf9e80cf356` |
| 123 | `theorem` | [map_think'](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/map-think.md) | 737 | `result-track:3a3bd38cc91b22367d340a39c247e992b2df0d8fdc0d068401979176070919d1` |
| 124 | `theorem` | [mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/mem-map.md) | 740 | `result-track:6ba1dc098755d8bfc65f31b706bf37669447047a6fa1ef6a54a1b742b013a545` |
| 125 | `theorem` | [exists_of_mem_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/exists-of-mem-map.md) | 743 | `result-track:cdcff58cba49bdc8bedfec9651237badcc0c135b49b1b5b2ccf1d7082cca5e4d` |
| 126 | `instance` | [terminates_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/terminates-map.md) | 749 | `declaration-track:8b10e3844f0dd544aff632a905045b954a648d4eea7d8ff387fe43bd7b270594` |
| 127 | `theorem` | [terminates_map_iff](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/terminates-map-iff.md) | 752 | `result-track:e56220b4c8632a2d8e1dc5a63e08a5c711860922cf788c784957beedea734741` |
| 128 | `def` | [orElse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/orelse.md) | 761 | `declaration-track:36708bb5ffcb97ef2a129ce928df929cc8c04ec7783c866d63965ff7eb4fb833` |
| 129 | `instance` | [instAlternativeComputation](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/instalternativecomputation.md) | 772 | `declaration-track:27396b68c52ee056d44f43bf7b529205a7abae1dafa3a322d65c928232e6af5e` |
| 130 | `theorem` | [ret_orElse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/ret-orelse.md) | 778 | `result-track:9576df9ec21fddf6f0526d2f0c864508e5e7bfbf9014e394aaa7004b414092cd` |
| 131 | `theorem` | [orElse_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/orelse-pure.md) | 784 | `result-track:983a8367d0a94620d605ca08504808222f8c49fa71da38eae8495e9d7c43f721` |
| 132 | `theorem` | [orElse_think](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/orelse-think.md) | 790 | `result-track:3f2089f5d8a03a94e1434d7703050a0f50db0c9e3fe4c3b20294ef84b06e868b` |
| 133 | `theorem` | [empty_orElse](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/empty-orelse.md) | 796 | `result-track:a9c65019edafe9492a611bfb8f32c9a7a21c40297b51fc2db52987b74c42c096` |
| 134 | `theorem` | [orElse_empty](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/orelse-empty.md) | 803 | `result-track:60647a181c7191576fcd540e8e87cae039da73f51eb848109316a96eed4d9ce3` |
| 135 | `def` | [Equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/equiv.md) | 811 | `declaration-track:e26ff842a88298476f6151985dac29cc848cec4d2de0769003bfdb46064f55e4` |
| 136 | `theorem` | [Equiv.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/equiv-refl.md) | 818 | `result-track:d19dd0201a11e8c2e460442a66eabc35e5af77ac99c0b1f18c1f19942102f764` |
| 137 | `theorem` | [Equiv.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/equiv-symm.md) | 821 | `result-track:6f2e469b8dde8ab5aaa0a540ea0f7943bba9b9b5da455719f599fd1de8996fdb` |
| 138 | `theorem` | [Equiv.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/equiv-trans.md) | 824 | `result-track:e99a45d1a1f6e0b98a4558ba5fa81837f10705bf0192f015565c7223bdb5b7c4` |
| 139 | `theorem` | [Equiv.equivalence](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/equiv-equivalence.md) | 827 | `result-track:a55405a67971a59c100379dd49cdefbbd34b555832b45748e0acd94c2f7e477a` |
| 140 | `theorem` | [equiv_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/equiv-of-mem.md) | 830 | `result-track:4b0917c874dc1298eed74bf8007d66cf757889133c8b2b2e4b9600dd2d95ba9a` |
| 141 | `theorem` | [terminates_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/terminates-congr.md) | 833 | `result-track:ee68af5cea54df3a94d7d44ce568e925964d4a5a184b693e6d0a16b0dcc205c3` |
| 142 | `theorem` | [promises_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/promises-congr.md) | 836 | `result-track:0438214933638cb07cd05b6550a56768391d86b01b83ca22ed75b3a33bbb139b` |
| 143 | `theorem` | [get_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/get-equiv.md) | 839 | `result-track:5eaca0b6378ae210d0af9fcff6e646fc9aef3ef4bea106827e12a3b81a87ba00` |
| 144 | `theorem` | [think_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/think-equiv.md) | 843 | `result-track:fbc9d955a5471854d43ab6bec3630a7eb8bc4d75ac0aac6137dfb3666e8115f1` |
| 145 | `theorem` | [thinkN_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/thinkn-equiv.md) | 845 | `result-track:f565c0ae7a11ceb17acace1671c70b21b265e6872a0a59e49a416550e6454cde` |
| 146 | `theorem` | [bind_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/bind-congr.md) | 847 | `result-track:619ddc047658563d5612a8179d620aa639e8298652477d38627220d78004f098` |
| 147 | `theorem` | [equiv_pure_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/equiv-pure-of-mem.md) | 856 | `result-track:0a669a526868f52fa3671a734e9ae071eabe8e1fcbcdc8bee02c7f87444efdfb` |
| 148 | `def` | [LiftRel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel.md) | 863 | `declaration-track:cfde03a2c2695a1be13a397a7ede30a3adbe00003bd38cbb1571ae1e7e2f763a` |
| 149 | `theorem` | [LiftRel.swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-swap.md) | 866 | `result-track:d42ac38dc0a16361c94c9d5402def223d6e62ae31cd77207eabbb1dccf37543a` |
| 150 | `theorem` | [lift_eq_iff_equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/lift-eq-iff-equiv.md) | 870 | `result-track:88c169c1a8780f5e9ba71183cdf807f1e00c5634e888c7071578468e177271fc` |
| 151 | `theorem` | [LiftRel.refl](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-refl.md) | 876 | `result-track:086bec0e92ef77bb7cbf1c9e9050a201554a389ee91504682b1bb24d4382e5d1` |
| 152 | `theorem` | [LiftRel.symm](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-symm.md) | 879 | `result-track:23e1c5217db24f45e434195a984f6de720464b15d438ad9b213266cb8836c836` |
| 153 | `theorem` | [LiftRel.trans](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-trans.md) | 888 | `result-track:32d6bf8e2a8900bca15f2705838f9fb1be06d998095536974d70c9b0d29e47b2` |
| 154 | `theorem` | [LiftRel.equiv](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-equiv.md) | 899 | `result-track:2da088cfb0d548973aabf37df3060fa9080d9dd5348b53efd3aa2782599ebfc5` |
| 155 | `theorem` | [LiftRel.imp](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-imp.md) | 902 | `result-track:04d52fc500a428919c6b5dcd09aaa493c80ad46124985f27f7c703e929de0d1d` |
| 156 | `theorem` | [terminates_of_liftRel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/terminates-of-liftrel.md) | 912 | `result-track:3af77fd60f47bdc2f81c18d791ba25a542ffb8850e933beb84025fef490c2b73` |
| 157 | `theorem` | [rel_of_liftRel](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/rel-of-liftrel.md) | 922 | `result-track:9fe38f5b3cedef427ef12bb0268d567ff1e03148189037c7b6fa3ef9678d5b1e` |
| 158 | `theorem` | [liftRel_of_mem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-of-mem.md) | 928 | `result-track:f4c18bf56a9341b30f5777b109e22d25483dd349586acc03d15a5ec9a4fdc236` |
| 159 | `theorem` | [exists_of_liftRel_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/exists-of-liftrel-left.md) | 933 | `result-track:5b7de833187b96ce50f8189c5c2134032a7ba5279c48549958947bb5aa7c34e4` |
| 160 | `theorem` | [exists_of_liftRel_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/exists-of-liftrel-right.md) | 937 | `result-track:17941a7c99ef5b23dfc68fcd3fe2c4f690e250e5421a62e7917bbbe833297180` |
| 161 | `theorem` | [liftRel_def](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-def.md) | 941 | `result-track:4f8f3e0b15b5c6f2aa4be91e32f26af4845a1146912899351f5dc6ed800a0d10` |
| 162 | `theorem` | [liftRel_bind](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-bind.md) | 955 | `result-track:e8bb0c7dc2cc0716ecca5fb292e20046521c66cb59bb01e59d70e048868fceac` |
| 163 | `theorem` | [liftRel_pure_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-pure-left.md) | 973 | `result-track:55be59b0ecd37adeef3749dee8de8a100832d833530d2690c6e9749e32737df7` |
| 164 | `theorem` | [liftRel_pure_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-pure-right.md) | 980 | `result-track:7e062971c59ae116f338d9f59b9a8773ada2562c5fc4eeacd04ca60f84446252` |
| 165 | `theorem` | [liftRel_pure](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-pure.md) | 983 | `result-track:e5ef8e4909975ab2a4a797f37e900665d9673bdba771acc666adef89883f5c7b` |
| 166 | `theorem` | [liftRel_think_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-think-left.md) | 988 | `result-track:1e8c065bf344940fc02e49a9242a960d1b1019383144d30e896a0c9312239528` |
| 167 | `theorem` | [liftRel_think_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-think-right.md) | 995 | `result-track:41944f0337f106598598feb0af6dd416674f21c25a7a35cb3e1f8b5c8a30cfd0` |
| 168 | `theorem` | [liftRel_mem_cases](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-mem-cases.md) | 999 | `result-track:efa9d886a355a69c5d615eef38b3f9b7e7b147a33b46b839c24e1765cd9a2380` |
| 169 | `theorem` | [liftRel_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-congr.md) | 1003 | `result-track:a9124b7be5c703a88ac4c0d7e08652ec78c5247d7dea6645045e02c6a17fc2ea` |
| 170 | `theorem` | [liftRel_map](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-map.md) | 1009 | `result-track:1a45f7267f7d3ac144e5651d72e7ff855f3942bafd2beaf3f593039152c41d99` |
| 171 | `theorem` | [map_congr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/map-congr.md) | 1014 | `result-track:0b9a9d52a04fd92c59085125846c9bbcf1033c6f33a9b35a8a2d5cb509554387` |
| 172 | `def` | [LiftRelAux](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrelaux.md) | 1020 | `declaration-track:397a77e5cdadada36bd068bc79294d3500cb5240d63f2a05db0ace1587574f19` |
| 173 | `lemma` | [liftRelAux_inl_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrelaux-inl-inl.md) | 1029 | `result-track:ecdc421626d5e2dde9c6610026c2ac8f510164dd2d10383fc7e0cc686ced831a` |
| 174 | `lemma` | [liftRelAux_inl_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrelaux-inl-inr.md) | 1031 | `result-track:53878a34364aef4907c525d0dd0a57d38b8ac81977a7ca29918fe181b45a4f5e` |
| 175 | `lemma` | [liftRelAux_inr_inl](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrelaux-inr-inl.md) | 1034 | `result-track:7309fa944e5c20138db0ca3fbc8a7f18152443d017d4795cbee5dd123490f108` |
| 176 | `lemma` | [liftRelAux_inr_inr](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrelaux-inr-inr.md) | 1037 | `result-track:5610e8d8976728e389c4f426ff6493d4cddf0fe52398f8dbc7dc0a774a4dae7e` |
| 177 | `theorem` | [LiftRelAux.ret_left](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrelaux-ret-left.md) | 1042 | `result-track:05ad60d64332d6d6cd6bcdf52f01c3ce44631599fe607d32c0e093e3362cb604` |
| 178 | `theorem` | [LiftRelAux.swap](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrelaux-swap.md) | 1052 | `result-track:f4924b7cc5533ced9280a7168e36416f343f9def037bb20123686e6e991f69cd` |
| 179 | `theorem` | [LiftRelAux.ret_right](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrelaux-ret-right.md) | 1057 | `result-track:42e949150ef1109db484b67a4c073208cf0955a14d47e8646ed0139db093aefd` |
| 180 | `theorem` | [LiftRelRec.lem](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrelrec-lem.md) | 1061 | `result-track:cf68c654533f6422d167f5d6dbe1e9639937596e8272bb3d647cc45dfddaf941` |
| 181 | `theorem` | [liftRel_rec](../../../../../../ComputerScience/TheoryOfData/DataStructures/ComputationMemPureIff.lean/declarations/liftrel-rec.md) | 1075 | `result-track:6bf8777ad1d9fa3263799c1b9e839b6f2313a01448beab28a72c0f2913bfae0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b67a9b9e8cdc8d9ef061ae3824d73c34d94e505578bbaaab6bd6e0aede26d7c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf2997fcf0b88767d4dee12a557a4752608c22e4c3206319892848e82ff5ed36e.lean","GRWTSK/_verification/specifications/FoundationsLogicAndTypeTheory/MathematicalLogic/Computation/Variantf2997fcf0b88767d4dee12a557a4752608c22e4c3206319892848e82ff5ed36e.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
