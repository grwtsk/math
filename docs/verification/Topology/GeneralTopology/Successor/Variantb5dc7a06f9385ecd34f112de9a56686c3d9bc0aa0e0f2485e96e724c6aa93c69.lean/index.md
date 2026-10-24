# Verification target: GRWTSK.Topology.GeneralTopology.Successor.Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "48f0ba400d90f653e7a1697bccf77d0919046a48",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `48f0ba400d90f653e7a1697bccf77d0919046a48`.

Source path: `GRWTSK/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [C0](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/c0--27bf0ec4f7be0f48a6f41716.md) | 95 | `declaration-track:27bf0ec4f7be0f48a6f41716a1e233f7e797efd1af256572a158353773c1b29a` |
| 2 | `def` | [C1](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/c1--54c5597c5e16fe5c8fb32546.md) | 98 | `declaration-track:54c5597c5e16fe5c8fb3254603c07ec4c4780eeacc5b93a64b7e8118c6ee89c1` |
| 3 | `theorem` | [isClosed_C0](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/isclosed-c0--bfa04f8b51800f77aee11139.md) | 101 | `result-track:bfa04f8b51800f77aee111396c19932d450fc207f6035a18ebca9fff343f1a4c` |
| 4 | `theorem` | [isClosed_C1](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/isclosed-c1--da9d73a43413c2f2bf9be395.md) | 107 | `result-track:da9d73a43413c2f2bf9be395fc482ad796ef1a387760300cb74a0e431fe2c5a8` |
| 5 | `theorem` | [contained_C1](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/contained-c1--e640135f96c7404eb6e56c51.md) | 112 | `result-track:e640135f96c7404eb6e56c51e41516f9065bab7eba79d23863818b8590bbcb2c` |
| 6 | `theorem` | [union_C0C1_eq](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/union-c0c1-eq--b49632984dac9ecbb14a1783.md) | 115 | `result-track:b49632984dac9ecbb14a1783a2e1476aa2b69bbfb20b2d564b7acd3045ebeb30` |
| 7 | `def` | [C'](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/c--591226f463276d5b99455227.md) | 126 | `declaration-track:591226f463276d5b994552273d3da516f07c17e4c7504128f9eb3e72ddca172e` |
| 8 | `theorem` | [isClosed_C'](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/isclosed-c--96b476678a61658e86dfd451.md) | 129 | `result-track:96b476678a61658e86dfd4513629fb7e098db0a8ba310ae1497c8e745d23aba6` |
| 9 | `theorem` | [contained_C'](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/contained-c--a07c1b1f8a16fec7bcd94b1c.md) | 132 | `result-track:a07c1b1f8a16fec7bcd94b1c84295748f56373b0c79e103da397b72a5dc3f091` |
| 10 | `def` | [SwapTrue](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/swaptrue--c747aa2e9887fb274d5e87bf.md) | 138 | `declaration-track:c747aa2e9887fb274d5e87bf2d6d3c956a680b7f86da593af1e5a272d51f4866` |
| 11 | `theorem` | [continuous_swapTrue](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/continuous-swaptrue--5bc2c46d446186bed9461853.md) | 141 | `result-track:5bc2c46d446186bed9461853ef5f3535f64a5d3961bb1ce14b96ffc927a22d13` |
| 12 | `theorem` | [swapTrue_mem_C1](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/swaptrue-mem-c1--e9bd490310a69d09b5c391b2.md) | 152 | `result-track:e9bd490310a69d09b5c391b20e6b079cd83bbbd193461c37d86144473c04e8a3` |
| 13 | `def` | [CC'₀](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/cc--c145d762ec4e1d3ca14b7ec6.md) | 168 | `declaration-track:c145d762ec4e1d3ca14b7ec68cef43c07dc9dd3d48279fd863384ba3f0f1181d` |
| 14 | `def` | [CC'₁](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/cc--6e717f868b3506becf3ac2db.md) | 172 | `declaration-track:6e717f868b3506becf3ac2db123eec35e6f098550cf3414b827ce590b5da8c35` |
| 15 | `theorem` | [continuous_CC'₀](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/continuous-cc--7792ab8e3e65be63364b6bfa.md) | 175 | `result-track:7792ab8e3e65be63364b6bfa8575de97449f8223991a13c98dc99d046a5f1c2a` |
| 16 | `theorem` | [continuous_CC'₁](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/continuous-cc--2a73019c8d3b471b4ef34ac7.md) | 177 | `result-track:2a73019c8d3b471b4ef34ac765ab8a450e501a2f429911f83b53fa51d603ef63` |
| 17 | `def` | [Linear_CC'₀](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/linear-cc--03d7d36150661f0de480f507.md) | 182 | `declaration-track:03d7d36150661f0de480f5079eab441ef1b49c1b468c7b0d01019d32b2a98e1c` |
| 18 | `def` | [Linear_CC'₁](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/linear-cc--354935213dcd3dd95fac611a.md) | 187 | `declaration-track:354935213dcd3dd95fac611a7f060d841e65b8fb56b9a03314a087b4571358e6` |
| 19 | `def` | [Linear_CC'](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/linear-cc--67b078591ad5242ef0047bdd.md) | 192 | `declaration-track:67b078591ad5242ef0047bddb3d254f53db076cd493fa18b8fe666ed10361e85` |
| 20 | `theorem` | [CC_comp_zero](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/cc-comp-zero--9816592e8718331b3b809d87.md) | 196 | `result-track:9816592e8718331b3b809d876a0cbc8fc0a3da677beeabf69c2f879b88dd316b` |
| 21 | `theorem` | [C0_projOrd](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/c0-projord--de29a6ac1abc3cea7cf97e32.md) | 210 | `result-track:de29a6ac1abc3cea7cf97e3283e67613cb76d2df3286836fb5bec026129de385` |
| 22 | `theorem` | [C1_projOrd](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/c1-projord--af68348250ecf57caee63aa2.md) | 224 | `result-track:af68348250ecf57caee63aa222ba050b5331649d689afe04c8191a56e52f2abb` |
| 23 | `theorem` | [CC_exact](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/cc-exact--8985bd346fe772015947ec35.md) | 240 | `result-track:8985bd346fe772015947ec359e1c8b79262bf3ed3c567e9d795b936a529a2fcf` |
| 24 | `theorem` | [succ_mono](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/succ-mono--82a801a53657d5f856498761.md) | 276 | `result-track:82a801a53657d5f856498761c266273984f20206e05467ab75c293f0dbdee714` |
| 25 | `theorem` | [succ_exact](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/succ-exact--3509fa897468836950c7610e.md) | 281 | `result-track:3509fa897468836950c7610e1c493d512654af7ad68bd0ab69aec19c8b999550` |
| 26 | `def` | [MaxProducts](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/maxproducts--17229b2c74780464cef1b9f9.md) | 296 | `declaration-track:17229b2c74780464cef1b9f906fa2143d8b8e5cc31d7dcc42da1982daf937f57` |
| 27 | `theorem` | [union_succ](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/union-succ--9c344449da1cce1015621822.md) | 299 | `result-track:9c344449da1cce101562182251b98df37f6e2b470012e499ab1744357715d97e` |
| 28 | `def` | [sum_to](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/sum-to--58486b91391ee1b07e46dc95.md) | 324 | `declaration-track:58486b91391ee1b07e46dc95c937fb19aa79080f69d42100e8baade20625598d` |
| 29 | `theorem` | [injective_sum_to](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/injective-sum-to--cdccace62d9e39ee0183b40f.md) | 327 | `result-track:cdccace62d9e39ee0183b40f1f31f4e44bb00f99c26b7a2f6231d57cef070cab` |
| 30 | `theorem` | [sum_to_range](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/sum-to-range--ba6b98b000f32dfe460c508a.md) | 334 | `result-track:ba6b98b000f32dfe460c508a8829757d645302a80887505d9e85f4fe40c4493a` |
| 31 | `def` | [sum_equiv](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/sum-equiv--393209485d75095717752ace.md) | 342 | `declaration-track:393209485d75095717752ace7126f12d2b5df1bea9e7998e16a6f578fc7d4779` |
| 32 | `theorem` | [sum_equiv_comp_eval_eq_elim](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/sum-equiv-comp-eval-eq-elim--f66bb238d8d6800b03e0674b.md) | 347 | `result-track:f66bb238d8d6800b03e0674bf79f6fb72d1330948ae8bdfb88471ac892997b5e` |
| 33 | `def` | [SumEval](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/sumeval--8e91a09d7e2ab353995683d1.md) | 376 | `declaration-track:8e91a09d7e2ab353995683d18c6df331b7a3603f2d95f80e1c61a30e169096e2` |
| 34 | `theorem` | [linearIndependent_iff_sum](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/linearindependent-iff-sum--cce0893c609e7342d7a4d9f6.md) | 382 | `result-track:cce0893c609e7342d7a4d9f6a74e7a7e21f4507c2b32f064c3aac48d16d43472` |
| 35 | `theorem` | [span_sum](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/span-sum--83744ea99a582db2508d3421.md) | 390 | `result-track:83744ea99a582db2508d34215522c4558127ef15f68b8ddd6edd8c3ce1060db4` |
| 36 | `theorem` | [square_commutes](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/square-commutes--d21133f37ef046324cea5a08.md) | 398 | `result-track:d21133f37ef046324cea5a080d4d70bb998d661ade5573badafe5f92db55759c` |
| 37 | `theorem` | [swapTrue_eq_true](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/swaptrue-eq-true--02c0fb8126bda58e130e5886.md) | 407 | `result-track:02c0fb8126bda58e130e588615788e7c4fe8f22853cfc0da8272ee3d7806fb42` |
| 38 | `theorem` | [mem_C'_eq_false](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/mem-c-eq-false--27f16e64d7ef7be04a96a23e.md) | 410 | `result-track:27f16e64d7ef7be04a96a23e3a7c9705750f61f8b8f1cba0f5fedb0e3fdd20d6` |
| 39 | `def` | [Products.Tail](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/products-tail--23808c6390be44d5f1ea3b5c.md) | 415 | `declaration-track:23808c6390be44d5f1ea3b5c9374c5183d63c659cf0a515c8e08e9f3e2e66a2e` |
| 40 | `theorem` | [Products.max_eq_o_cons_tail](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/products-max-eq-o-cons-tail--fad2a2b7c21a31acfcf9ec97.md) | 418 | `result-track:fad2a2b7c21a31acfcf9ec974c637312a520916335129b16cc93560997ff2d7c` |
| 41 | `theorem` | [Products.max_eq_o_cons_tail'](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/products-max-eq-o-cons-tail--8d8726fe94589fba85de8a1d.md) | 424 | `result-track:8d8726fe94589fba85de8a1d4a8ea2b395bfe39f73849a0cc272b464656d59d0` |
| 42 | `theorem` | [GoodProducts.head!_eq_o_of_maxProducts](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/goodproducts-head-eq-o-of-maxproducts--f124f691bd643a65d4316a2a.md) | 430 | `result-track:f124f691bd643a65d4316a2a023daeb391c039e54a535534eadccc5a7a8d3aa9` |
| 43 | `theorem` | [GoodProducts.max_eq_o_cons_tail](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/goodproducts-max-eq-o-cons-tail--51e920341e83ec3af9af523f.md) | 444 | `result-track:51e920341e83ec3af9af523f1b13cd87f986fbe510450b59ea05e8ddcf3618ec` |
| 44 | `theorem` | [Products.evalCons](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/products-evalcons--b04572bb455552b92eeaa56c.md) | 451 | `result-track:b04572bb455552b92eeaa56cca8117c697a30c8203c78255161dab412210bff2` |
| 45 | `theorem` | [Products.max_eq_eval](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/products-max-eq-eval--ee36e109df52c21f61c16f10.md) | 457 | `result-track:ee36e109df52c21f61c16f10cf2042668148675dde417339e85dc94a3a773949` |
| 46 | `theorem` | [max_eq_eval](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/max-eq-eval--1958b3935cd2df401dd88f7d.md) | 488 | `result-track:1958b3935cd2df401dd88f7de0c557c9146ce8cc8f17d476c653f2f00a19b316` |
| 47 | `theorem` | [max_eq_eval_unapply](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/max-eq-eval-unapply--83a759c5efbcc32faab55f13.md) | 494 | `result-track:83a759c5efbcc32faab55f1300260d98d7bc3f5c5d1947f66e65517e027ec8b8` |
| 48 | `theorem` | [isChain_cons_of_lt](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/ischain-cons-of-lt--a7543ab4a494c7c99e3ba4b9.md) | 501 | `result-track:a7543ab4a494c7c99e3ba4b91fcefdd27a34bfc24d1671ff64011278ea0c6d43` |
| 49 | `theorem` | [good_lt_maxProducts](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/good-lt-maxproducts--fcf18312a6d9a4414ab2025c.md) | 518 | `result-track:fcf18312a6d9a4414ab2025c856578ac7491cc00d8a621934cedca2b638d6a48` |
| 50 | `theorem` | [maxTail_isGood](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/maxtail-isgood--e88996899712d1fdd50d3310.md) | 536 | `result-track:e88996899712d1fdd50d3310d1c9df14691dc2c4dae2bb7b2e7940c652f9225a` |
| 51 | `def` | [MaxToGood](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/maxtogood--f992a3320ed6d91096eee0cc.md) | 603 | `declaration-track:f992a3320ed6d91096eee0cc6248d041b395ce949251bf2be0ef189d381fad6e` |
| 52 | `theorem` | [maxToGood_injective](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/maxtogood-injective--13f799385f14c673db0f94ee.md) | 608 | `result-track:13f799385f14c673db0f94eeb37e78b0e0b1e985bb288eaaa6ad07feb3f14bdf` |
| 53 | `theorem` | [linearIndependent_comp_of_eval](../../../../../mathematics/Topology/GeneralTopology/Successor/Variantb5dc7a06f9385ecd34f112de9a56686c3d9bc0aa0e0f2485e96e724c6aa93c69.lean/declarations/linearindependent-comp-of-eval--36412fe53c4b64381d9680a4.md) | 618 | `result-track:36412fe53c4b64381d9680a4821292d1bff96bb735e82131d34a8968719cf271` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
