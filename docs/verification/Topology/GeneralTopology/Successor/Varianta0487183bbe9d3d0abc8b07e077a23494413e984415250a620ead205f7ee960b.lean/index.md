# Verification target: GRWTSK.Topology.GeneralTopology.Successor.Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82708c8da58af4765325ed46578dc2389e289121",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82708c8da58af4765325ed46578dc2389e289121`.

Source path: `GRWTSK/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.ModuleCat` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.Profinite.Nobeling.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [C0](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/c0--1977142c5d89ede1b08c20ed.md) | 91 | `declaration-track:1977142c5d89ede1b08c20ed6f5541ff518347c42819d8921edc3db3e9811743` |
| 2 | `def` | [C1](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/c1--9b6cfbe0d400a0caab4c8cab.md) | 94 | `declaration-track:9b6cfbe0d400a0caab4c8cab910ba15f662fc3ea1e8dc195128dcae0846b8380` |
| 3 | `theorem` | [isClosed_C0](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/isclosed-c0--cc7fd0a57ff9b206338662e5.md) | 97 | `result-track:cc7fd0a57ff9b206338662e57cdf7c48ef80dc3517028a7753d3bd637cb0dba9` |
| 4 | `theorem` | [isClosed_C1](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/isclosed-c1--44bbf13ed6b26b165532679f.md) | 103 | `result-track:44bbf13ed6b26b165532679f5faf66ae6212bb5aaf49273f0613f2ea88ee8bcb` |
| 5 | `theorem` | [contained_C1](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/contained-c1--e5b8cfcf23ea2b5f2885b4ac.md) | 108 | `result-track:e5b8cfcf23ea2b5f2885b4ac8ec878f293104f99970c0eb074f0d765932006fa` |
| 6 | `theorem` | [union_C0C1_eq](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/union-c0c1-eq--db4ae5a0f3701e7f4a086e98.md) | 111 | `result-track:db4ae5a0f3701e7f4a086e98de478939844a5bd830a4f52bdaf8a861237079ae` |
| 7 | `def` | [C'](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/c--73cd3cd5adad80062cab2895.md) | 120 | `declaration-track:73cd3cd5adad80062cab28952800ade96e413ac538a6a51bd982d47053c870cf` |
| 8 | `theorem` | [isClosed_C'](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/isclosed-c--056e24ea287bcca813f71e9e.md) | 123 | `result-track:056e24ea287bcca813f71e9eed77ec57c9cf24049758f7a066b8ad59892c2aa3` |
| 9 | `theorem` | [contained_C'](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/contained-c--e20d8e7c8d5bfceff7a9fe5d.md) | 126 | `result-track:e20d8e7c8d5bfceff7a9fe5de48d561e7dcf1fbe5c87f02ae7a5390d7b8c0ca0` |
| 10 | `def` | [SwapTrue](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/swaptrue--c73f259365d8bf4244035ccb.md) | 132 | `declaration-track:c73f259365d8bf4244035ccb7bf595174b10edf155220a8f3f40633279e7f1ac` |
| 11 | `theorem` | [continuous_swapTrue](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/continuous-swaptrue--7902f39c1ba0ceed01eb2e36.md) | 135 | `result-track:7902f39c1ba0ceed01eb2e36da0521b39925819a5a019577f0caaa1bc8ddb9b5` |
| 12 | `theorem` | [swapTrue_mem_C1](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/swaptrue-mem-c1--b99e2d2c7b49ca650e896866.md) | 146 | `result-track:b99e2d2c7b49ca650e896866870b69393322f807b466595e61574c45a5ef04f5` |
| 13 | `def` | [CC'₀](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/cc--40afd3e452551426fc1fff86.md) | 162 | `declaration-track:40afd3e452551426fc1fff86adc12f8b17a63a8b4666cf5c741a17a73eb257bb` |
| 14 | `def` | [CC'₁](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/cc--0980bd49c1a8f2ebc2d09096.md) | 166 | `declaration-track:0980bd49c1a8f2ebc2d09096e40681d3510527862fbbcea75f745d15529cb372` |
| 15 | `theorem` | [continuous_CC'₀](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/continuous-cc--79d0f64dcbacd1bde194cfb7.md) | 169 | `result-track:79d0f64dcbacd1bde194cfb7be0ed40df7eb5ed1c1da38ccb198f8dbe415f612` |
| 16 | `theorem` | [continuous_CC'₁](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/continuous-cc--36e8adff8917607837106fa5.md) | 171 | `result-track:36e8adff8917607837106fa517f992feb80570cdf8fff11c3457ec17f9220bf1` |
| 17 | `def` | [Linear_CC'₀](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/linear-cc--2a80bce0ffce12d187cea1ef.md) | 176 | `declaration-track:2a80bce0ffce12d187cea1ef7494ba06b21bdebd853d3bfb2c5f8892210e09f8` |
| 18 | `def` | [Linear_CC'₁](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/linear-cc--1a78b89b8d660530dc82fb71.md) | 181 | `declaration-track:1a78b89b8d660530dc82fb718b5943709f94a15e91587be796e8b45e5f42df9a` |
| 19 | `def` | [Linear_CC'](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/linear-cc--b2611a111820891615243bea.md) | 186 | `declaration-track:b2611a111820891615243beae4881f37aec38cef73b362d8f647f61dd329be95` |
| 20 | `theorem` | [CC_comp_zero](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/cc-comp-zero--d5cf241f66aa252c474ffe54.md) | 189 | `result-track:d5cf241f66aa252c474ffe546be15089996f9ae1ce19ea69358675c81fb49b60` |
| 21 | `theorem` | [C0_projOrd](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/c0-projord--429cc1e7bd3bfa628d51a8dd.md) | 203 | `result-track:429cc1e7bd3bfa628d51a8dd36b67bb5c6c00d7ffbd0850097b906421ff1d4af` |
| 22 | `theorem` | [C1_projOrd](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/c1-projord--d7ac63f7ba235c153cdaea4a.md) | 217 | `result-track:d7ac63f7ba235c153cdaea4a5740721c0c331a02c4647381afc9156bc5c948c8` |
| 23 | `theorem` | [CC_exact](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/cc-exact--795a309f9edd18c64bb5187e.md) | 233 | `result-track:795a309f9edd18c64bb5187ee33d56f8fedf84e0ee85db726ceff22881876e80` |
| 24 | `theorem` | [succ_mono](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/succ-mono--44659d9bddede0e3401b23ef.md) | 269 | `result-track:44659d9bddede0e3401b23ef73bc452dcfb4da3193df4b4eeb8a9344a5b401e5` |
| 25 | `theorem` | [succ_exact](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/succ-exact--0b9fa5025eeb8c4ee505a06d.md) | 274 | `result-track:0b9fa5025eeb8c4ee505a06d17df424787ccb03175c5cc128804ca1bda988804` |
| 26 | `def` | [MaxProducts](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/maxproducts--f1eafc0193e2b6d5d7a1987b.md) | 289 | `declaration-track:f1eafc0193e2b6d5d7a1987bc994c02a6ba270a78ac24c55f6e7c832b3a9e5f0` |
| 27 | `theorem` | [union_succ](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/union-succ--061e0a470eb8ca90f4c67303.md) | 292 | `result-track:061e0a470eb8ca90f4c67303e628fec5cb97eba9c1e95e88e829927a39e3ff8d` |
| 28 | `def` | [sum_to](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/sum-to--bd85e9a64b13a50a19cf74dd.md) | 318 | `declaration-track:bd85e9a64b13a50a19cf74dd09a3cbf2772df744ecd840a064669856a45259c2` |
| 29 | `theorem` | [injective_sum_to](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/injective-sum-to--51830c4999f423deae8586e5.md) | 321 | `result-track:51830c4999f423deae8586e5b07e663bfcbc859bd36a08a9e0c52321b4b4136c` |
| 30 | `theorem` | [sum_to_range](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/sum-to-range--b2d7cb9e2d9b2f7b52bf2e0d.md) | 328 | `result-track:b2d7cb9e2d9b2f7b52bf2e0d6e44f7e4d84d6aa5a98160cf0dbb0f9d535d7470` |
| 31 | `def` | [sum_equiv](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/sum-equiv--7051175a01df4a716539cbfc.md) | 337 | `declaration-track:7051175a01df4a716539cbfcceaa43b67fdd9b4e52be97468714f27109842646` |
| 32 | `theorem` | [sum_equiv_comp_eval_eq_elim](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/sum-equiv-comp-eval-eq-elim--a3ed65d201c3c57c4e44d865.md) | 342 | `result-track:a3ed65d201c3c57c4e44d865ceffeb960a1e5d7dda0abc0f21da5510c5fe2676` |
| 33 | `def` | [SumEval](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/sumeval--933475b0eb34b332c2cb7118.md) | 371 | `declaration-track:933475b0eb34b332c2cb7118cf53f46f9b816c185cfb2a592f2877178bb4ff05` |
| 34 | `theorem` | [linearIndependent_iff_sum](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/linearindependent-iff-sum--f2334be7275e94b78a2ce570.md) | 376 | `result-track:f2334be7275e94b78a2ce570b45c76b3aa7a932cc75d42a46fb9fe75604ab37d` |
| 35 | `theorem` | [span_sum](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/span-sum--555affd4fb8273413cc7a582.md) | 383 | `result-track:555affd4fb8273413cc7a582cbed0046dc125f53cf40c925fd1363bd2fde9d7b` |
| 36 | `theorem` | [square_commutes](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/square-commutes--fba2eeb07d7df7dc022909fc.md) | 390 | `result-track:fba2eeb07d7df7dc022909fc6a31559e49f1a4fa00732c2364345a9e00added1` |
| 37 | `theorem` | [swapTrue_eq_true](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/swaptrue-eq-true--3d03313ebbcd757c95dd71c9.md) | 399 | `result-track:3d03313ebbcd757c95dd71c99ef74513187a9c8bbfed86549bebfbd3a6790941` |
| 38 | `theorem` | [mem_C'_eq_false](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/mem-c-eq-false--9eb151f7cc4bc71dc2145aa1.md) | 402 | `result-track:9eb151f7cc4bc71dc2145aa187d127be0562dac1bd6730461aa9845abc7cdd2e` |
| 39 | `def` | [Products.Tail](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/products-tail--e9894f011094bd803b4fc95a.md) | 407 | `declaration-track:e9894f011094bd803b4fc95ac5699b9111c023a6e9a911c6e9831604ac13b716` |
| 40 | `theorem` | [Products.max_eq_o_cons_tail](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/products-max-eq-o-cons-tail--162ddc3fa9ba374384d90c94.md) | 410 | `result-track:162ddc3fa9ba374384d90c9495038fec98add1ef754bb469ecaeabf013d9c4c1` |
| 41 | `theorem` | [Products.max_eq_o_cons_tail'](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/products-max-eq-o-cons-tail--a6483dc26d54859cac8682f2.md) | 415 | `result-track:a6483dc26d54859cac8682f26e474e33cd00166dde54474a098dc25c4d5b5de8` |
| 42 | `theorem` | [GoodProducts.head!_eq_o_of_maxProducts](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/goodproducts-head-eq-o-of-maxproducts--80ed2c29d07e8543fdeb9a7e.md) | 421 | `result-track:80ed2c29d07e8543fdeb9a7edf06d7c9211b6b3dc588d08b9535b384704005f4` |
| 43 | `theorem` | [GoodProducts.max_eq_o_cons_tail](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/goodproducts-max-eq-o-cons-tail--fda212c7b06f4952d1e6d186.md) | 435 | `result-track:fda212c7b06f4952d1e6d186f5ffe11eb58bd2d25a2aa7e76f40587e622063e3` |
| 44 | `theorem` | [Products.evalCons](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/products-evalcons--d87cdfe5d0f0a794f9a86ed8.md) | 441 | `result-track:d87cdfe5d0f0a794f9a86ed868bfa4c55ce2a7d969442be9b9c0c72857202244` |
| 45 | `theorem` | [Products.max_eq_eval](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/products-max-eq-eval--8c6d13a226fe63cace9a31c9.md) | 446 | `result-track:8c6d13a226fe63cace9a31c98945971d422733f4987f8b31e405d7fa4c84ccc1` |
| 46 | `theorem` | [max_eq_eval](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/max-eq-eval--fb3dd192d4603def6fd32fa5.md) | 477 | `result-track:fb3dd192d4603def6fd32fa5589918eb6ca3de19d38c67cebbe100c592376dff` |
| 47 | `theorem` | [max_eq_eval_unapply](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/max-eq-eval-unapply--b8cf7e7abb04debe2a37d758.md) | 483 | `result-track:b8cf7e7abb04debe2a37d758bb0fa1ad0c80baf21e8cbfa5d075fa799040e8a7` |
| 48 | `theorem` | [chain'_cons_of_lt](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/chain-cons-of-lt--56197695606ba123232757f0.md) | 490 | `result-track:56197695606ba123232757f03790a8286fdc1fb2124e170860836bf815cd6fa7` |
| 49 | `theorem` | [good_lt_maxProducts](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/good-lt-maxproducts--8f16ba0d2cc37c2723e980eb.md) | 507 | `result-track:8f16ba0d2cc37c2723e980ebbd140233c29a4f887bfd1de164d35fe69cc0efff` |
| 50 | `theorem` | [maxTail_isGood](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/maxtail-isgood--b21863a7761ac1b829583831.md) | 524 | `result-track:b21863a7761ac1b829583831147653df85ef79f68a39749b2d1afadfa7fa5e89` |
| 51 | `def` | [MaxToGood](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/maxtogood--fcbee61fee7579f7384a9a0e.md) | 594 | `declaration-track:fcbee61fee7579f7384a9a0eeb79fc68edef00027af8c088f296d056b679d397` |
| 52 | `theorem` | [maxToGood_injective](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/maxtogood-injective--d7c782c518e253358155d8be.md) | 599 | `result-track:d7c782c518e253358155d8be176794f86ade3bf96c4630517b501ead49d65aa8` |
| 53 | `theorem` | [linearIndependent_comp_of_eval](../../../../../mathematics/Topology/GeneralTopology/Successor/Varianta0487183bbe9d3d0abc8b07e077a23494413e984415250a620ead205f7ee960b.lean/declarations/linearindependent-comp-of-eval--903034e6b17d177a05347aa5.md) | 609 | `result-track:903034e6b17d177a05347aa57f4a50ca6fab97abb4d6b34e0f75042f64c1efe5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
