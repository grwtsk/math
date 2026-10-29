# Verification target: Free Algebra Has SMul

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "adaf455b8afc87b4b6656d60d8d5a0b83ed5ea76",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `adaf455b8afc87b4b6656d60d8d5a0b83ed5ea76`.

Source path: `GRWTSK/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.FreeMonoid.UniqueProds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MonoidAlgebra.NoZeroDivisors` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Pre](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/pre.md) | 59 | `declaration-track:1d366c05e658a1de1c3e44f1f87e435d3a00f9668b77db0c131de54bb9204e1d` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instance-source-edition-6.md) | 67 | `declaration-track:d8d5b9fb2aa92016aa6d32d62e3a27ef2e45d6a79f97cb66f8de4f40b1922862` |
| 3 | `def` | [hasCoeGenerator](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/hascoegenerator.md) | 71 | `declaration-track:299d5a26bf30f670e760189b8825d24665fab97ec9478ecc982b81792775aa92` |
| 4 | `def` | [hasCoeSemiring](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/hascoesemiring.md) | 74 | `declaration-track:72bdca05b8c3d4a5b7a2f3518c4c3280b553eebea83c0d9a5ca74dc02ac4a222` |
| 5 | `def` | [hasMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/hasmul.md) | 77 | `declaration-track:ca57eee5f1cd6a7474ce17c16ec759bb64e50324540f01492eb32858cd103262` |
| 6 | `def` | [hasAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/hasadd.md) | 80 | `declaration-track:1b5be5f0b3695ff3794e0f04a846ede62b5565f3028279ecb495b54a3065e803` |
| 7 | `def` | [hasZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/haszero.md) | 83 | `declaration-track:f69a2ae32cf557febd318f8fbca0e95f7c872bb322c8d53b2a5f82dfe9a3fc4d` |
| 8 | `def` | [hasOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/hasone.md) | 86 | `declaration-track:230e2ab03ee13348a38c0835ec9bde589d7df88e99a74ac1795c54f934e4f75e` |
| 9 | `def` | [hasSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/hassmul.md) | 91 | `declaration-track:00d00a78e93d3662cc4a0a1a5860887d4b732c2e786bf2b1b391ec3deaa921aa` |
| 10 | `def` | [liftFun](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/liftfun.md) | 100 | `declaration-track:52b78bd11cbc24c71a0925b3fa2164fb425767d103a77357fbaa5cb6f0a2df97` |
| 11 | `inductive` | [Rel](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/rel.md) | 110 | `declaration-track:5d29517412a6468fc7dd4c9b283d7d9f3bf87b7d04ecd0687dd14f458d1d6268` |
| 12 | `def` | [FreeAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/freealgebra.md) | 162 | `declaration-track:1d9af4b0126c8f49324d95561151c7ae4809ab30ccc32d28433fba4e9e26b48a` |
| 13 | `instance` | [instSMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instsmul.md) | 172 | `declaration-track:ec85e33eb02904100c53050a9af8e85a9d32304671d9acc9fc68cfdf5faa24ad` |
| 14 | `instance` | [instZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instzero.md) | 175 | `declaration-track:63c8668b64d30e8588ef6ee8680a3529f964acb8f2750dd44a46661c34f703b5` |
| 15 | `instance` | [instOne](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instone.md) | 177 | `declaration-track:972604b1c9e442c02cb35e59838fb4a86ce0ffee2b889430de26c13069622a11` |
| 16 | `instance` | [instAdd](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instadd.md) | 179 | `declaration-track:e9282a71cc515478b7e5c0d895a0d388e3574e3f45395fb35c57c7bff8b306cb` |
| 17 | `instance` | [instMul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instmul.md) | 182 | `declaration-track:266ccf2d1dca080a33fa13f49ca387273bc31b743faaf9c2283c71f6d2168082` |
| 18 | `theorem` | [mk_mul](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/mk-mul.md) | 186 | `result-track:d9eed2f4b06d6fb3f818ad9b22946c3e7086a1a18d4bba61ed02c3c1494b9126` |
| 19 | `instance` | [instMonoidWithZero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instmonoidwithzero.md) | 194 | `declaration-track:f077d4e410e756a813ade723c0c4c7accfd0dea070ff0125ce55750b2e6403c5` |
| 20 | `instance` | [instDistrib](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instdistrib.md) | 212 | `declaration-track:9f54493931a750980298baae60580ae8d850a89b3a3845790224dbfe72be078b` |
| 21 | `instance` | [instAddCommMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instaddcommmonoid.md) | 220 | `declaration-track:0d34c448432e8c5121261aa935557957d020ddf84a7eb48ad4f9f852f58daa74` |
| 22 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instance-source-edition-2.md) | 247 | `declaration-track:5443c4537ea7e54c8bf9a6d4463f055882706e760020270e69151c6fdd80835e` |
| 23 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instance-source-edition-7.md) | 255 | `declaration-track:f9db1c3e6d66f7c9aa0bdc28ef96e23f1169fc219b3b65afda742f64fdbf50a3` |
| 24 | `instance` | [instAlgebra](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instalgebra.md) | 258 | `declaration-track:a3c27ceac19d51bdc277c8e818dbc6c53415d68efdd991f6ecb4254bf97407e0` |
| 25 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/example.md) | 274 | `declaration-track:68c19caadda9f05ff5a0c6b62f32abe71746928ce23b3120e79adbabfc6abf41` |
| 26 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instance-source-edition-3.md) | 276 | `declaration-track:78fa0bcdb9db93e1fbf1d2e3f2dbaace38dbd4853c7422b309e676f1f39490d6` |
| 27 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instance.md) | 286 | `declaration-track:0ce479b59954197f9b487b731d0c9aa0f28a1ce76c2a7d4fab5bbf9d3672cbc9` |
| 28 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instance-source-edition-4.md) | 290 | `declaration-track:848b2b93d4d5b6a7a1413bc72f6a96d7ce87d8e66b151ea6597e73338c9bf7a9` |
| 29 | `example` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/example-source-edition-2.md) | 296 | `declaration-track:bd261ff5a4373b69f16009d2dd4d7a63386659fee0d4eca9038569a5c6a03082` |
| 30 | `theorem` | [quot_mk_eq_ι](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/quot-mk-eq.md) | 305 | `result-track:8fa0c4c82762cf310b565ead1b2853582cb6835c3c1f775cb2a3d3e41f5ffdb4` |
| 31 | `def` | [liftAux](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/liftaux.md) | 310 | `declaration-track:82e31830924f3c92ba1396acba82ddf010f504254be93c5508cbb7d0df23fb05` |
| 32 | `def` | [lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/lift.md) | 363 | `declaration-track:1f4907cb14029894c101dd0fef619ada782248401e4231dacc1dd9f569a19fc9` |
| 33 | `theorem` | [liftAux_eq](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/liftaux-eq.md) | 394 | `result-track:b6460644d8c5d7763115ba063eda51fae165f78e8772c88f3381a9a4a5950646` |
| 34 | `theorem` | [lift_symm_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/lift-symm-apply.md) | 399 | `result-track:ba8f3b0bad654bb4391e4af535bd13360410242917393ed3090b9687cbbcbd01` |
| 35 | `theorem` | [ι_comp_lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/comp-lift.md) | 406 | `result-track:1e40c13b02619f155252307f15d8ee545f5bd0745821a4c4e0adc8979325ccb6` |
| 36 | `theorem` | [lift_ι_apply](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/lift-apply.md) | 412 | `result-track:3c98ec9688eb8733d743f1a058e53b825ca93fce281f0eab983749cd90e58f2c` |
| 37 | `theorem` | [lift_unique](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/lift-unique.md) | 417 | `result-track:5da36a16bdb954212e0ea57f7f3e481f1db75d25135524502898644def4839c7` |
| 38 | `theorem` | [lift_comp_ι](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/lift-comp.md) | 432 | `result-track:12f00285fa444032e986d15a6089fb93163e7f67bfb60d41289e18e16daaf929` |
| 39 | `theorem` | [hom_ext](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/hom-ext.md) | 439 | `result-track:3f92e5814949f285c01c78dbb376ca332e9ce32e9fca199d27e0a5702fbee434` |
| 40 | `def` | [equivMonoidAlgebraFreeMonoid](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/equivmonoidalgebrafreemonoid.md) | 449 | `declaration-track:e87eee858e52784b72bff119465630d38d27b07923529727fb11ec58598e7ab0` |
| 41 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instance-source-edition-5.md) | 466 | `declaration-track:c68662e0dca02337c784b575be72711894a7e62a7906c4b599049447718b2cad` |
| 42 | `instance` | [instNoZeroDivisors](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instnozerodivisors.md) | 470 | `declaration-track:efb62282d2bb6397588ffdd401340b08c69982bc63759169c25a75e38a12b311` |
| 43 | `instance` | [instIsDomain](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/instisdomain.md) | 474 | `declaration-track:731161995e8e7ab66eef731c80ae579deb5cd85abd7985738bc3a779a1397b1f` |
| 44 | `def` | [algebraMapInv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/algebramapinv.md) | 480 | `declaration-track:0fb2fe624e63295d54fa0a64ec9720819e16538d397ca8f0ba4b3c595f5c883c` |
| 45 | `theorem` | [algebraMap_leftInverse](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/algebramap-leftinverse.md) | 483 | `result-track:902ada132c4ae89222404cb39705dd2c3dbac6227d47f4e35c6f2813c25e33e8` |
| 46 | `theorem` | [algebraMap_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/algebramap-inj.md) | 488 | `result-track:a7a6f9564623ef4eb5322b1c144ddcdceb41fe9f93c5e67a0336d6f3d8e2fbb7` |
| 47 | `theorem` | [algebraMap_eq_zero_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/algebramap-eq-zero-iff.md) | 493 | `result-track:fdbd51cab4dc30d1829a0e146b125fdc095f2b37dd7faec0ab1ad3d81747652a` |
| 48 | `theorem` | [algebraMap_eq_one_iff](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/algebramap-eq-one-iff.md) | 497 | `result-track:37ed1268580ff38b94ca55d91f34daa37e9f4de8c9666389691fecbb4a641d28` |
| 49 | `theorem` | [ι_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/injective.md) | 501 | `result-track:1adf675dee67c9e5fe43947a814ebb630266513de3aa981470241130acf42ea0` |
| 50 | `theorem` | [ι_inj](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/inj.md) | 512 | `result-track:7388744048c2a9aadffbe73aa9df13677c2ba2d8bc1296acef036a23035e622f` |
| 51 | `theorem` | [ι_ne_algebraMap](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/ne-algebramap.md) | 516 | `result-track:1e17e613cbaf047e66550874f96bb4bf26b160d9d551bd5b088c8981d28b8a49` |
| 52 | `theorem` | [ι_ne_zero](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/ne-zero.md) | 526 | `result-track:63201efaa8fd9412255bad90a27f7f705775dbcb8b4bbd08bebbecee81c1ddbe` |
| 53 | `theorem` | [ι_ne_one](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/ne-one.md) | 530 | `result-track:0a16621f277a42c06ea3178a3c5f2fe4bc67f1cc11ffd9d1d7f85d617c1bd838` |
| 54 | `theorem` | [induction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/induction.md) | 547 | `result-track:addbdeda7434c069d64561c56df02f3a86cf53b4abc5817932d48c94d3cd969d` |
| 55 | `theorem` | [adjoin_range_ι](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/adjoin-range.md) | 571 | `result-track:1db87c09869affdf0044d32ad4498c8a8c3b6ae106383c589e2a733ee7a4fb5e` |
| 56 | `theorem` | [_root_.Algebra.adjoin_range_eq_range_freeAlgebra_lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/root-algebra-adjoin-range-eq-range-freealgebra-lift.md) | 583 | `result-track:bce9c90cf1b7e48c38abcde1880ad7cb9b13caf37f2de1ee749c6ca4a6d6bb96` |
| 57 | `theorem` | [_root_.Algebra.adjoin_eq_range_freeAlgebra_lift](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/FreeAlgebraHasSMul.lean/declarations/root-algebra-adjoin-eq-range-freealgebra-lift.md) | 589 | `result-track:e8f0f04ffded26e85b44eaf9c54d256c38d0e821ed30727205a2ff4fcd22efb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8c569c9a9495033ea317a017212e9199517bf600e99ec818244a6b8a826b5113 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean","GRWTSK/_verification/specifications/Algebra/FreeAlgebra/Variant8f900cee879c765b24c95581c29a0f90736406e37f19664547fb359d0cd9f7bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
