# Verification target: GRWTSK.Topology.GeneralTopology.Successor.Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e9c17a5b0230e241e6b1908b8f97434365ffd45",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e9c17a5b0230e241e6b1908b8f97434365ffd45`.

Source path: `GRWTSK/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Nobeling.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [C0](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/c0--c35ebfefa078b2607a8d078a.md) | 99 | `declaration-track:c35ebfefa078b2607a8d078a66d4756f5fb6040f3389461cecae9d6f7cd9fd0b` |
| 2 | `def` | [C1](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/c1--d2ac9f25864091edde3900e1.md) | 102 | `declaration-track:d2ac9f25864091edde3900e151298c826d0d875ab79a05cf83482a10797b9c55` |
| 3 | `theorem` | [isClosed_C0](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/isclosed-c0--dce38d1425bfd1c647a5efa9.md) | 105 | `result-track:dce38d1425bfd1c647a5efa9dab3950186476fdd4f646b55ba12e21fd5346244` |
| 4 | `theorem` | [isClosed_C1](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/isclosed-c1--3ce9abb83192ef5444efe902.md) | 111 | `result-track:3ce9abb83192ef5444efe9023ad73652542eb077abd80fe68b4319f40ad05d60` |
| 5 | `theorem` | [contained_C1](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/contained-c1--8d80f7783666e04041377e84.md) | 116 | `result-track:8d80f7783666e04041377e843c14b1f80d38da2631bf32ab88072df5dfc1b3c3` |
| 6 | `theorem` | [union_C0C1_eq](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/union-c0c1-eq--004f313c283441059b000ecc.md) | 119 | `result-track:004f313c283441059b000ecc03da83b5c11e11e3658e00c26601dd6479e61bb5` |
| 7 | `def` | [C'](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/c--7c580dbf00c3eea3a3e0427d.md) | 128 | `declaration-track:7c580dbf00c3eea3a3e0427d16b5c035752021788121a06e8044c9da3e66ee3f` |
| 8 | `theorem` | [isClosed_C'](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/isclosed-c--ef82b43e07e3be34a396c999.md) | 131 | `result-track:ef82b43e07e3be34a396c99975fe9ead09239a95e1ef3c5d42d4e78674a01623` |
| 9 | `theorem` | [contained_C'](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/contained-c--a1cd72abbba83ed103355e7f.md) | 134 | `result-track:a1cd72abbba83ed103355e7fd3a50acd948a56d84c6ab49c66317268cec6782a` |
| 10 | `def` | [SwapTrue](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/swaptrue--d7e351508c3e48230b150ec8.md) | 140 | `declaration-track:d7e351508c3e48230b150ec8bc94e04badef93708ea04c1d0bf1eea98d45701c` |
| 11 | `theorem` | [continuous_swapTrue](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/continuous-swaptrue--32805f750837a88374ee2259.md) | 143 | `result-track:32805f750837a88374ee22595a2266e915b7a0cf269ccbdf9c359f396717714f` |
| 12 | `theorem` | [swapTrue_mem_C1](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/swaptrue-mem-c1--ef92aef9feaf3ae4c0ba26e3.md) | 154 | `result-track:ef92aef9feaf3ae4c0ba26e33bf1ee0c3d2be6cd6d6822167e764564fe27fe89` |
| 13 | `def` | [CC'₀](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/cc--42b5a04dfa543cbd50bdd573.md) | 170 | `declaration-track:42b5a04dfa543cbd50bdd5733757cf801d25d11da32b05235aa78871cc448d84` |
| 14 | `def` | [CC'₁](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/cc--a9f48bfab3f74e69dee8f4a6.md) | 174 | `declaration-track:a9f48bfab3f74e69dee8f4a6a08d81c5dc6c8f82b8ba9bfacda937703c23c819` |
| 15 | `theorem` | [continuous_CC'₀](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/continuous-cc--f6f9d59fdd6299b34429c6c8.md) | 177 | `result-track:f6f9d59fdd6299b34429c6c803e253239d11e5bf77fb83e6d9bc6783389edc92` |
| 16 | `theorem` | [continuous_CC'₁](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/continuous-cc--6cd4e0eacb9b53abc89a9215.md) | 179 | `result-track:6cd4e0eacb9b53abc89a9215e52a2c19394daff4089c2e4db004572b9b4cac66` |
| 17 | `def` | [Linear_CC'₀](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/linear-cc--024a87b8af56cf5cbd07b820.md) | 184 | `declaration-track:024a87b8af56cf5cbd07b8209c980476ff65234939e13559cd547361363659eb` |
| 18 | `def` | [Linear_CC'₁](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/linear-cc--9266d3c3475b37040ca57a3b.md) | 189 | `declaration-track:9266d3c3475b37040ca57a3b2009a5ba1cc9e86957a081b58f72a6acd883fdbd` |
| 19 | `def` | [Linear_CC'](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/linear-cc--fc92ad6fb451eea1928594e6.md) | 194 | `declaration-track:fc92ad6fb451eea1928594e69dfcab13d60fda251b2308a4e102bdd300f3cec0` |
| 20 | `theorem` | [CC_comp_zero](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/cc-comp-zero--3f934f550ee723c136b6a3f1.md) | 197 | `result-track:3f934f550ee723c136b6a3f1523b314e07e4449973c2d06e1639124724e3b981` |
| 21 | `theorem` | [C0_projOrd](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/c0-projord--d570fb6d5a668d5d5595c834.md) | 211 | `result-track:d570fb6d5a668d5d5595c834c8d29c883ac17496471c753003b9bf16ed0d7aab` |
| 22 | `theorem` | [C1_projOrd](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/c1-projord--0881984badbfc56254b76dbe.md) | 225 | `result-track:0881984badbfc56254b76dbeb6faf0ff5f73226f8843b8b83b7a0cd389ca6d8b` |
| 23 | `theorem` | [CC_exact](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/cc-exact--797bfe5c7a15ba0fcd68a2b0.md) | 241 | `result-track:797bfe5c7a15ba0fcd68a2b0168f877476a95c3c5ea128fee7e1cc6be7127033` |
| 24 | `theorem` | [succ_mono](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/succ-mono--cee422099d4623c30155b2d1.md) | 277 | `result-track:cee422099d4623c30155b2d13e607bf45fe22b2031941eb49239138d0cd22512` |
| 25 | `theorem` | [succ_exact](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/succ-exact--4ea5f24e63c6664365f04cfb.md) | 282 | `result-track:4ea5f24e63c6664365f04cfb095617f4169e56a07babe9d49c9ff48419876468` |
| 26 | `def` | [MaxProducts](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/maxproducts--63fbf196705b403ffb634646.md) | 297 | `declaration-track:63fbf196705b403ffb634646ebdb89f264c72b24200dca5d6644f94c9c7cd9af` |
| 27 | `theorem` | [union_succ](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/union-succ--a6e253a5ba0e6613ea3eec1a.md) | 300 | `result-track:a6e253a5ba0e6613ea3eec1ae6f6333b1d45e4c20e83be18b802eb0c08220bfa` |
| 28 | `def` | [sum_to](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/sum-to--1ef6334a2add74afe5a9f115.md) | 326 | `declaration-track:1ef6334a2add74afe5a9f1159ba6e4b7883574a1bac9377ac14267e93401974c` |
| 29 | `theorem` | [injective_sum_to](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/injective-sum-to--d52152c48eeab320beeda989.md) | 329 | `result-track:d52152c48eeab320beeda989dd7bb36cdc36a5741b2c9664633a187b0d4c7f1c` |
| 30 | `theorem` | [sum_to_range](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/sum-to-range--25836963195b0af5e6239907.md) | 336 | `result-track:25836963195b0af5e623990774bd1956c4a6d8140ea7944a26bd9313d0c4c747` |
| 31 | `def` | [sum_equiv](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/sum-equiv--2e172f8d6dfeed88e9df2268.md) | 345 | `declaration-track:2e172f8d6dfeed88e9df2268126348306343a0084b6c069a60db0336a62e9d48` |
| 32 | `theorem` | [sum_equiv_comp_eval_eq_elim](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/sum-equiv-comp-eval-eq-elim--a3553dc0a89a7e709e3246d6.md) | 350 | `result-track:a3553dc0a89a7e709e3246d6dd83d8855bf10a774b637a4f1206f58a02e4722a` |
| 33 | `def` | [SumEval](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/sumeval--2c8d61dbc0b74d3cae5b6ca0.md) | 379 | `declaration-track:2c8d61dbc0b74d3cae5b6ca0b261d15a6fd5a2ca3e324f90c26260d31a7f062d` |
| 34 | `theorem` | [linearIndependent_iff_sum](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/linearindependent-iff-sum--77e992c872bba523cbf954bc.md) | 384 | `result-track:77e992c872bba523cbf954bc499784f9b828427fea8fbb7066e0ca3e01a977be` |
| 35 | `theorem` | [span_sum](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/span-sum--70abd150fc975b4abf9b3d58.md) | 391 | `result-track:70abd150fc975b4abf9b3d589b5e9382bb15d5f6d8c985d9b6709a004f7de274` |
| 36 | `theorem` | [square_commutes](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/square-commutes--0f9c7202b3ebc8c63ac59442.md) | 398 | `result-track:0f9c7202b3ebc8c63ac59442ae4b75537734e4366d0ebc762ad1f8db7072bd6e` |
| 37 | `theorem` | [swapTrue_eq_true](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/swaptrue-eq-true--1180c139b35b6179848631d1.md) | 407 | `result-track:1180c139b35b6179848631d1302a3263f3eeb9b1e5d23977b7b7dfbfdbd86c44` |
| 38 | `theorem` | [mem_C'_eq_false](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/mem-c-eq-false--9f57d651db1d8f8a9cff271b.md) | 410 | `result-track:9f57d651db1d8f8a9cff271b9ae45edeca27a3b0ee9b5defe13cc36c70a9e0b2` |
| 39 | `def` | [Products.Tail](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/products-tail--3766503220e9930f945adf50.md) | 415 | `declaration-track:3766503220e9930f945adf50d98a0bdbd1927d006d27b0495af6e1227600edb0` |
| 40 | `theorem` | [Products.max_eq_o_cons_tail](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/products-max-eq-o-cons-tail--5712642544d1fa966460a8d1.md) | 418 | `result-track:5712642544d1fa966460a8d14d01b8845ca4f51dc1dc3472b955839509225e75` |
| 41 | `theorem` | [Products.max_eq_o_cons_tail'](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/products-max-eq-o-cons-tail--46f7b5d33a22716a6dc29269.md) | 423 | `result-track:46f7b5d33a22716a6dc292698c8c4f2e18c517e986b2afd2ac52c2eb7fe1c190` |
| 42 | `theorem` | [GoodProducts.head!_eq_o_of_maxProducts](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/goodproducts-head-eq-o-of-maxproducts--b2cfa9e799394b32025555a6.md) | 429 | `result-track:b2cfa9e799394b32025555a657c9a47bb82386cce527c06945595ea556b1ca56` |
| 43 | `theorem` | [GoodProducts.max_eq_o_cons_tail](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/goodproducts-max-eq-o-cons-tail--5683169f72c4fb2d0b94c459.md) | 443 | `result-track:5683169f72c4fb2d0b94c4593dd76d51f4301884fa740d90f8fe37358da20a13` |
| 44 | `theorem` | [Products.evalCons](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/products-evalcons--098eb0559c8dc47ec82b7911.md) | 449 | `result-track:098eb0559c8dc47ec82b79112d71547bcb6e9d993ac6d01a5a144c98f9dc39ed` |
| 45 | `theorem` | [Products.max_eq_eval](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/products-max-eq-eval--6a87643c264a75150b1c3b0f.md) | 454 | `result-track:6a87643c264a75150b1c3b0f6ddbf17e8f15fe2fdf4884d92a5427454d850492` |
| 46 | `theorem` | [max_eq_eval](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/max-eq-eval--8d65f306e4bddebf8e387e14.md) | 485 | `result-track:8d65f306e4bddebf8e387e14ff50b1ebb280401389e787b4de51f897da3658d4` |
| 47 | `theorem` | [max_eq_eval_unapply](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/max-eq-eval-unapply--24344cf32d543b57152aac94.md) | 491 | `result-track:24344cf32d543b57152aac94f3dad31bdae30d0ca9a8db76946dab73561974cc` |
| 48 | `theorem` | [chain'_cons_of_lt](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/chain-cons-of-lt--9d9e17148030a2279afef0f6.md) | 498 | `result-track:9d9e17148030a2279afef0f6352ffcb573de694ff090ad891c6cba6d93e5b1b0` |
| 49 | `theorem` | [good_lt_maxProducts](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/good-lt-maxproducts--f17f750d34a611771d8bed21.md) | 515 | `result-track:f17f750d34a611771d8bed215637e293ba498314a1edb171ed7174a436d8d77a` |
| 50 | `theorem` | [maxTail_isGood](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/maxtail-isgood--b457445377e62ca1086e8ee3.md) | 532 | `result-track:b457445377e62ca1086e8ee3251dfe27a5f153beff58036e841e8c9669ea4181` |
| 51 | `def` | [MaxToGood](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/maxtogood--273ec86ac0ee3c1a98877a13.md) | 602 | `declaration-track:273ec86ac0ee3c1a98877a13f0708d634e212dca95a7390cb8ff52535f7caacf` |
| 52 | `theorem` | [maxToGood_injective](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/maxtogood-injective--689a5964f59a3d205208e0af.md) | 607 | `result-track:689a5964f59a3d205208e0afea41998e53c240669b10824fee2bd2d081280675` |
| 53 | `theorem` | [linearIndependent_comp_of_eval](../../../../../mathematics/Topology/GeneralTopology/Successor/Variant3affa42d86a86fc16aacdf3e2205015af87dcf0d8f5289b5c47b6b3eb5759450.lean/declarations/linearindependent-comp-of-eval--580ea0b2a592b44354e7fe58.md) | 617 | `result-track:580ea0b2a592b44354e7fe584721add6166c0c8f966bb3bef06a1dd1f2cdc722` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
