# Verification target: Simple Func Dense Lp Tendsto Approx On Lp Snorm

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d813a837ff071d345a28499eb65379e4343c2a37",
  "lexical_observation_count": 88,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/index.md) · [Full source](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d813a837ff071d345a28499eb65379e4343c2a37`.

Source path: `GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Function.L1Space` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.SimpleFuncDense` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nnnorm_approxOn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/nnnorm-approxon-le.md) | 69 | `result-track:64da3fdc55bbc682bd395e35faa311ee7a22a4cf4b45baad274b6aa1c0a525da` |
| 2 | `theorem` | [norm_approxOn_y₀_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/norm-approxon-y-le.md) | 78 | `result-track:c7e9265536e77f92f84b55ef3a914f2505f87e161a6fd26d30dd1ffcab4ba240` |
| 3 | `theorem` | [norm_approxOn_zero_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/norm-approxon-zero-le.md) | 86 | `result-track:81badc9825a0970899cc2158964c47e08bb30d45a7cca921da2d29b680ed7151` |
| 4 | `theorem` | [tendsto_approxOn_Lp_snorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tendsto-approxon-lp-snorm.md) | 94 | `result-track:d937b1f83f0c83eb8be0580ffc37c35699d7250ad1c54281274bc4c7a85cde9d` |
| 5 | `theorem` | [memℒp_approxOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/mem-p-approxon.md) | 139 | `result-track:a5b289d92b10477a87da797a696dad7dca4123c413909e2d0aa4722385dd3753` |
| 6 | `theorem` | [tendsto_approxOn_range_Lp_snorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tendsto-approxon-range-lp-snorm.md) | 170 | `result-track:688c4f342e8a84c7c5c177d729a9236d36322e05efa69b1e4cc848ad81b8424c` |
| 7 | `theorem` | [memℒp_approxOn_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/mem-p-approxon-range.md) | 183 | `result-track:60911b894639e33fe5ef9a4fc9e19109197e82bf96cc5f8e07e94a4d31f20feb` |
| 8 | `theorem` | [tendsto_approxOn_range_Lp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tendsto-approxon-range-lp.md) | 189 | `result-track:bf7d39d2d65bacf050304b349d59e2ce457a7232aa992a1bfa86ce3201ec039a` |
| 9 | `theorem` | [_root_.MeasureTheory.Memℒp.exists_simpleFunc_snorm_sub_lt](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/root-measuretheory-mem-p-exists-simplefunc-snorm-sub-lt.md) | 201 | `result-track:7dae1d51e950f2e4361482fa5112a5c651c8d27a2b4a3c2434a1ad510f0cf2ed` |
| 10 | `theorem` | [tendsto_approxOn_L1_nnnorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tendsto-approxon-l1-nnnorm.md) | 233 | `result-track:7560435afd1aa57fc04b69d34ee82b83903c14043998eb71de19f3b94d1492bf` |
| 11 | `theorem` | [integrable_approxOn](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/integrable-approxon.md) | 242 | `result-track:794e1a31e8569c18bf2ee873e9b950aa6126da0f3bdaf045cf94f00d9cffcce7` |
| 12 | `theorem` | [tendsto_approxOn_range_L1_nnnorm](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tendsto-approxon-range-l1-nnnorm.md) | 249 | `result-track:727ada0a80012d84744d76198c7dad89949bebe82bb9c57fc82bd42c72d22e55` |
| 13 | `theorem` | [integrable_approxOn_range](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/integrable-approxon-range.md) | 261 | `result-track:d6bc9d4bab088d59f20ed323893b49237c12586611b5a401226783ee8101bb19` |
| 14 | `theorem` | [exists_forall_norm_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/exists-forall-norm-le.md) | 287 | `result-track:36297fea36f1974d2e85d854fefb6d4a18962ded7ff8b1729205b1b0ebf2bb71` |
| 15 | `theorem` | [memℒp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/mem-p-zero.md) | 291 | `result-track:b16d0b1bff6d33d087dfdb0b9fe7a2ea148139fb02e33f7b0450cb2ba48a6a58` |
| 16 | `theorem` | [memℒp_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/mem-p-top.md) | 295 | `result-track:a572fffa663c7dbb872c2c3e1c4b966c0c551a931e7a4113aa0e076314ef084c` |
| 17 | `theorem` | [snorm'_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/snorm-eq.md) | 300 | `result-track:9db48aa36ff3a8e0584bf7f922e3492eadcd8f367fc333f6ec4280cce0b303a2` |
| 18 | `theorem` | [measure_preimage_lt_top_of_memℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/measure-preimage-lt-top-of-mem-p.md) | 307 | `result-track:e48150b3dbbaec13e627a5a514d4ce9c25a479c1d91d6a4f337f6c71c6ac23f1` |
| 19 | `theorem` | [memℒp_of_finite_measure_preimage](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/mem-p-of-finite-measure-preimage.md) | 336 | `result-track:2ee311d95141a029cc5b8a3e272792d7b80cad5dcb10f5b19fad2afc1aa3e788` |
| 20 | `theorem` | [memℒp_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/mem-p-iff.md) | 351 | `result-track:a679b481279a023c3cb7291e8775f2daad2fb53d873c3096ff1915d53152853d` |
| 21 | `theorem` | [integrable_iff](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/integrable-iff.md) | 357 | `result-track:b7b76791e1f464c1ef22079713a364a9bc5206f3104c3aacbd6cbfd3b9ecab00` |
| 22 | `theorem` | [memℒp_iff_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/mem-p-iff-integrable.md) | 361 | `result-track:0195669f57d30e83525d248a80c5795c3b93d0a8c67c609b3803eb2844c0c7a7` |
| 23 | `theorem` | [memℒp_iff_finMeasSupp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/mem-p-iff-finmeassupp.md) | 366 | `result-track:0c7c818f21795577d8d55f18d7f72582f4c0bab0f9bba12a07ae5e1fc75e42c9` |
| 24 | `theorem` | [integrable_iff_finMeasSupp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/integrable-iff-finmeassupp.md) | 371 | `result-track:f47d6c9514f506f549aa0e22781991923cfd62d19b7cffb2c4ea30eb58c612c7` |
| 25 | `theorem` | [FinMeasSupp.integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/finmeassupp-integrable.md) | 375 | `result-track:d70685ff19bffaf84421b9fdaa510663b5402e2537f162c1cf57f1038d971ee4` |
| 26 | `theorem` | [integrable_pair](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/integrable-pair.md) | 379 | `result-track:436958842a06cccc9a1cc6e72914809e99bfd1416cb0a0c9c690e0a111376676` |
| 27 | `theorem` | [memℒp_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/mem-p-of-isfinitemeasure.md) | 384 | `result-track:3f6676334a9892a7cad3caf6cada4de56c066c6fb375bd3d6934f3adaec43a61` |
| 28 | `theorem` | [integrable_of_isFiniteMeasure](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/integrable-of-isfinitemeasure.md) | 390 | `result-track:b9d492409f99bbd36eedbb05781b1b54740cdaa9eaccb682d4ad6b3e72febbfc` |
| 29 | `theorem` | [measure_preimage_lt_top_of_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/measure-preimage-lt-top-of-integrable.md) | 394 | `result-track:541563f2605bd8dfc79d452228e1704513032d403fe11cb402aabe464ee11326` |
| 30 | `theorem` | [measure_support_lt_top](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/measure-support-lt-top.md) | 399 | `result-track:da0553aecae88f700fca7224eb142cceef48289d7de1f7e9f4aec24a0ee0aae3` |
| 31 | `theorem` | [measure_support_lt_top_of_memℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/measure-support-lt-top-of-mem-p.md) | 407 | `result-track:8954c0c2ddf8556c87be01b344a51bf003a65e02b4e0ca5c6e0288ff97ea2640` |
| 32 | `theorem` | [measure_support_lt_top_of_integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/measure-support-lt-top-of-integrable.md) | 412 | `result-track:4e5140ac6388af6b4ae4b2b5002bdffe0a0e43ddf340aa63c3535ff8619b60ee` |
| 33 | `theorem` | [measure_lt_top_of_memℒp_indicator](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/measure-lt-top-of-mem-p-indicator.md) | 417 | `result-track:a2f59569d600ecdc620338fcd8d125fc849e23224a5d762ecd2f4dc321dc95c7` |
| 34 | `def` | [simpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/simplefunc.md) | 445 | `declaration-track:14c8b154f574f1b69430c0991c90a398b89793c77ef6635dcd620c6aa7a143ed` |
| 35 | `theorem` | [eq'](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/eq.md) | 470 | `result-track:293582fc0c637e72be335a164e8f5a58a5dc35f1242ae90859721fa4ba57f507` |
| 36 | `def` | [smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/smul.md) | 485 | `declaration-track:a0713d4edf10f204f15734eadc969701425c0d6ba22b6f55709773c70cfe6e31` |
| 37 | `theorem` | [coe_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/coe-smul.md) | 498 | `result-track:50e58b28c2000f96ce1a883cea9cfd1fd83baccb769e0e7f60fc19137b4b03d5` |
| 38 | `def` | [module](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/module.md) | 505 | `declaration-track:3498a85a3f920e8aac3f6de2e5ebbda1b71cf4d42facf3f87f2aa5b44c3597d4` |
| 39 | `theorem` | [boundedSMul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/boundedsmul.md) | 518 | `result-track:9f7c5136df24a86ed2d679c8cd7aacb3bb6370a3b850439de734eb6aa150cb50` |
| 40 | `def` | [normedSpace](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/normedspace.md) | 526 | `declaration-track:0a4123be937dfe76976ccfa5369f05b543c38c27880019c9fc8505749889f460` |
| 41 | `def` | [toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tolp.md) | 539 | `declaration-track:f0dd4a3d1c76e3b3faffc20716d66fe91255b39cd9abbfc49a0f23a2d6e8cadb` |
| 42 | `theorem` | [toLp_eq_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tolp-eq-tolp.md) | 543 | `result-track:8760586cecf239df5f7b7c611c6837e74db9ad993e4126b6e1578df2dbc208a0` |
| 43 | `theorem` | [toLp_eq_mk](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tolp-eq-mk.md) | 547 | `result-track:3531c26441949997fbe6d40bab706fcfb5c1d356022856d6679c477f76037695` |
| 44 | `theorem` | [toLp_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tolp-zero.md) | 552 | `result-track:667c11e98f93d38a523d1d4bf66c5a1231e16e124f2b2e9b358fd004b844e560` |
| 45 | `theorem` | [toLp_add](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tolp-add.md) | 556 | `result-track:84e94c79f7918b21155465e9e40e975a7f535517e6f2fa0d9d09f6d9387bb997` |
| 46 | `theorem` | [toLp_neg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tolp-neg.md) | 561 | `result-track:db90f97df243c0a286720a31beae8264db3e20e9bdebbbb16e2ba6a0bd8b4f65` |
| 47 | `theorem` | [toLp_sub](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tolp-sub.md) | 565 | `result-track:8f44293ac9c6a49b263e366cfd44697be995a16891abc2ca5f04a891976ea985` |
| 48 | `theorem` | [toLp_smul](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tolp-smul.md) | 572 | `result-track:02af16d039538aef97ebfc3779f19df82a90279be07e56f8501e36c027baf02e` |
| 49 | `theorem` | [norm_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/norm-tolp.md) | 577 | `result-track:533e4715ab62220af376892b892da5733e57fb9a49365c736817c460909d1770` |
| 50 | `def` | [toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tosimplefunc.md) | 587 | `declaration-track:fce1a357a66ebb06d20a5b2dd7d6be5ef27916d27798f94d555d2a5102d80aa1` |
| 51 | `theorem` | [measurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/measurable.md) | 593 | `result-track:abb5345230344b8acad209f6dd71df96e3a3f167531b7b4d05387aae78cba774` |
| 52 | `theorem` | [stronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/stronglymeasurable.md) | 598 | `result-track:7609cb0cc34f4705abee56a103800b6e476fad168a2112095248401f6c8f99f4` |
| 53 | `theorem` | [aemeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/aemeasurable.md) | 604 | `result-track:6b2bdb368942524bfc3c8e9b305c24543253cd28778e9e1ab7071458412b61ec` |
| 54 | `theorem` | [aestronglyMeasurable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/aestronglymeasurable.md) | 609 | `result-track:12ee745cde37d2d48699ae4df63c681f51f1ccf6bf6f7b8c277223a864efdc30` |
| 55 | `theorem` | [toSimpleFunc_eq_toFun](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tosimplefunc-eq-tofun.md) | 614 | `result-track:a17b2e19894f11c8562df31f8dc4be88b1ba5638eb109b71e0f6d8efcc30c3ce` |
| 56 | `theorem` | [memℒp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/mem-p.md) | 622 | `result-track:2a5079bdaa322245aca88b049b9bcb1241767d2c72e0d5ac6207c675930285e2` |
| 57 | `theorem` | [toLp_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tolp-tosimplefunc.md) | 626 | `result-track:3ff196333626a3986b321d6aec817b837de19d508e40da31edb9efb0a9ddeb46` |
| 58 | `theorem` | [toSimpleFunc_toLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tosimplefunc-tolp.md) | 631 | `result-track:0781a0615794c9f30908ab0eef7f2ff6c7123872d0707071ac3e1ef39f07f473` |
| 59 | `theorem` | [zero_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/zero-tosimplefunc.md) | 637 | `result-track:d72801a668c79f5a840ede7df84511131af21ac37f95c5903e87aca4deb1645a` |
| 60 | `theorem` | [add_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/add-tosimplefunc.md) | 645 | `result-track:8b918fbc429ef94b9f08f87d23380c6be272450ebd3bbdc75804fe341ab7c626` |
| 61 | `theorem` | [neg_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/neg-tosimplefunc.md) | 653 | `result-track:532a1f5e78860daa8d3f92492580624e0e778a174875077f648ebfc2dd5c676a` |
| 62 | `theorem` | [sub_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/sub-tosimplefunc.md) | 660 | `result-track:5e4a6075cabd224dcdec1ed40ac691b99d617867de05cc7814abc0086c107b22` |
| 63 | `theorem` | [smul_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/smul-tosimplefunc.md) | 671 | `result-track:c2f2410725edd08c51d3232776d06c952fdf482ba280ddd48814a3b77e3b2323` |
| 64 | `theorem` | [norm_toSimpleFunc](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/norm-tosimplefunc.md) | 679 | `result-track:de07f1711b060aaa23dfb66595b808883b6d4443f90d883042f29f71797e5aaf` |
| 65 | `def` | [indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/indicatorconst.md) | 692 | `declaration-track:2939136b40085ac95f052b48a1e056d6837ad06036ff85418e3e856eeed155da` |
| 66 | `theorem` | [coe_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/coe-indicatorconst.md) | 701 | `result-track:e9f1c8b7fe42fcaf53ee52d893df61e0af0c05487220d234aa0c574db01f518e` |
| 67 | `theorem` | [toSimpleFunc_indicatorConst](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/tosimplefunc-indicatorconst.md) | 706 | `result-track:c3276c41443a1e5f2b251db643e0111f342f0336b51a9da075185d105fd6c3ef` |
| 68 | `theorem` | [induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/induction.md) | 716 | `result-track:e70bfe495a07098afd526c6be5ccce6c6c133c40b21277f3fb2d24e04fdbe491` |
| 69 | `theorem` | [uniformContinuous](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/uniformcontinuous.md) | 751 | `result-track:307d2640db3b2d19650eecb73a229a0a7f50a234261dd48eae7df4d29f6bb567` |
| 70 | `theorem` | [uniformEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/uniformembedding.md) | 755 | `result-track:a3aa0cb6c689f2bb55873f4da31143a20aa76cbeaf65f88388d72a6501f27d76` |
| 71 | `theorem` | [uniformInducing](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/uniforminducing.md) | 759 | `result-track:13d86ec8aab477d32a12bca7e5402b354ed7b4391d37afa6163434afef70ad7b` |
| 72 | `theorem` | [denseEmbedding](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/denseembedding.md) | 763 | `result-track:fac928d4a8dffd82987605b70c5fe6af40ce598d36be5e78e5969fe788a74e28` |
| 73 | `theorem` | [denseInducing](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/denseinducing.md) | 782 | `result-track:3609b76a4955e506737552b954c7fdfb005c13b4222219c29e9234a893df27ce` |
| 74 | `theorem` | [denseRange](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/denserange.md) | 787 | `result-track:28eace25b5a802e758b1aa2478d0a3d23379a5b76ff13b403007936d53e6aee9` |
| 75 | `def` | [coeToLp](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/coetolp.md) | 797 | `declaration-track:29f977ae7b77b0828d20a3f6caeaa4403c34c1924db045b2cb8c6e3d93608b9a` |
| 76 | `theorem` | [coeFn_le](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/coefn-le.md) | 811 | `result-track:f395a243f09fa5fdf3277314aab061a5435bcf74d3cfd030d66c91f34159db9f` |
| 77 | `instance` | [instCovariantClassLE](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/instcovariantclassle.md) | 815 | `declaration-track:775fe33952c7dcf0c67b90124bef6394fa2ca6e1bad7861745a928d99af76ca2` |
| 78 | `theorem` | [coeFn_zero](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/coefn-zero.md) | 828 | `result-track:5a1fbf0fb2945805d07c187c9a13172fe097a7b282c1d67992d4352ae2eb53d1` |
| 79 | `theorem` | [coeFn_nonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/coefn-nonneg.md) | 834 | `result-track:bfd6da46ffd4948835bf87a9968e6d0ce463cd0583199dabdff4c9ae8e7c549e` |
| 80 | `theorem` | [exists_simpleFunc_nonneg_ae_eq](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/exists-simplefunc-nonneg-ae-eq.md) | 838 | `result-track:9aae9c607c9c5db70c837f6317b8c495c9c0d615b6666368cc4fa1b414020591` |
| 81 | `def` | [coeSimpleFuncNonnegToLpNonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/coesimplefuncnonnegtolpnonneg.md) | 849 | `declaration-track:c9c4b90579b40c921daef5305004bf2f0141e403ab2e652be6ee3a7b7b02ee07` |
| 82 | `theorem` | [denseRange_coeSimpleFuncNonnegToLpNonneg](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/denserange-coesimplefuncnonnegtolpnonneg.md) | 853 | `result-track:2787363d4ba3325d1a53a0fcb7ad0bed3961985c1d1fa8ea0f51714d10fdd66b` |
| 83 | `theorem` | [Lp.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/lp-induction.md) | 925 | `result-track:6ed044e1389c31ddd00dd859d7a01ffc62c130ea36e2cb754dfb8ab0b14654c2` |
| 84 | `theorem` | [Memℒp.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/mem-p-induction.md) | 951 | `result-track:ce845d0896023733ac7ed49c0dda4bd1925dc1c2f86b974c994358af4d058736` |
| 85 | `theorem` | [Memℒp.induction_dense](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/mem-p-induction-dense.md) | 981 | `result-track:632a4f912af70fa4efa72ecf22740e1ee60cb9e5051a74daf96faaff18f2d4b0` |
| 86 | `theorem` | [L1.SimpleFunc.toLp_one_eq_toL1](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/l1-simplefunc-tolp-one-eq-tol1.md) | 1036 | `result-track:8f4ed7dc14682e1d5e01e84d7938aa283f3c918af34f08034306b385da6d74ec` |
| 87 | `theorem` | [L1.SimpleFunc.integrable](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/l1-simplefunc-integrable.md) | 1041 | `result-track:b3b8d4516fab096a7b7cf9b12900389efcf51db76638a4f9eaa29eee5496323a` |
| 88 | `theorem` | [Integrable.induction](../../../../../MeasureAndIntegration/ClassicalMeasureTheory/SimpleFuncDenseLpTendstoApproxOnLpSnorm.lean/declarations/integrable-induction.md) | 1059 | `result-track:a1409bc1d3ba996fd96b6b4103bcd0f5af152fc9912f8e34ec00d92852b6679a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=29616883c6308cff2f773f6b4a7746020e75ad1d26188cb9b812ca879d3b5397 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean","GRWTSK/_verification/specifications/Analysis/MeasureTheory/SimpleFuncDenseLp/Variant0dda1eff21e992eff9f33bf58d911a95a9ea13478da0af7bc0dfd91fe64049dc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
