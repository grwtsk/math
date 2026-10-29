# Verification target: Projective Spectrum Topology Namespaced Mem Compl Zero Locus Iff Not Mem

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c5bd796ce180f7caefff707bf64fc1b7990a4c89",
  "lexical_observation_count": 70,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Topology/Variante2fea397e64c7130952dd242a811e80bb1ded4eecbff7e45aad119ef9c583219.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/index.md) · [Full source](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c5bd796ce180f7caefff707bf64fc1b7990a4c89`.

Source path: `GRWTSK/Topology/GeneralTopology/Topology/Variante2fea397e64c7130952dd242a811e80bb1ded4eecbff7e45aad119ef9c583219.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Topology/Variante2fea397e64c7130952dd242a811e80bb1ded4eecbff7e45aad119ef9c583219.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.GradedAlgebra.Homogeneous.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Opens` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectiveSpectrum](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/projectivespectrum.md) | 58 | `declaration-track:72ae8e7b0d7360115f5e2a9515c675aeb2ddfaca693e1be1085b54d6025a5b02` |
| 2 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/instance-source-edition-2.md) | 67 | `declaration-track:d91ddb295b1df47539c7b7d6bb367a15cd20129b7db28874f198708a9d9656fe` |
| 3 | `def` | [zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus.md) | 76 | `declaration-track:4ededb4b0c985f762939f5e4a57121a99bc9ec81d88a158b0f7782a9f02d13d7` |
| 4 | `theorem` | [mem_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/mem-zerolocus.md) | 80 | `result-track:2d889f814cf86967c880813d353239d36c673a01ab1b2d0e22ba06f59665047a` |
| 5 | `theorem` | [zeroLocus_span](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-span.md) | 85 | `result-track:91a122e72789398f3d92056f5ccf6652a0f45dd5f8c2660d869fc6ac15e7396a` |
| 6 | `def` | [vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/vanishingideal.md) | 98 | `declaration-track:07cd3bafeef80a18003251c5b2f2c720b443479d06c6b1ce251a319b91a6c477` |
| 7 | `theorem` | [coe_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/coe-vanishingideal.md) | 101 | `result-track:c2084bbef705b03fa1f36384efb5eafffc25d6b7424ecc01848e6477288761a8` |
| 8 | `theorem` | [mem_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/mem-vanishingideal.md) | 110 | `result-track:f1d57e9043ccdec4210ae46436611e46b40d34fd2829eab0775615b0cea7e19b` |
| 9 | `theorem` | [vanishingIdeal_singleton](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/vanishingideal-singleton.md) | 115 | `result-track:fd44d4a49ce8f13b0cd0e7a90e75f6a9ac53a35050a3494bcdf4224a07e1d893` |
| 10 | `theorem` | [subset_zeroLocus_iff_le_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/subset-zerolocus-iff-le-vanishingideal.md) | 119 | `result-track:699b85fb9b68ee10644cadcaaf67382b5ea37fd173be6a01ecbcefb36b67cbee` |
| 11 | `theorem` | [gc_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/gc-ideal.md) | 128 | `result-track:0072e3e51faf0c5206d8fde32166a006d81ffc3c22799200ef4ca8319d3fe0b2` |
| 12 | `theorem` | [gc_set](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/gc-set.md) | 134 | `result-track:f15b663b945bc9df9afc31b2519d1e3d6d87c411011cc363a3d37fa56c527dee` |
| 13 | `theorem` | [gc_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/gc-homogeneousideal.md) | 140 | `result-track:bf1779c544d6379a66291b9efc47f30d021b43a472a0545d5cd54a0eb8304064` |
| 14 | `theorem` | [subset_zeroLocus_iff_subset_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/subset-zerolocus-iff-subset-vanishingideal.md) | 147 | `result-track:dcb771998ef70d65bf239af1059597ce55462e0ddedda70e95598971c8fdd4e2` |
| 15 | `theorem` | [subset_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/subset-vanishingideal-zerolocus.md) | 151 | `result-track:ef11800bfecb46d3f62dc08b9ea5a56fe7b6a620a5db7ed007f241a7982c8d1c` |
| 16 | `theorem` | [ideal_le_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/ideal-le-vanishingideal-zerolocus.md) | 154 | `result-track:c7664bc15d19cf08717a897e1ef5af7a3d3d219da9899ae8125c0423fa0f9d8d` |
| 17 | `theorem` | [homogeneousIdeal_le_vanishingIdeal_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/homogeneousideal-le-vanishingideal-zerolocus.md) | 158 | `result-track:61831b6d29b4c6b9db1b666f3d1718b886565695d823187ecca97dcc5f2ee421` |
| 18 | `theorem` | [subset_zeroLocus_vanishingIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/subset-zerolocus-vanishingideal.md) | 162 | `result-track:0c3d25d2933d00cee7a97a31b16cc4186fa7fabaa2532506fb9dfda63062ca14` |
| 19 | `theorem` | [zeroLocus_anti_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-anti-mono.md) | 166 | `result-track:ff6f25c879fd670d2e009e2420c205eaebd1f5912a8458e129f8e2a9a1cfcacf` |
| 20 | `theorem` | [zeroLocus_anti_mono_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-anti-mono-ideal.md) | 169 | `result-track:aefbf506f16f73371e3cdf8711ecddf6198a869c3c89611e9f11478ad91757aa` |
| 21 | `theorem` | [zeroLocus_anti_mono_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-anti-mono-homogeneousideal.md) | 173 | `result-track:24d7fb0384b8b120869c17d617580aa29c1c9afa30dcf1798a4b259b058e3fbd` |
| 22 | `theorem` | [vanishingIdeal_anti_mono](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/vanishingideal-anti-mono.md) | 177 | `result-track:e94b64cf8cd0a63fcee4b5e7aaa245ac99fc573e063c9c536bf05238e692bef2` |
| 23 | `theorem` | [zeroLocus_bot](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-bot.md) | 181 | `result-track:2e921245cace90723ecaca9e2d3eb122a8681958c0818088ef4311e44136d4ad` |
| 24 | `theorem` | [zeroLocus_singleton_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-singleton-zero.md) | 185 | `result-track:4657b6a828bc24f34e845cece2cfd01117f4e07b4f13cbb859bf495bb3a0bef3` |
| 25 | `theorem` | [zeroLocus_empty](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-empty.md) | 189 | `result-track:18369e561d5e43245220323315e5161f7e540ae510651ace07fbaad7d635bd79` |
| 26 | `theorem` | [vanishingIdeal_univ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/vanishingideal-univ.md) | 193 | `result-track:d2d45de17093339b85ccad05da768fcd49d2ba95d18deea24b1b390fa8f3b65e` |
| 27 | `theorem` | [zeroLocus_empty_of_one_mem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-empty-of-one-mem.md) | 196 | `result-track:2fc830eded06cd2acfbbd3ffa241e75e9baba6d0aa81ecbd0cdf5486c27182ec` |
| 28 | `theorem` | [zeroLocus_singleton_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-singleton-one.md) | 202 | `result-track:91668c1fa6de396a503897fdb14a40d0eb43478019bb0f4ef17692697d7ebb69` |
| 29 | `theorem` | [zeroLocus_univ](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-univ.md) | 206 | `result-track:7df6fd4fbd3a668c648e4d17ea44cc4177d92ea2839dbadf77b89fa6ed591ccd` |
| 30 | `theorem` | [zeroLocus_sup_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-sup-ideal.md) | 209 | `result-track:cdb3e63d197448f7221291495cf25773f402f3857a552ac582e0f7b03d0c15bc` |
| 31 | `theorem` | [zeroLocus_sup_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-sup-homogeneousideal.md) | 213 | `result-track:5f9b4807eabb31a5910b030767e21933acb110ef976c2e08270d66c1f3a04ec6` |
| 32 | `theorem` | [zeroLocus_union](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-union.md) | 217 | `result-track:a6a424dbc3d37b88453b542a2338b77c9ca2b3ecc114e00c09f1f33bcf98a2c2` |
| 33 | `theorem` | [vanishingIdeal_union](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/vanishingideal-union.md) | 220 | `result-track:137dc6dbcd9a73c7e1f72ba5346ae55cb9450f7b9c2966e50427e63871cabc1e` |
| 34 | `theorem` | [zeroLocus_iSup_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-isup-ideal.md) | 224 | `result-track:f6dfe3196b6d5a8da82db579f08ed0ce0d471db92ebad2a15899b816475a17bf` |
| 35 | `theorem` | [zeroLocus_iSup_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-isup-homogeneousideal.md) | 228 | `result-track:b69020c088c5a96642080131d939e5b1e8d198abe725256b1b0ea23efc8164da` |
| 36 | `theorem` | [zeroLocus_iUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-iunion.md) | 232 | `result-track:6c9c7880dbfa895029809fb410be5fc5c7428461b989a829ecbff578d7298836` |
| 37 | `theorem` | [zeroLocus_bUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-bunion.md) | 236 | `result-track:0b8e5a7bc88c0e3464431ad878cf92cac2c1dedf17552f78d13c40e4e46202e7` |
| 38 | `theorem` | [vanishingIdeal_iUnion](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/vanishingideal-iunion.md) | 240 | `result-track:ac67fd57057d777aacd504a8b6fd752125d249f08379502963821e7cd7b0ea99` |
| 39 | `theorem` | [zeroLocus_inf](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-inf.md) | 245 | `result-track:665970f1bb71180c946dc355874a00a4364ba3d2c1cccc06e4b9e3f44411dffc` |
| 40 | `theorem` | [union_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/union-zerolocus.md) | 249 | `result-track:0eca6e89b396dae834257f5ce52b0529b84e79458158dd0c433e5ac03e29d562` |
| 41 | `theorem` | [zeroLocus_mul_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-mul-ideal.md) | 254 | `result-track:5a4162e72f820eb5420db5cf46330f02f7919a46b6fb1acd5b7bd0bd4c23a3cd` |
| 42 | `theorem` | [zeroLocus_mul_homogeneousIdeal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-mul-homogeneousideal.md) | 258 | `result-track:fa10eb5be4676bb89c90c5c24db37e04f1a236b64958ab6bd77d4fae3d71e18f` |
| 43 | `theorem` | [zeroLocus_singleton_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-singleton-mul.md) | 262 | `result-track:049919ea7f21a7a9586e34a13784e57c088338681323f054a5bcdfb9e90656e2` |
| 44 | `theorem` | [zeroLocus_singleton_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-singleton-pow.md) | 267 | `result-track:6ba9f9becb45b378ccda63747455bdb8f1c84dcc34148d81d5055bbdf6f9bc65` |
| 45 | `theorem` | [sup_vanishingIdeal_le](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/sup-vanishingideal-le.md) | 271 | `result-track:60dabcf101347f9808c2a5e11aebb835327ddd949c1bb64097e7db3db0bef3d4` |
| 46 | `theorem` | [mem_compl_zeroLocus_iff_notMem](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/mem-compl-zerolocus-iff-notmem.md) | 280 | `result-track:227c9b785e5c24513c20720524e01205a2ed791bca6b6074b01946b21fcd6a0c` |
| 47 | `instance` | [zariskiTopology](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zariskitopology.md) | 289 | `declaration-track:53387c5025b4c3dac0f34e83f5fc39c6ea8a3730234c0f4d028c88d2575d49c3` |
| 48 | `def` | [top](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/top.md) | 305 | `declaration-track:c306ecae6e3d5dd95c14f067186802b227d0e09baf8e9585bc378041e806aa6e` |
| 49 | `theorem` | [isOpen_iff](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/isopen-iff.md) | 308 | `result-track:18c9e357515c496ee4dbec3b10f282e19c7809401f1002b39393980ca903414d` |
| 50 | `theorem` | [isClosed_iff_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/isclosed-iff-zerolocus.md) | 311 | `result-track:b67ca5fa3713161b2b5c3cb5a74a0abe80135d4a5daf75dac42e7306fbe00672` |
| 51 | `theorem` | [isClosed_zeroLocus](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/isclosed-zerolocus.md) | 314 | `result-track:a4e18d78248e86926623726f18a77997b5697290f4da3ff80e706af78d74fb9f` |
| 52 | `theorem` | [zeroLocus_vanishingIdeal_eq_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/zerolocus-vanishingideal-eq-closure.md) | 318 | `result-track:8583115dbee510170b90cf39251f4e3cd26ee1fe9f50dfc21c75ab66da038dba` |
| 53 | `theorem` | [vanishingIdeal_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/vanishingideal-closure.md) | 328 | `result-track:8c13b3b85334f0e7ade4086336d2004ac1a0ace723519ba128dcc71e7292de8d` |
| 54 | `def` | [basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/basicopen.md) | 338 | `declaration-track:13e0703a6af355dc05fd93e5a21e77a3881908604ac57ca767359bcc652fdc32` |
| 55 | `theorem` | [mem_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/mem-basicopen.md) | 343 | `result-track:af108fe58896348e3326b8b08eca6b5686db98090b0f23e92fd23650ac126ac2` |
| 56 | `theorem` | [mem_coe_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/mem-coe-basicopen.md) | 347 | `result-track:b147921dbbc610379b2d48ebb7f56ea9f1fd7e5adce33aae263e1d8550024a34` |
| 57 | `theorem` | [isOpen_basicOpen](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/isopen-basicopen.md) | 351 | `result-track:43f5613c1ba5f17957e05e5bd2ff2ae2dd1ac972a98d2654a70d7209a5e8e3af` |
| 58 | `theorem` | [basicOpen_eq_zeroLocus_compl](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/basicopen-eq-zerolocus-compl.md) | 355 | `result-track:28f9ed0bd676ee00a52338b05770b6965312c0827ff51a1dabacd2ea312e89c9` |
| 59 | `theorem` | [basicOpen_one](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/basicopen-one.md) | 360 | `result-track:a243a0e8910a12df96309c8bd4eadf484730a317c96acd11af7effb3609a991c` |
| 60 | `theorem` | [basicOpen_zero](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/basicopen-zero.md) | 364 | `result-track:8e895db0ebf74dfa8bd9a58c08026d1d41bef743e49a22b9c881eeff7abda825` |
| 61 | `theorem` | [basicOpen_mul](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/basicopen-mul.md) | 367 | `result-track:cfe32b8a709da6c03257cd64b166320c5f4be73b3270926b086d83eea716263b` |
| 62 | `theorem` | [basicOpen_mul_le_left](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/basicopen-mul-le-left.md) | 370 | `result-track:9ce7433e6d761d72af04752b7403cbf2d278dff4ecb1fedd5e9d24eb11c1da95` |
| 63 | `theorem` | [basicOpen_mul_le_right](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/basicopen-mul-le-right.md) | 374 | `result-track:da1a8680f18f7f295451c5a82dee2383cd55829e08ac00373c43ca00baf3d309` |
| 64 | `theorem` | [basicOpen_pow](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/basicopen-pow.md) | 379 | `result-track:c19892659e6a6a0f8870a39538f7e807a238fa66170f28ac66ef2ec4ed71bd66` |
| 65 | `theorem` | [basicOpen_eq_union_of_projection](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/basicopen-eq-union-of-projection.md) | 382 | `result-track:b84555493e81bbc57d4ac7733bf5f389f367a65d6f338785e648b8b28b031a86` |
| 66 | `theorem` | [isTopologicalBasis_basic_opens](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/istopologicalbasis-basic-opens.md) | 397 | `result-track:7281855ed24640f74f985919b4f66ec733c2cfeb01fb0ca74432cdbc790e5c60` |
| 67 | `instance` | [(anonymous)](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/instance.md) | 422 | `declaration-track:8b64aa4e7277d743695641a307d88cb27c58edd2e73d27223cdfbba29f69d2e1` |
| 68 | `theorem` | [as_ideal_le_as_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/as-ideal-le-as-ideal.md) | 426 | `result-track:e7e8253ffb90a3aa30816b951d48d1a83081374f8ce8da54fb080d2a101bb677` |
| 69 | `theorem` | [as_ideal_lt_as_ideal](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/as-ideal-lt-as-ideal.md) | 431 | `result-track:a1bbbef5c845e2dfe77beeebb90697cb0fc5378ff319d0a5658ab6d416f56389` |
| 70 | `theorem` | [le_iff_mem_closure](../../../../../AlgebraicGeometry/FoundationsOfAlgebraicGeometry/ProjectiveSpectrumTopologyNamespacedMemComplZeroLocusIffNotMem.lean/declarations/le-iff-mem-closure.md) | 435 | `result-track:3fca1764d089050299ae9041f4cd1d9cefaf4e3a06978f6ac4af61697f25cce7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=881beb9ba00eaed1e95d3e4c677bd0a498b98cf243cafdaaa3b3b4609f1d213c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/Topology/Variante2fea397e64c7130952dd242a811e80bb1ded4eecbff7e45aad119ef9c583219.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/Topology/Variante2fea397e64c7130952dd242a811e80bb1ded4eecbff7e45aad119ef9c583219.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
