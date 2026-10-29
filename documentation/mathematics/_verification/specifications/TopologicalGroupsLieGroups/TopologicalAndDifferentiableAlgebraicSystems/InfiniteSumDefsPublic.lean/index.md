# Verification target: Infinite Sum Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b14a15efd33bc3b47a7872b78d4f155c9bfa2660",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/index.md) · [Full source](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b14a15efd33bc3b47a7872b78d4f155c9bfa2660`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [HasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/hasprod.md) | 106 | `declaration-track:81fd82c635ad73066d48f3ec7058130b00720391b3c4004b0e3c583bc6fadbce` |
| 2 | `def` | [Multipliable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/multipliable.md) | 114 | `declaration-track:993b9f85be836e643aede63654531d2f1f27320f9bfae8f908776ecbe98a67b8` |
| 3 | `lemma` | [Multipliable.mono_filter](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/multipliable-mono-filter.md) | 118 | `result-track:b00d7506464602b997480cb1188b0159d25fb3c4e9224b9726270848c50e968a` |
| 4 | `lemma` | [hasProd_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/hasprod-bot.md) | 163 | `result-track:01f9c4add77665d8267f00be7616077ceaf7671cf5083fa831d8679f7763253d` |
| 5 | `lemma` | [multipliable_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/multipliable-bot.md) | 170 | `result-track:df7449bf74c939fbb0bfb888504ca17a726a3ba46cc64c6cb7a7eb61a0d7216d` |
| 6 | `lemma` | [tprod_bot](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/tprod-bot.md) | 184 | `result-track:307558c1e4006ecc4cfd2bdf36910def1d39560b717ecc2c49ce05506860d48d` |
| 7 | `theorem` | [HasProd.multipliable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/hasprod-multipliable.md) | 197 | `result-track:2f68fed4aa71c1e6f51f076f838df636a57c6d961053f493af41f400e23d4b73` |
| 8 | `theorem` | [tprod_eq_one_of_not_multipliable](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/tprod-eq-one-of-not-multipliable.md) | 201 | `result-track:82d8640efbec61e31d312297c2791931080d5646aa9e2b4cbefdfdfe280e33e1` |
| 9 | `theorem` | [Function.Injective.hasProd_map_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/function-injective-hasprod-map-iff.md) | 205 | `result-track:f356df22d0e5cf09777ee22d6c9715914604be52242a06c7309e541db0aea884` |
| 10 | `theorem` | [Function.Injective.hasProd_comap_iff_of_hasSupport](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/function-injective-hasprod-comap-iff-of-hassupport.md) | 210 | `result-track:db3958e048d8f4dc546493be39fab7d9b28abce024aa53c3cdad15648ab96fdd` |
| 11 | `theorem` | [Function.Injective.hasProd_comap_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/function-injective-hasprod-comap-iff.md) | 221 | `result-track:b049ea9a269ead0c3b0cf51cbc227be9cad39bf5916953a0277e056849163e3c` |
| 12 | `theorem` | [Function.Injective.hasProd_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/function-injective-hasprod-iff.md) | 231 | `result-track:ec74006b7864ac77958470e6755273b2f6fa68dc7ce48bd399d64d4d33b060d4` |
| 13 | `theorem` | [hasProd_subtype_comap_iff_of_mulSupport_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/hasprod-subtype-comap-iff-of-mulsupport-subset.md) | 237 | `result-track:189e2e46807e503a2c5cb6910bec7739130afeb4edda67092caf7bc826f3ed45` |
| 14 | `theorem` | [hasProd_subtype_iff_of_mulSupport_subset](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/hasprod-subtype-iff-of-mulsupport-subset.md) | 242 | `result-track:341e4d59ead19f3a85b287a2a98966951ae2b27651f77b8e3e07b6e95ea965c6` |
| 15 | `theorem` | [hasProd_fintype_support](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/hasprod-fintype-support.md) | 247 | `result-track:bdec3d26af82285e72997b68856314fd96426d62a13cd4e3576b36becefe0357` |
| 16 | `theorem` | [hasProd_fintype](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/hasprod-fintype.md) | 261 | `result-track:80c79d8dfc40f88671e56937fc9f42a893c25ffb24f04382d53d97552bf09652` |
| 17 | `theorem` | [Finset.hasProd_support](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/finset-hasprod-support.md) | 266 | `result-track:40ddfbbbb2d55d032e881d0cf435ffa70cd382a0c8841daeed71ef2a6c1daa4b` |
| 18 | `theorem` | [Finset.hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/finset-hasprod.md) | 275 | `result-track:ab81ed0aacba3ced15cfebc537fbb600d91b36b7f051fb33a00e3de300fbc681` |
| 19 | `theorem` | [hasProd_prod_support_of_ne_finset_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/hasprod-prod-support-of-ne-finset-one.md) | 283 | `result-track:2319fe717aa36c191ab782faad9dd4d1bf420fe29f3790bab5427c7602d312ec` |
| 20 | `theorem` | [hasProd_prod_of_ne_finset_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/hasprod-prod-of-ne-finset-one.md) | 296 | `result-track:dccd7fba81ad5866a60d83c9f251cfcd3f0e314b7d1f6dadcd3ceff3e4500bd5` |
| 21 | `theorem` | [multipliable_of_ne_finset_one](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/multipliable-of-ne-finset-one.md) | 302 | `result-track:2294339019db9291be6856e5627d086de3786b48f426120ecc5fd6ffab9a6d36` |
| 22 | `theorem` | [Multipliable.hasProd](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/multipliable-hasprod.md) | 308 | `result-track:7138c1bbd5ff8ec6c91ac85e51a5d342c18cfc4138d82a42c51f23f6bc953865` |
| 23 | `theorem` | [HasProd.unique](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/hasprod-unique.md) | 327 | `result-track:2972801a1d2288210b16f4c01f9743fda44385b21b555ead3d7c308767f3199d` |
| 24 | `theorem` | [HasProd.tprod_eq](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/hasprod-tprod-eq.md) | 332 | `result-track:3de34722c8d4f785db94717d9177cb2a6fde560d0d1a1b71c14678390b1d2317` |
| 25 | `theorem` | [Multipliable.hasProd_iff](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/multipliable-hasprod-iff.md) | 336 | `result-track:16742f044d8931975687471ea19756dc8fceb4fcb522882ca402f794036d2cf7` |
| 26 | `theorem` | [tprod_eq_of_filter_le](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/tprod-eq-of-filter-le.md) | 341 | `result-track:143d7b7bb2c040d9ac0e28341b2604f3b8847e7ba97845de1230cedb927d8a0a` |
| 27 | `theorem` | [tprod_eq_of_multipliable_unconditional](../../../../../TopologicalGroupsLieGroups/TopologicalAndDifferentiableAlgebraicSystems/InfiniteSumDefsPublic.lean/declarations/tprod-eq-of-multipliable-unconditional.md) | 346 | `result-track:683667365a2763dfd7c9e9fb5419446ef0a9390da0b35962d84c957bc42ad559` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e4e14edb90ead4ec9735b8a12add87203d5d4be1f6a55d3a718ed8239777b8bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Defs/Variantcc1db462f485d0013f9ef8d5149fd14ba207c1bedda8eaf5112eccfe1ec808ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
