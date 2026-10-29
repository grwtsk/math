# Verification target: Group With Zero Non Zero Divisors

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fb917e7a9e04e44aaba72a59be01084e99420df7",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Varianteb505dde7aeb109f04ffaf3d702bddcc6bbec03b4486885669cbbe6590c7ba9b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fb917e7a9e04e44aaba72a59be01084e99420df7`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Varianteb505dde7aeb109f04ffaf3d702bddcc6bbec03b4486885669cbbe6590c7ba9b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/NonZeroDivisors/Varianteb505dde7aeb109f04ffaf3d702bddcc6bbec03b4486885669cbbe6590c7ba9b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Membership` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Associated` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Opposite` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonZeroDivisorsLeft](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerodivisorsleft.md) | 39 | `declaration-track:7af7c8085d3bef341e729639aa740044078835a7fed5468f6224e785db8da4cf` |
| 2 | `lemma` | [mem_nonZeroDivisorsLeft_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mem-nonzerodivisorsleft-iff.md) | 45 | `result-track:1da3d3555d576cca548f87cf11fd0f553c325a9939489a7b7cc7eeb5df907d6e` |
| 3 | `lemma` | [notMem_nonZeroDivisorsLeft_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/notmem-nonzerodivisorsleft-iff.md) | 47 | `result-track:95e290dfa2d2e2f06eb0566fab179a2724de9fa2f1f502f11e2fa2328b549e41` |
| 4 | `def` | [nonZeroDivisorsRight](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerodivisorsright.md) | 56 | `declaration-track:288f36322eb1d33cdfc9c9c80ddd20cfa8f120921cf83998e91aa3f2346fde86` |
| 5 | `lemma` | [mem_nonZeroDivisorsRight_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mem-nonzerodivisorsright-iff.md) | 62 | `result-track:40a27e0100dae765700aa166f0a717e04831049224c6b99bb737e2000fc74221` |
| 6 | `lemma` | [notMem_nonZeroDivisorsRight_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/notmem-nonzerodivisorsright-iff.md) | 64 | `result-track:46f33658a06a001b16a3517270cc6131bb022de2c8de3ff601786961688e72d7` |
| 7 | `lemma` | [nonZeroDivisorsLeft_eq_right](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerodivisorsleft-eq-right.md) | 71 | `result-track:3730256e821534235973cdb3e24a2c519c87aaac23f2d2e9472f3b307e0bb73c` |
| 8 | `lemma` | [coe_nonZeroDivisorsLeft_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/coe-nonzerodivisorsleft-eq.md) | 75 | `result-track:afe35ef1a16be327df6f5eadc954bbf1e2e447cf3efe7d4a987029ecc5cbc41b` |
| 9 | `lemma` | [coe_nonZeroDivisorsRight_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/coe-nonzerodivisorsright-eq.md) | 84 | `result-track:9f2aea163124b8d1b6f387e398a00058a139d91054aabe600c53269b83c06527` |
| 10 | `def` | [nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerodivisors.md) | 95 | `declaration-track:5446e48c02b9d6df8d8b07609aea4d34719bec53c159e73d7a4b1bf7b9e26425` |
| 11 | `def` | [nonZeroSMulDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerosmuldivisors.md) | 109 | `declaration-track:b911844e4d57492a538049a380e06e2d6f39fbe6728d090d3eae515622630081` |
| 12 | `lemma` | [nonZeroDivisorsLeft_eq_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerodivisorsleft-eq-nonzerodivisors.md) | 124 | `result-track:33f82a162f2ef34a62a4bb63e109f27aae60e5be5e2bf214b4ea036c4b4f9adf` |
| 13 | `lemma` | [nonZeroDivisorsRight_eq_nonZeroSMulDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerodivisorsright-eq-nonzerosmuldivisors.md) | 126 | `result-track:10077f3593b9392df880be77dd285fd75e7954e2f310096164de94a14181d192` |
| 14 | `theorem` | [mem_nonZeroDivisors_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mem-nonzerodivisors-iff.md) | 129 | `result-track:a6b340f46ee2f81a6357f01f21e60a16814bca8ea8b63b23a4c3d9adb1f4d14b` |
| 15 | `lemma` | [notMem_nonZeroDivisors_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/notmem-nonzerodivisors-iff.md) | 131 | `result-track:5538b2b7844585c7efe8f9be2ab9681a04f9f831d60bb85cef4df171f4cf67bd` |
| 16 | `theorem` | [mul_right_mem_nonZeroDivisors_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mul-right-mem-nonzerodivisors-eq-zero-iff.md) | 136 | `result-track:e3828b666580f25da51bfd44bf9d82b6611bc73d4f1d60e321c67ed9d1981d84` |
| 17 | `theorem` | [mul_right_coe_nonZeroDivisors_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mul-right-coe-nonzerodivisors-eq-zero-iff.md) | 140 | `result-track:45ce1dacb076bc0a2252e15ff65cc0a4f227dea6e6bb6c17f959b9117c2457af` |
| 18 | `lemma` | [IsUnit.mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/isunit-mem-nonzerodivisors.md) | 143 | `result-track:9031b4e787adf2147aac72a8d4ca139f2288358f71431a243fa93a7a893cc46f` |
| 19 | `theorem` | [zero_notMem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/zero-notmem-nonzerodivisors.md) | 148 | `result-track:793cdbdb2ede94628b0a3534ffb3ec6f2888647d922a521b53ba6a1b600b95ae` |
| 20 | `theorem` | [nonZeroDivisors.ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerodivisors-ne-zero.md) | 153 | `result-track:27e7f6c899fce3982aae874c6ffbe55c09e0e3fc80540bc21831ad2827bdb6a6` |
| 21 | `theorem` | [nonZeroDivisors.coe_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerodivisors-coe-ne-zero.md) | 157 | `result-track:a46c9a15d561be6438d03cd7a8712eecca97a91e1ad4a2f08ad4c18cd711f842` |
| 22 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/instance.md) | 159 | `declaration-track:5689274bccf7f6032dcf36a9a4bb07a349f4dfa49207e832849c63fdaa67f9e1` |
| 23 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/instance-source-edition-2.md) | 165 | `declaration-track:a360e60eaad40369a2e1008aaf08296cfa208c665c99c448be6b9b26a5dcfe28` |
| 24 | `theorem` | [eq_zero_of_ne_zero_of_mul_right_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/eq-zero-of-ne-zero-of-mul-right-eq-zero.md) | 176 | `result-track:ec0994e371d4bdefe5acfdf72e2d4e78be274425b4f0d5d0d1af5a4d2b0eb789` |
| 25 | `theorem` | [eq_zero_of_ne_zero_of_mul_left_eq_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/eq-zero-of-ne-zero-of-mul-left-eq-zero.md) | 179 | `result-track:c8b666d8da6bddc4335e9d455ba971b23c5901324758a1e8e7f1d3def22f46df` |
| 26 | `theorem` | [mem_nonZeroDivisors_of_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mem-nonzerodivisors-of-ne-zero.md) | 182 | `result-track:527f5054d671a2196e1b3dffbc1b8e17bae02c19df55756219714bb1307b0fc3` |
| 27 | `lemma` | [mem_nonZeroDivisors_iff_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mem-nonzerodivisors-iff-ne-zero.md) | 185 | `result-track:c96a1a29add44c60d0c5dbf25225889d0f338d05adb209701f50b28b051a0657` |
| 28 | `theorem` | [le_nonZeroDivisors_of_noZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/le-nonzerodivisors-of-nozerodivisors.md) | 188 | `result-track:5f40e0bef8c6d065be75758933c2f218b8e9f9d2d0bc867dd5c67442aaef1f11` |
| 29 | `theorem` | [powers_le_nonZeroDivisors_of_noZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/powers-le-nonzerodivisors-of-nozerodivisors.md) | 192 | `result-track:080403ed3fef6e3be6b3f38aabf6d00335f7fa65a7abdf31e1301f882504a341` |
| 30 | `theorem` | [map_ne_zero_of_mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/map-ne-zero-of-mem-nonzerodivisors.md) | 199 | `result-track:700b319881be46ade0621d73cb93e7d3cd1808e5b1f0c50f5bda85c4bf60fb2c` |
| 31 | `theorem` | [map_mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/map-mem-nonzerodivisors.md) | 203 | `result-track:d9fdf7581413349c6b99688c9f82449884636c207570912b1d0f5f42cc940ce3` |
| 32 | `theorem` | [MulEquivClass.map_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mulequivclass-map-nonzerodivisors.md) | 207 | `result-track:884956dfc1521d55de1671d3f5b0d1aac78b0a6f56e4d01a26247969974709a2` |
| 33 | `theorem` | [map_le_nonZeroDivisors_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/map-le-nonzerodivisors-of-injective.md) | 217 | `result-track:35d49358c8f58c01c2f3d7277643d759e4836ebd4dac8e15f7f7fdbb700097c7` |
| 34 | `theorem` | [nonZeroDivisors_le_comap_nonZeroDivisors_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerodivisors-le-comap-nonzerodivisors-of-injective.md) | 225 | `result-track:3a09cbae39254c4790af58a6a587dffc70c6bdddedbde4dce6cc8c589d2f2020` |
| 35 | `theorem` | [mem_nonZeroDivisors_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mem-nonzerodivisors-of-injective.md) | 231 | `result-track:be8015a642008d9542cdf8ff02565244027741dd9245d406000b25c2b89e1200` |
| 36 | `theorem` | [comap_nonZeroDivisors_le_of_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/comap-nonzerodivisors-le-of-injective.md) | 238 | `result-track:7ae27501944a8a146fa9dccae16795a1101429470c2d69d8c38bf4313ef0df11` |
| 37 | `lemma` | [mul_left_mem_nonZeroDivisors_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mul-left-mem-nonzerodivisors-eq-zero-iff.md) | 250 | `result-track:3cb5cdb5857e3180235b86aa782f6560a1c0c7268381a4f4eb8e8921109b350d` |
| 38 | `lemma` | [mul_left_coe_nonZeroDivisors_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mul-left-coe-nonzerodivisors-eq-zero-iff.md) | 254 | `result-track:2a58674fb121a8c703a292e0e06fbaa8fda86f641c55cbf302b857ec48bc3050` |
| 39 | `lemma` | [mul_mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mul-mem-nonzerodivisors.md) | 257 | `result-track:023a40b9a94097b2c6a1aa861d5c5baf3fbcebdf69aea23c805f77bb90ef83a9` |
| 40 | `theorem` | [nonZeroDivisors_dvd_iff_dvd_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerodivisors-dvd-iff-dvd-coe.md) | 268 | `result-track:877e39144a101a1f13d5cb7fa7f3989dd254dc2716bf28cc8e62579c0fec1755` |
| 41 | `def` | [nonZeroDivisorsEquivUnits](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerodivisorsequivunits.md) | 281 | `declaration-track:4f66bce5d760e4caec71bf530dd10ca1edba880c0e8b71994bb2537602f2f398` |
| 42 | `lemma` | [isUnit_of_mem_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/isunit-of-mem-nonzerodivisors.md) | 288 | `result-track:536bfcba5451feda58d7ec105dbc0f51bd98728afa4c96702c9cdf24a9ed2833` |
| 43 | `lemma` | [mem_nonZeroSMulDivisors_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mem-nonzerosmuldivisors-iff.md) | 299 | `result-track:f477177faa28ef78590aab26a90d42a75757614b29c878dc89db7c8f794c9b10` |
| 44 | `lemma` | [unop_nonZeroSMulDivisors_mulOpposite_eq_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/unop-nonzerosmuldivisors-mulopposite-eq-nonzerodivisors.md) | 304 | `result-track:c2c64b310ad820f37b0e7975377a48b0b8d669360cb43c2d5ebb2318058cef9c` |
| 45 | `lemma` | [nonZeroSMulDivisors_mulOpposite_eq_op_nonZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerosmuldivisors-mulopposite-eq-op-nonzerodivisors.md) | 310 | `result-track:3e307b9ec2c7efab90019988138b2a64c44acd669339bf26fffa44289c451c4f` |
| 46 | `def` | [unitsNonZeroDivisorsEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/unitsnonzerodivisorsequiv.md) | 324 | `declaration-track:d933dd07827c2225c94832f2cfb2c2e42e8bb18fc8d26d5431b4f01b94dcd86a` |
| 47 | `lemma` | [nonZeroDivisors.associated_coe](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/nonzerodivisors-associated-coe.md) | 331 | `result-track:7c45775b75b3f70c5758037aae8bd6a6eb8a973cacf8822f77a903d2c537a837` |
| 48 | `theorem` | [mk_mem_nonZeroDivisors_associates](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/mk-mem-nonzerodivisors-associates.md) | 339 | `result-track:4ecbf3d3bb46c11e3a68e7320ba82818344ee4b62696a5d48258d292fb6314df` |
| 49 | `def` | [associatesNonZeroDivisorsEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/associatesnonzerodivisorsequiv.md) | 352 | `declaration-track:2e77aa169c33f4442eb8b7e6529bbf534ce6055ce4b94c8b573c9988ba42f1ce` |
| 50 | `lemma` | [associatesNonZeroDivisorsEquiv_mk_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/associatesnonzerodivisorsequiv-mk-mk.md) | 360 | `result-track:7fc703b35bdef153f2184732545a344d96946700d258789e14d1bcc352b9d4ef` |
| 51 | `lemma` | [associatesNonZeroDivisorsEquiv_symm_mk_mk](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupWithZeroNonZeroDivisors.lean/declarations/associatesnonzerodivisorsequiv-symm-mk-mk.md) | 364 | `result-track:15d9bd68f3c6c4c74458f16bc9e1f10b841b2f18a2dc799ef99a6db8a35db24f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d7a691de6f26b5a865739fa7fbccfc3201e9d160b4ca919ef31f40397942ea79 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/NonZeroDivisors/Varianteb505dde7aeb109f04ffaf3d702bddcc6bbec03b4486885669cbbe6590c7ba9b.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/NonZeroDivisors/Varianteb505dde7aeb109f04ffaf3d702bddcc6bbec03b4486885669cbbe6590c7ba9b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
