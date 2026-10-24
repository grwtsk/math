# Verification target: GRWTSK.Topology.GeneralTopology.Tendsto.Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e447d6ce227616824183864ce88ad7a07dbb2148",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e447d6ce227616824183864ce88ad7a07dbb2148`.

Source path: `GRWTSK/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.AtTopBot.Disjoint` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Tendsto` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [not_tendsto_const_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/not-tendsto-const-attop--685849b8b010b82de570fbd7.md) | 24 | `result-track:685849b8b010b82de570fbd74a5524341fe724fcf2c0a4d73368f528870f6f20` |
| 2 | `theorem` | [not_tendsto_const_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/not-tendsto-const-atbot--48aae8351ce1dd274142c48d.md) | 28 | `result-track:48aae8351ce1dd274142c48da043f54d080c7bb07168a2af921a4047d9f7cbfe` |
| 3 | `theorem` | [Tendsto.eventually_gt_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-eventually-gt-attop--91295f531095ccb4887a7a20.md) | 32 | `result-track:91295f531095ccb4887a7a208df184fb04cde1eb0b91354115c99bcb0db5391c` |
| 4 | `theorem` | [Tendsto.eventually_ge_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-eventually-ge-attop--056c28a0afb12e7fd2d10ff2.md) | 36 | `result-track:056c28a0afb12e7fd2d10ff2ca410d555a8abebd2dfacca9392906904d48c94c` |
| 5 | `theorem` | [Tendsto.eventually_ne_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-eventually-ne-attop--1b1d6db67d357c86d6f653dc.md) | 40 | `result-track:1b1d6db67d357c86d6f653dcb81f8501312bda93eec129ecf7104fb78b1ce2c2` |
| 6 | `theorem` | [Tendsto.eventually_ne_atTop'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-eventually-ne-attop--923e5b9f76e1dbb0f50aa7bf.md) | 44 | `result-track:923e5b9f76e1dbb0f50aa7bfae43136da332cda429ebd12ca521fb2fbbd8210d` |
| 7 | `theorem` | [Tendsto.eventually_lt_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-eventually-lt-atbot--5e2a1292d5db1b9e1596ae2f.md) | 48 | `result-track:5e2a1292d5db1b9e1596ae2f1ed35416749e2dbb5052b14e1d9c63f076b26b4d` |
| 8 | `theorem` | [Tendsto.eventually_le_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-eventually-le-atbot--4a56666795655b9c2bfbce81.md) | 52 | `result-track:4a56666795655b9c2bfbce8188b1eda5de6e89822e9e4ae8182f2aa84bfef2f0` |
| 9 | `theorem` | [Tendsto.eventually_ne_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-eventually-ne-atbot--e9573b1a078f89d8dd0274c5.md) | 56 | `result-track:e9573b1a078f89d8dd0274c5328162ce86be0e9ffe82d5cb90a7f5acbb77b00b` |
| 10 | `theorem` | [OrderTop.atTop_eq](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/ordertop-attop-eq--a50611399d27f63bf6729350.md) | 60 | `result-track:a50611399d27f63bf67293507a3251eb5cfaddcdbeaea64a3719ab5c4b7354c1` |
| 11 | `theorem` | [OrderBot.atBot_eq](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/orderbot-atbot-eq--978424171ab45567aa35cc68.md) | 63 | `result-track:978424171ab45567aa35cc68c40c73f854f527a923af0a8ba4a15ce091022703` |
| 12 | `theorem` | [tendsto_atTop_pure](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-attop-pure--6e7e11887d249edd2f63b480.md) | 66 | `result-track:6e7e11887d249edd2f63b480a9120433148a3c216c168402dc4df56ee40f53e1` |
| 13 | `theorem` | [tendsto_atBot_pure](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-atbot-pure--774665dba9becf23f1b57eaa.md) | 70 | `result-track:774665dba9becf23f1b57eaa7f66932e3a0eadaca3ffe924b0620459cd0cdc3d` |
| 14 | `theorem` | [tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-attop--bf6ffd47f2a8006808cd90bc.md) | 74 | `result-track:bf6ffd47f2a8006808cd90bcf3b91e6206671cf1621f6ef9eb6b255437972919` |
| 15 | `theorem` | [tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-atbot--811204e929948c8ed8535a11.md) | 78 | `result-track:811204e929948c8ed8535a1159d2d147ecb274f9cbcc90d0df33c8487a41080a` |
| 16 | `theorem` | [tendsto_atTop_mono'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-attop-mono--b6353c5765d945042fc8caa9.md) | 82 | `result-track:b6353c5765d945042fc8caa9fa6529ddcd3451ac190bfe85339b7c8ed8ac2ae7` |
| 17 | `theorem` | [tendsto_atBot_mono'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-atbot-mono--72b2d3fb82be273f60cdfe21.md) | 86 | `result-track:72b2d3fb82be273f60cdfe21afee0df3021379cdd8429ee9085f093bd3481819` |
| 18 | `theorem` | [tendsto_atTop_mono](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-attop-mono--b5907512cd6f6f045bf066de.md) | 90 | `result-track:b5907512cd6f6f045bf066deeebb7e7bc600f6d9972950ca916639428842ecb6` |
| 19 | `theorem` | [tendsto_atBot_mono](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-atbot-mono--1ee3cd63865342f6db9aaefd.md) | 94 | `result-track:1ee3cd63865342f6db9aaefd8f4a6a479fcd3c197711ef7b1a85876fa534fa52` |
| 20 | `theorem` | [_root_.StrictMono.tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/root-strictmono-tendsto-attop--db3400c3750adbe52774e322.md) | 106 | `result-track:db3400c3750adbe52774e322d11da511ffb3eedf6319f2e764540658bf0377a6` |
| 21 | `theorem` | [_root_.Monotone.upperBounds_range_comp_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/root-monotone-upperbounds-range-comp-tendsto-attop--e8e2d3b2984cb0c51b6b2a7f.md) | 117 | `result-track:e8e2d3b2984cb0c51b6b2a7f50756cb415cc98a04f213e288b99819654b1c2fe` |
| 22 | `theorem` | [_root_.Monotone.lowerBounds_range_comp_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/root-monotone-lowerbounds-range-comp-tendsto-atbot--5391d6f618fed7d0c5cf28ee.md) | 128 | `result-track:5391d6f618fed7d0c5cf28ee93a1b7dc8e8a3595b93380f3944d4d23effb657f` |
| 23 | `theorem` | [_root_.Antitone.lowerBounds_range_comp_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/root-antitone-lowerbounds-range-comp-tendsto-attop--1e659d16d2bd449b023d7e01.md) | 136 | `result-track:1e659d16d2bd449b023d7e015e732ce8b70cdd34605394d828ccb17efb85bb40` |
| 24 | `theorem` | [_root_.Antitone.upperBounds_range_comp_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/root-antitone-upperbounds-range-comp-tendsto-atbot--b09151c5dec530fa65a2cc25.md) | 144 | `result-track:b09151c5dec530fa65a2cc25a5e527f07f2a700709f3358a0e9605f077a9a4b0` |
| 25 | `theorem` | [tendsto_atTop_atTop_of_monotone](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-attop-attop-of-monotone--9d1df139131a1193b2432806.md) | 149 | `result-track:9d1df139131a1193b24328068fce2f40c74316d670887263dd5c1d3ee2a3715f` |
| 26 | `theorem` | [tendsto_atTop_atBot_of_antitone](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-attop-atbot-of-antitone--85baf32141149e03c1c3cee2.md) | 156 | `result-track:85baf32141149e03c1c3cee28f77284239879fd0b511039dd55cecf165b4d1df` |
| 27 | `theorem` | [tendsto_atBot_atBot_of_monotone](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-atbot-atbot-of-monotone--620c784f25e23410240ca68f.md) | 160 | `result-track:620c784f25e23410240ca68f6e81b259a1aebf90e9c4a04a01ca12aa68cf3c68` |
| 28 | `theorem` | [tendsto_atBot_atTop_of_antitone](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-atbot-attop-of-antitone--7f233e58251ba0a538f9de05.md) | 165 | `result-track:7f233e58251ba0a538f9de05d4518b5f9940f3117c4cddd58d91184a804319b9` |
| 29 | `theorem` | [comap_embedding_atTop](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/comap-embedding-attop--ae44b915542d5395ca7d2f6e.md) | 173 | `result-track:ae44b915542d5395ca7d2f6e7af63419761cb43bcc756c21b87998e1f7da1ce2` |
| 30 | `theorem` | [comap_embedding_atBot](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/comap-embedding-atbot--94692e34ed186800fc6415cc.md) | 180 | `result-track:94692e34ed186800fc6415ccf12080b3e6965c83a35ccc389f3c5155ccaf65e0` |
| 31 | `theorem` | [tendsto_atTop_embedding](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-attop-embedding--82dff0f3836c9cd923a1f5cd.md) | 184 | `result-track:82dff0f3836c9cd923a1f5cdb3b5b1235ea55258c33098804a0dad08f9893e66` |
| 32 | `theorem` | [tendsto_atBot_embedding](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-atbot-embedding--cd169dbedd6a47d474e11867.md) | 190 | `result-track:cd169dbedd6a47d474e118671121fb871dbf8c25527a227198160168684ed509` |
| 33 | `theorem` | [tendsto_atTop_atTop_of_monotone'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-attop-attop-of-monotone--12d83e83f62affeb65d23d68.md) | 197 | `result-track:12d83e83f62affeb65d23d6803186b4611dd343de123d86e2c381e8869a3ad48` |
| 34 | `theorem` | [tendsto_atBot_atBot_of_monotone'](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-atbot-atbot-of-monotone--7c61a026d6ec8a35a12b3546.md) | 206 | `result-track:7c61a026d6ec8a35a12b354615e00aee59b7133f4dc25d41c43d7ba678d75a58` |
| 35 | `theorem` | [tendsto_atTop_of_monotone_of_filter](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-attop-of-monotone-of-filter--2afc1dbc59ad5155dd3eb5cd.md) | 212 | `result-track:2afc1dbc59ad5155dd3eb5cd880b9cd4a90f81a3bbf963fa3264fb7f1fc071ab` |
| 36 | `theorem` | [tendsto_atBot_of_monotone_of_filter](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-atbot-of-monotone-of-filter--045e930cd4a57288df1e9f8b.md) | 218 | `result-track:045e930cd4a57288df1e9f8ba8f18822ff3ad4e697e4eaf671185afa82677d80` |
| 37 | `theorem` | [tendsto_atTop_of_monotone_of_subseq](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-attop-of-monotone-of-subseq--21fe18469c8bf38c5bf15f28.md) | 222 | `result-track:21fe18469c8bf38c5bf15f2879a9c52432df229546a2a5932672d7962fe0fbbe` |
| 38 | `theorem` | [tendsto_atBot_of_monotone_of_subseq](../../../../../mathematics/Topology/GeneralTopology/Tendsto/Variantb1a38b5dac4851e00a9a8f1e993ac6d9a07ed047395472de5899ed44185f5b7a.lean/declarations/tendsto-atbot-of-monotone-of-subseq--f72cc79be077ec9db1aaa655.md) | 227 | `result-track:f72cc79be077ec9db1aaa655727afe12db5a7fd14431536e2b7043f526c3a266` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
