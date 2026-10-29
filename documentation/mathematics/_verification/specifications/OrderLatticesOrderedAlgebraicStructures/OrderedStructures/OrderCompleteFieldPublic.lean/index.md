# Verification target: Order Complete Field Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "77c95c9035a7f67c707a0138c86d3784484534bd",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantd638b399121bdd361022a75189a611197f393895391ab33e4ea4edba0c91c3ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `77c95c9035a7f67c707a0138c86d3784484534bd`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantd638b399121bdd361022a75189a611197f393895391ab33e4ea4edba0c91c3ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/CompleteField/Variantd638b399121bdd361022a75189a611197f393895391ab33e4ea4edba0c91c3ae.lean.json)

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
| 1 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/instance.md) | 56 | `declaration-track:a6383211850534fb523947c2881a63ef388c75c169d35975855ae68981e3505d` |
| 2 | `def` | [cutMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/cutmap.md) | 86 | `declaration-track:810c07ca9c60c4f7547aeb73b011e7fb102eae823808946ce0397070c4e3bddf` |
| 3 | `theorem` | [cutMap_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/cutmap-mono.md) | 89 | `result-track:d55bc4444dbc24d74e4c82027b6b2f1a74530a6ddbea955202356ebd7293d346` |
| 4 | `theorem` | [mem_cutMap_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/mem-cutmap-iff.md) | 94 | `result-track:20909643c5477fa67e2f3d4a1fdc0c43079d88be88cb30821e100d79fab90117` |
| 5 | `theorem` | [coe_mem_cutMap_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/coe-mem-cutmap-iff.md) | 96 | `result-track:a7902599f38ec746df0bb07764cbd3d395a70985143ea3b52a8b99c0003bfbff` |
| 6 | `theorem` | [cutMap_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/cutmap-self.md) | 99 | `result-track:7e345cf89ed7985c18181cf6033dfdb4f2aad66b064cc869d2a2f23a81f726c1` |
| 7 | `theorem` | [cutMap_coe](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/cutmap-coe.md) | 107 | `result-track:01a84e0836a4456295221e90c729f9fcefde98a9e2b5ed5cffa0b475a1b883b9` |
| 8 | `theorem` | [cutMap_nonempty](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/cutmap-nonempty.md) | 113 | `result-track:735ec14cb7e2cc4a56973f0427551ade3dc6b4a11908c4945731c19fbd64538c` |
| 9 | `theorem` | [cutMap_bddAbove](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/cutmap-bddabove.md) | 116 | `result-track:2df291ac583c610a547865352e97f9423327d419ff8afc51c1abf4e095fd128d` |
| 10 | `theorem` | [cutMap_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/cutmap-add.md) | 120 | `result-track:198ea1757db29fc3b07dc381f318e8c5534c60357236d00a478650d4ef771c0e` |
| 11 | `def` | [inducedMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedmap.md) | 158 | `declaration-track:0ed0ca76721fd8fc8c897d57d46a8432d86eba66f5f227bed4ca9e179b192a7d` |
| 12 | `theorem` | [inducedMap_mono](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedmap-mono.md) | 163 | `result-track:1bb44ddd1bdde5ac50e4c2a0e31fe08c07376542101d5ae2cdf06c1127286a0f` |
| 13 | `theorem` | [inducedMap_rat](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedmap-rat.md) | 166 | `result-track:ac74f5c1ae489431ac461fce38e907e0ac69aa44f6c1cf7d3dd385adf8bfce27` |
| 14 | `theorem` | [inducedMap_zero](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedmap-zero.md) | 177 | `result-track:1cdad15791b5f65cd2242825f2970df227df308dc673875574844f15cdf31f42` |
| 15 | `theorem` | [inducedMap_one](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedmap-one.md) | 180 | `result-track:c9cb09df29a881be07c325a8d3d666fa8f463a93ed866d48c41c834c6b208df6` |
| 16 | `theorem` | [inducedMap_nonneg](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedmap-nonneg.md) | 184 | `result-track:6be15cd4cc93e910df8b8bc8f9f5d1c3f9662404d38b5804deb008e3dd62453a` |
| 17 | `theorem` | [coe_lt_inducedMap_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/coe-lt-inducedmap-iff.md) | 187 | `result-track:52e50b7c3616fcc8aba4a691b767d059d773f146c9be15e467c6b1c7a9f93584` |
| 18 | `theorem` | [lt_inducedMap_iff](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/lt-inducedmap-iff.md) | 195 | `result-track:ba903f49eef195c51b3961735dfc276303eff4fad5a128e6443d83628b70f04c` |
| 19 | `theorem` | [inducedMap_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedmap-self.md) | 200 | `result-track:2720e8e130c0104f8c8883a177aa70d40889ecfa4dc1ecfa93b1db4b8b4c69df` |
| 20 | `theorem` | [inducedMap_inducedMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedmap-inducedmap.md) | 206 | `result-track:da9e53cb766ca3813326402ac632b65887dc64145704d96162699f3d6ba17431` |
| 21 | `theorem` | [inducedMap_inv_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedmap-inv-self.md) | 210 | `result-track:6a0151b76450c124d42417b7194da17ed13a5e7652d21a687ae0ff201c010b39` |
| 22 | `theorem` | [inducedMap_add](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedmap-add.md) | 213 | `result-track:bc35589bd1a10a8c3fcf9b0268db44a4e94406975d8bfba31cab6726fed96661` |
| 23 | `theorem` | [le_inducedMap_mul_self_of_mem_cutMap](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/le-inducedmap-mul-self-of-mem-cutmap.md) | 222 | `result-track:57cb0eae63ab91045d58d9e2b81596b624353fa6a4b814fcc13ecdf9d97cfce9` |
| 24 | `theorem` | [exists_mem_cutMap_mul_self_of_lt_inducedMap_mul_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/exists-mem-cutmap-mul-self-of-lt-inducedmap-mul-self.md) | 234 | `result-track:4317349bf671bf3f28a11f18f4d8e50ebb986421c18209ef62358424b58aa422` |
| 25 | `def` | [inducedAddHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedaddhom.md) | 252 | `declaration-track:e0913eb4fa6bb670cebfdf470af686a1a6420e9e096260ce68b4a4b3b12501bf` |
| 26 | `def` | [inducedOrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedorderringhom.md) | 257 | `declaration-track:0e5bdc5613ae2cdc8f84e73bcc346c19d3afaf80d0fc53d87039d7b4856a72d8` |
| 27 | `def` | [inducedOrderRingIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedorderringiso.md) | 277 | `declaration-track:e3d1bbbcd37e9a7e3a70e4ce54aa51db9316628f0e59aa3694a126b907a94879` |
| 28 | `theorem` | [coe_inducedOrderRingIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/coe-inducedorderringiso.md) | 291 | `result-track:336545a37675aac60cca06ab05163dd57976ae3bc7098080a19e6cb300190b3d` |
| 29 | `theorem` | [inducedOrderRingIso_symm](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedorderringiso-symm.md) | 294 | `result-track:49eab945feb970cb903cae74ea178bc2ae3187b74e3d4f52ddba6567e44634a3` |
| 30 | `theorem` | [inducedOrderRingIso_self](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/inducedorderringiso-self.md) | 297 | `result-track:4835c8c4d80f9fd7cf47ecae4d3940712ab98a33be5cdf6a25f35ba7f5f1bce1` |
| 31 | `instance` | [uniqueOrderRingHom](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/uniqueorderringhom.md) | 304 | `declaration-track:c368fafb63919b83bf19c2a7555fa570b0ede7a197bbbad03e911564b7116700` |
| 32 | `instance` | [uniqueOrderRingIso](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedStructures/OrderCompleteFieldPublic.lean/declarations/uniqueorderringiso.md) | 309 | `declaration-track:e83c6985149327d28faacb2282b1ce4c273453b888ac4cbcfc28dd13a4513bf5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=52cfca37dfd6ec06d6c58dc9a72e2270ce75bbc2890493dadd6e7de2fcf02d6d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/CompleteField/Variantd638b399121bdd361022a75189a611197f393895391ab33e4ea4edba0c91c3ae.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/CompleteField/Variantd638b399121bdd361022a75189a611197f393895391ab33e4ea4edba0c91c3ae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
