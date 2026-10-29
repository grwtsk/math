# Verification target: Power Series Inverse

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5fd9af5cb646d5f4155f68d5d6ba3e15a2b21745",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Inverse/Variant5025fa48edfd3f7a0fe9ee89b06beff0fa2021fc90bfb87d7debeb8b884f1b4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/index.md) · [Full source](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5fd9af5cb646d5f4155f68d5d6ba3e15a2b21745`.

Source path: `GRWTSK/Algebra/Inverse/Variant5025fa48edfd3f7a0fe9ee89b06beff0fa2021fc90bfb87d7debeb8b884f1b4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Inverse/Variant5025fa48edfd3f7a0fe9ee89b06beff0fa2021fc90bfb87d7debeb8b884f1b4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.FieldDivision` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DiscreteValuationRing.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.MvPowerSeries.Inverse` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.NoZeroDivisors` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.ResidueField.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.UniqueFactorizationDomain.Multiplicity` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ENat.Lattice` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inv.aux](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/inv-aux.md) | 49 | `declaration-track:703741000b72191279e9d8238fa64a3f4242535274eea8021eb855b9a84e483c` |
| 2 | `theorem` | [coeff_inv_aux](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/coeff-inv-aux.md) | 52 | `result-track:097fb065a1e20e299ad49c602af690f519f90bf9297cfbe5d9a5e98d045f8838` |
| 3 | `def` | [invOfUnit](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/invofunit.md) | 81 | `declaration-track:51ba954ef0e834c566eca493b634f9e23ac1b06fe377694c8b411d7928717498` |
| 4 | `theorem` | [coeff_invOfUnit](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/coeff-invofunit.md) | 84 | `result-track:5d25fe5108092655a3d6aae7f804bd05e1cf69cc038d91473a87687784b998f9` |
| 5 | `theorem` | [constantCoeff_invOfUnit](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/constantcoeff-invofunit.md) | 94 | `result-track:d0c571ba5a80c2a816475d7d37c97a81d3b6d99d803bb1890294c08a9ff10d5b` |
| 6 | `theorem` | [mul_invOfUnit](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/mul-invofunit.md) | 99 | `result-track:c877c89b1b6f1b1c16637a2aab6051ea29e4cd788343333dec97bb025f6c9f82` |
| 7 | `theorem` | [invOfUnit_mul](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/invofunit-mul.md) | 104 | `result-track:a4769f17f5c5ed5bb4860aff2cab1d28978d24b03d4fa740681ea837ddb06886` |
| 8 | `theorem` | [isUnit_iff_constantCoeff](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/isunit-iff-constantcoeff.md) | 108 | `result-track:da204cae6c9628b2c09df722f61f3a49c8892ebbd254ab3a48d964adf21c52aa` |
| 9 | `theorem` | [sub_const_eq_shift_mul_X](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/sub-const-eq-shift-mul-x.md) | 113 | `result-track:0b56837664037322c5f6d041659647cedfab28a21dc198099961a63ab3eb18e3` |
| 10 | `theorem` | [sub_const_eq_X_mul_shift](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/sub-const-eq-x-mul-shift.md) | 117 | `result-track:fb6f40a0eb228026cfb0caf05e77f66248b0c3cfd18c875a6c8d99a75191eb99` |
| 11 | `def` | [inv](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/inv.md) | 128 | `declaration-track:ccaeea7277b7b6a5cce4a6fc810940e8efd4d88b60d93b723d917b97ac6cc7ff` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/instance-source-edition-3.md) | 131 | `declaration-track:7eec00291b7da6d0b4604d427c288e710e1a9925e93bacac147693b1103dfbe7` |
| 13 | `theorem` | [inv_eq_inv_aux](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/inv-eq-inv-aux.md) | 133 | `result-track:9e9afcb011af9b28b3b68d369876a9f6735164ff565cf88fbcaf390837593df6` |
| 14 | `theorem` | [coeff_inv](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/coeff-inv.md) | 136 | `result-track:20188150feae1c742fc7cd6e15013f2b3b9f61cfcd97a23139b511188f49a019` |
| 15 | `theorem` | [constantCoeff_inv](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/constantcoeff-inv.md) | 146 | `result-track:c61f0f98ee39be78957d5b10943a858450348e739723bc27d75bc3deecbc03d1` |
| 16 | `theorem` | [inv_eq_zero](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/inv-eq-zero.md) | 149 | `result-track:08febace231d281120aaa9a3de22bf714f47e29bedb5987e667021395dd5c82a` |
| 17 | `theorem` | [zero_inv](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/zero-inv.md) | 152 | `result-track:1d5bca0496f04ae6e79b15308d9087f015e80b17300d69e8ed1292e12eef8e4e` |
| 18 | `theorem` | [invOfUnit_eq](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/invofunit-eq-source-edition-2.md) | 156 | `result-track:f79671fdf77e5047e89ef541198929651d0f175ba2ec62444e52059823bf8aa0` |
| 19 | `theorem` | [invOfUnit_eq'](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/invofunit-eq.md) | 161 | `result-track:2fb7a84c01bcf2c699c17bd83e6334c3f3bc3206568a1a84ef01211beb159f80` |
| 20 | `theorem` | [mul_inv_cancel](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/mul-inv-cancel.md) | 166 | `result-track:5eb446e81ec212b57769e3784125883bd99d88d433360ae4a4dda21dfe19252b` |
| 21 | `theorem` | [inv_mul_cancel](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/inv-mul-cancel.md) | 170 | `result-track:de125b41bda633424769468239a07b74678dc8ac49da1c93787be935fd44bb7a` |
| 22 | `theorem` | [eq_mul_inv_iff_mul_eq](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/eq-mul-inv-iff-mul-eq.md) | 173 | `result-track:7e450174faa7351361e08915ed097604da553cb528b0c488614f3e5cd0cc6a78` |
| 23 | `theorem` | [eq_inv_iff_mul_eq_one](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/eq-inv-iff-mul-eq-one.md) | 177 | `result-track:157e4a408bb62afe67984d77fd7d881cf65b56307d419419be79190cbca85b9d` |
| 24 | `theorem` | [inv_eq_iff_mul_eq_one](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/inv-eq-iff-mul-eq-one.md) | 181 | `result-track:1d51733de1b8976882491ef78479e9827ce49fec5c781fb4c042ba7814e789e4` |
| 25 | `theorem` | [mul_inv_rev](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/mul-inv-rev.md) | 185 | `result-track:e46a00efa467733d490065ebc21e0791a8448810e1ed5a7bec99a2460614c9c6` |
| 26 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/instance-source-edition-2.md) | 188 | `declaration-track:430769f86bf365ef6fc80c571a521836b8c2c16791a70bff35062777c7918868` |
| 27 | `theorem` | [C_inv](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/c-inv.md) | 192 | `result-track:3d287a396c7c4a038829985a5e59144ff478efc7a787a34dd8def42386c191f6` |
| 28 | `theorem` | [X_inv](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/x-inv.md) | 196 | `result-track:c250f8fcaa7fde43352593393e7639f8153ac0ef78a34b4400d3ea747e5860e6` |
| 29 | `theorem` | [smul_inv](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/smul-inv.md) | 199 | `result-track:f0d8d539c174eff595ee9d708d514fb8685e574af313768b1eb64df019453402` |
| 30 | `def` | [firstUnitCoeff](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/firstunitcoeff.md) | 204 | `declaration-track:0f96b3dcfc1a85f7b37d8d49dcb24a7cc884d2e936b79915b07ebbd2b5de9ff7` |
| 31 | `def` | [Inv_divided_by_X_pow_order](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/inv-divided-by-x-pow-order.md) | 213 | `declaration-track:8b56c9f8fc09eab0f5963db0d81c13af309c7e5a00318adf0bf275ebc0c0391c` |
| 32 | `theorem` | [Inv_divided_by_X_pow_order_rightInv](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/inv-divided-by-x-pow-order-rightinv.md) | 217 | `result-track:b35e838043c4686b43126b963865ddafd44cb98d8da30eb65a418a4d747b1ed7` |
| 33 | `theorem` | [Inv_divided_by_X_pow_order_leftInv](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/inv-divided-by-x-pow-order-leftinv.md) | 222 | `result-track:8ecbde96bae9706b83362e15d2a9fed2ced2190641bdc8ded8c398bd68bebe18` |
| 34 | `def` | [Unit_of_divided_by_X_pow_order](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/unit-of-divided-by-x-pow-order.md) | 230 | `declaration-track:a6d4534ef89d8ae3c991242cab5ce35343d488e2629217f3634d1f83b292d293` |
| 35 | `theorem` | [isUnit_divided_by_X_pow_order](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/isunit-divided-by-x-pow-order.md) | 238 | `result-track:06b94b684e793b56dcf6277e732c08f5bb2b20937515c051e16edb429cecf483` |
| 36 | `theorem` | [Unit_of_divided_by_X_pow_order_nonzero](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/unit-of-divided-by-x-pow-order-nonzero.md) | 243 | `result-track:20f87504838a8a38f7db054b2e306b4709838526b1ef45e7cb3783e004c36a70` |
| 37 | `theorem` | [Unit_of_divided_by_X_pow_order_zero](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/unit-of-divided-by-x-pow-order-zero.md) | 248 | `result-track:0d504869e6e8c9c96c4b79c9c4b521cc4db16c45b8861fa0136b13c62492c6fd` |
| 38 | `theorem` | [eq_divided_by_X_pow_order_Iff_Unit](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/eq-divided-by-x-pow-order-iff-unit.md) | 251 | `result-track:a9ac6a8e2a5d472f138a450732485da1ea18aeab34c2e7d7d5416dfd44907ba1` |
| 39 | `theorem` | [map.isLocalHom](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/map-islocalhom.md) | 266 | `result-track:ad5b110e7296fe346b2db7aa89958e750384e72ff968b0fc020f1a76eb209907` |
| 40 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/instance-source-edition-6.md) | 271 | `declaration-track:b4e7d5e6413caa87cd5341706788e4db4ae9607895d1b71b5906df9d3ad5990f` |
| 41 | `theorem` | [hasUnitMulPowIrreducibleFactorization](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/hasunitmulpowirreduciblefactorization.md) | 283 | `result-track:17643dba9112cdc5396584c0917d2d24a70ad9268fcb78d8d48a89c7233519ed` |
| 42 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/instance-source-edition-4.md) | 293 | `declaration-track:97460114dfe5bb735106ae6033f215450471dcf5937bd71ec7682e89d5ea7394` |
| 43 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/instance.md) | 296 | `declaration-track:0d71e674ed7194fa0a4e741d9757ad746f32ba2065db290f65691c7a7ae83e8a` |
| 44 | `instance` | [isNoetherianRing](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/isnoetherianring.md) | 299 | `declaration-track:c015fad98dad185f6aa6e7895bf041cc03b7836c1bfea32a8de46b0994ae7de5` |
| 45 | `theorem` | [maximalIdeal_eq_span_X](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/maximalideal-eq-span-x.md) | 303 | `result-track:094a4caed929e315d5010097b08f58970741ba0b8667b6fa390da526f734bbfa` |
| 46 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/instance-source-edition-5.md) | 323 | `declaration-track:9a9391289c74ebee90bef41659c775cc7b01759aabcfcafa3aba50b0c6925bb4` |
| 47 | `theorem` | [normUnit_X](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/normunit-x.md) | 338 | `result-track:3a6a97e6ee834c64e1103666417f61ebb6437ca40712efa5cfec63a1a473fdb1` |
| 48 | `theorem` | [X_eq_normalizeX](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/x-eq-normalizex.md) | 341 | `result-track:a55b62120915512c4b1f6299c95130e8858e7024740c8e654e4f5feef198bcb8` |
| 49 | `theorem` | [normalized_count_X_eq_of_coe](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/normalized-count-x-eq-of-coe.md) | 347 | `result-track:bcc0b07ee58024428cc1ba4dcc2eab77d7cbffaa721dec6bf097690349e24e37` |
| 50 | `theorem` | [ker_coeff_eq_max_ideal](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/ker-coeff-eq-max-ideal.md) | 360 | `result-track:9ff8ba5fd0206baa4bbfb736b2780b84d017c5dcec99bf09ef2e8daf5cfbedb0` |
| 51 | `def` | [residueFieldOfPowerSeries](../../../../CommutativeAlgebra/PowerSeriesInverse.lean/declarations/residuefieldofpowerseries.md) | 366 | `declaration-track:4fdb91b32ab1195fe62a5a8ba734fea7be0b5256c8af967202bb6bea88e041b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=678e9ec3ca9401716eeb2d580b5c14a185372386cf4c88c67acd1d20de019170 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Inverse/Variant5025fa48edfd3f7a0fe9ee89b06beff0fa2021fc90bfb87d7debeb8b884f1b4f.lean","GRWTSK/_verification/specifications/Algebra/Inverse/Variant5025fa48edfd3f7a0fe9ee89b06beff0fa2021fc90bfb87d7debeb8b884f1b4f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
