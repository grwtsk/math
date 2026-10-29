# Verification target: Fraction Ring Field Equiv Of Ring Equiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a58a1890cee2e2af71ecd3ac5d9814fb59e17c6d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a58a1890cee2e2af71ecd3ac5d9814fb59e17c6d`.

Source path: `GRWTSK/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Tower` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsFractionRing](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/isfractionring.md) | 43 | `declaration-track:1b7dbb6543ba02a0628b1d3de6c9f0e34a2602efd914ed706e3dee605e97f766` |
| 2 | `instance` | [Rat.isFractionRing](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/rat-isfractionring.md) | 48 | `declaration-track:e0f452d67f335ad83135d51c932c407e608b4e5c2b9326011f9531181825ec6e` |
| 3 | `theorem` | [to_map_eq_zero_iff](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/to-map-eq-zero-iff.md) | 79 | `result-track:1167c5276ec8422118ff52118f24239636c61b27e16dfc22b7438f9b0a72f1b3` |
| 4 | `theorem` | [injective](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/injective.md) | 85 | `result-track:dfeb85e514f91991c6491a00ecec1551020e7b9712fb8ca56b2f9139aabaf069` |
| 5 | `theorem` | [coe_inj](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/coe-inj.md) | 93 | `result-track:873fda5c176aded471c881c6dad7e698ee7e1cb34c9976d51a31783c8da65e10` |
| 6 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/instance-source-edition-5.md) | 97 | `declaration-track:ede40af1ff6a89ae9cbb029e74b1b52d34366a31772505da975146251e3aaf22` |
| 7 | `theorem` | [to_map_ne_zero_of_mem_nonZeroDivisors](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/to-map-ne-zero-of-mem-nonzerodivisors.md) | 100 | `result-track:a16234e08cc1659073404de261b94db05031ea3d984fd04529344d0b17c6af21` |
| 8 | `theorem` | [isDomain](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/isdomain.md) | 109 | `result-track:8770a117b7afe4b3844aeceb8a5e43a4c65fef723fccc2a2b9c8bbb6dd88cd6c` |
| 9 | `theorem` | [mul_inv_cancel](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/mul-inv-cancel.md) | 123 | `result-track:1376f4f5227c9be14b7cf297035feb5e70e034d4d9d6c793bf034181a207440c` |
| 10 | `def` | [toField](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/tofield.md) | 138 | `declaration-track:8a77e62863cb4a53938c1236e123384522076e88123ab0b24416686dde8bea50` |
| 11 | `theorem` | [mk'_mk_eq_div](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/mk-mk-eq-div.md) | 153 | `result-track:b90aa83a97c79d55d1875edd50b02257818548fa64c9aab2f335e414a9ca75d9` |
| 12 | `theorem` | [mk'_eq_div](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/mk-eq-div-source-edition-2.md) | 161 | `result-track:4142e6532966699cbdddb6065efdf8f2474eb6a91673387170a7656624580526` |
| 13 | `theorem` | [div_surjective](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/div-surjective.md) | 165 | `result-track:d9af4bd432c01ad9cdcb6e96866a1b42052e1696f120aaf1f0fb415312867423` |
| 14 | `theorem` | [isUnit_map_of_injective](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/isunit-map-of-injective.md) | 171 | `result-track:da6673f11da6609c7e1acf224a83a54a136f50e3f665176ff4341ccb34631fc3` |
| 15 | `theorem` | [mk'_eq_zero_iff_eq_zero](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/mk-eq-zero-iff-eq-zero.md) | 178 | `result-track:e3f75b68bb45e4ce3ae35ea5402375a335ac69aac1865ed36c3c13973cd44b57` |
| 16 | `theorem` | [mk'_eq_one_iff_eq](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/mk-eq-one-iff-eq.md) | 185 | `result-track:65093066a819fa41cf72fc2e8afe6ffa9fac324870bd41cb927f041ba1eec0a8` |
| 17 | `def` | [lift](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/lift.md) | 200 | `declaration-track:de2218294343516e51649774fb44d5e1d423ed18ce376e8525dc744cd0f7f320` |
| 18 | `theorem` | [lift_algebraMap](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/lift-algebramap.md) | 209 | `result-track:57574feae9b3d1c6a48614521d8107e01642f511a7c00bc5d97422ff8be40c48` |
| 19 | `theorem` | [lift_mk'](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/lift-mk.md) | 217 | `result-track:d90702c58431673cd714b9d0607b41724d29d910f5a1f301c25b08f7613907fa` |
| 20 | `def` | [map](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/map.md) | 225 | `declaration-track:c3b4a1464ef314ae8367844241127aed3e615e56650dbc25cfbb20799f2322e3` |
| 21 | `def` | [fieldEquivOfRingEquiv](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/fieldequivofringequiv.md) | 236 | `declaration-track:84ac846af1255a791a006fa31ec4ab2a93e6f7619277d53dc1d0be5f9ed7f207` |
| 22 | `theorem` | [isFractionRing_iff_of_base_ringEquiv](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/isfractionring-iff-of-base-ringequiv.md) | 247 | `result-track:29b1a3b299b00876bc7bebf336c800edce08c2d48ea040585ec85cf5e17239d1` |
| 23 | `theorem` | [nontrivial](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/nontrivial.md) | 266 | `result-track:956d59fab258ebddef36cb853cdb06f2436117229bb994b0c1979b01ce30afe6` |
| 24 | `def` | [FractionRing](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/fractionring.md) | 288 | `declaration-track:664cf767ca85081d5f586f1ef505b5b61eb8ae70cf64cb18f7fad4ed0aa6acb1` |
| 25 | `instance` | [unique](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/unique.md) | 294 | `declaration-track:71ead9c0e40a82801350a8c58e3a770b832d8431021fb451157c2547b929cfe5` |
| 26 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/instance.md) | 298 | `declaration-track:108b5e294ffccd5a10c1d57d42ae284fb5bf076d5cfe8aabff222ff9ec7c6107` |
| 27 | `instance` | [field](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/field.md) | 304 | `declaration-track:d52a14dbc9f7383bb917b172bcb1229cb433e5a63b4310ed03d7534bdc1c23cc` |
| 28 | `theorem` | [mk_eq_div](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/mk-eq-div.md) | 307 | `result-track:0a9cdb5e2cca9011fc51c711f34187196f7fc5a1cab6f8b985bd16ac7d8f4b5e` |
| 29 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/instance-source-edition-4.md) | 313 | `declaration-track:ae1f3bce597f5192485cec6f6d75dd2322fd7a0fb29a34be869878198871f31a` |
| 30 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/instance-source-edition-3.md) | 318 | `declaration-track:aa72a8da976c581571cf7e4deb9979c0100aef82a288bad49d10941c96987f3a` |
| 31 | `def` | [algEquiv](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/algequiv.md) | 326 | `declaration-track:9e25673442eb08e0674d63695798c1457f0734a8d02853829ad5441994c6feba` |
| 32 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingFieldEquivOfRingEquiv.lean/declarations/instance-source-edition-2.md) | 331 | `declaration-track:66018546fca79d4e019cbd3ef9ab7bdc7d405600449b61bc59e3a475d761c45c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7cf156b5f582094143987cac8ccd0abc4539fb8372cea60896d6ec97e17b233a -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean","GRWTSK/_verification/specifications/Algebra/FractionRing/Variant2eb72d7460f7a10e65485ab18d484979b8582bc2e76b6e5bf4eef3a71ac3b099.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
