# Verification target: CMField Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c7067617742aae433a648031822e84a41746b4f",
  "lexical_observation_count": 55,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/index.md) · [Full source](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c7067617742aae433a648031822e84a41746b4f`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean.json)

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
| 1 | `class` | [IsCMField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/iscmfield-source-edition-2.md) | 71 | `declaration-track:c8ef81d4815547ffa9bb77eccc8c05da5178dc82fba70fc9528cded1ab6f2c48` |
| 2 | `instance` | [isQuadraticExtension](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/isquadraticextension.md) | 83 | `declaration-track:35ff855671e5308aab2b5d56625763a751935b479117f33b233c099dc59db3f3` |
| 3 | `instance` | [isTotallyComplex](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/istotallycomplex.md) | 86 | `declaration-track:abc5f575255ec7559344c91356ebd2edf861b1f429ef67f000a7c3482fb5ec7c` |
| 4 | `theorem` | [card_infinitePlace_eq_card_infinitePlace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/card-infiniteplace-eq-card-infiniteplace.md) | 89 | `result-track:13fe959ac005fa60cd053ae10ce87bd80a99e2667d9cbad31e2bdc1cae17ce47` |
| 5 | `def` | [equivInfinitePlace](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/equivinfiniteplace.md) | 101 | `declaration-track:9e0327b0daa04980c3e686117bdccd0d9366eef671e0ec2cd5fbdc00b8e319e8` |
| 6 | `theorem` | [equivInfinitePlace_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/equivinfiniteplace-apply.md) | 107 | `result-track:489bfaee4bd23c0f73fd3a01a6341645388b86fd4a656da21331fcac5d8dcbf5` |
| 7 | `theorem` | [equivInfinitePlace_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/equivinfiniteplace-symm-apply.md) | 111 | `result-track:738b5f5fa6cd99aba9886e54b28202afbb09940b5d6e46c96002359e8196ef71` |
| 8 | `theorem` | [units_rank_eq_units_rank](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/units-rank-eq-units-rank.md) | 115 | `result-track:699eb79bf5fa855c94cc51fb6bf21a9bfc558d19e86e19b455748d88d3849424` |
| 9 | `theorem` | [exists_isConj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/exists-isconj.md) | 121 | `result-track:39eb0465e48345f5c59f482d81d16cf0757623dac93b6f0e6cf14c5ab59f6a28` |
| 10 | `theorem` | [isConj_eq_isConj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/isconj-eq-isconj.md) | 129 | `result-track:d2b810e476fb5d3bf79c48631a306a682ab11a78ae626d4e16bdc9a5c48e374c` |
| 11 | `def` | [complexConj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/complexconj.md) | 143 | `declaration-track:402d7f55e522d2086c3ff1c8f377b185e846d6a8bb2445dcfd8fe9c3685fc2e0` |
| 12 | `theorem` | [isConj_complexConj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/isconj-complexconj.md) | 149 | `result-track:524d555e32a56da431304c65a9db5ebc9f9e822f457b5430b76416006cd73f59` |
| 13 | `theorem` | [complexEmbedding_complexConj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/complexembedding-complexconj.md) | 155 | `result-track:74d455854be2fc697f3d52c39258da2f5796d6ebedfc74a8850e020abaa015d5` |
| 14 | `theorem` | [infinitePlace_complexConj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/infiniteplace-complexconj.md) | 160 | `result-track:96bfa673ec0d9fc6e1ce9ae6fc951f673f3e748a0c737edfc02b7041c25e1dc7` |
| 15 | `theorem` | [complexConj_apply_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/complexconj-apply-apply.md) | 165 | `result-track:ee7c25401e13b65c784b5d2202c13d8b729441c170b8777d92e8fd69697b9fd4` |
| 16 | `theorem` | [complexConj_ne_one](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/complexconj-ne-one.md) | 170 | `result-track:8a5fd94ab0ab96ef46bef35db4abeba0d4b0e3b7db45805452bd4cb66512c3b4` |
| 17 | `theorem` | [complexConj_apply_eq_self](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/complexconj-apply-eq-self.md) | 177 | `result-track:d2cad98d29bb1409b24d8344f76e6cb713700e45bd9a87d2ea747d6059523d69` |
| 18 | `theorem` | [orderOf_complexConj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/orderof-complexconj.md) | 182 | `result-track:a3ac6d36ba00a6b3a81e87a56fe54bd7586ce0be7078a35e10dca1ad2b6a84c1` |
| 19 | `theorem` | [zpowers_complexConj_eq_top](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/zpowers-complexconj-eq-top.md) | 189 | `result-track:96e379281514aae96e44318527ea52ad537dd73a4a14217b4e799eb1513785f3` |
| 20 | `theorem` | [complexConj_eq_self_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/complexconj-eq-self-iff.md) | 199 | `result-track:49f89b77b99c253e30dfeae324e7a0517191e97e5c21a3c1f5135448ca4c71ee` |
| 21 | `theorem` | [RingOfIntegers.complexConj_eq_self_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/ringofintegers-complexconj-eq-self-iff.md) | 208 | `result-track:5ca20dafd66efbe0093a713be78d464f73972466d763099dba9891a426e5ed44` |
| 22 | `theorem` | [Units.complexConj_eq_self_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/units-complexconj-eq-self-iff.md) | 219 | `result-track:68bb8f89a7fbe24b5fad1b42b46590641c04662bf60395d47ac60a4ddf04ce1a` |
| 23 | `instance` | [starRing](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/starring.md) | 229 | `declaration-track:d5dfdf999f80a156898a9daead5d2a6e0683c37b9a276fa46864862aae4815dd` |
| 24 | `abbrev` | [ringOfIntegersComplexConj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/ringofintegerscomplexconj.md) | 238 | `declaration-track:697e84a49592ff7f1cc8fa835ef375e2c6503f3c612321425fbb0b6b3e252122` |
| 25 | `theorem` | [coe_ringOfIntegersComplexConj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/coe-ringofintegerscomplexconj.md) | 242 | `result-track:d7de7816f2eaf06c98324b1c323d05b7824e340d1a37a476f0a917f0a5f4d0f4` |
| 26 | `theorem` | [ringOfIntegersComplexConj_eq_self_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/ringofintegerscomplexconj-eq-self-iff.md) | 245 | `result-track:6e67778d6dc3074daec1f440c6e12a10bea69671fae2bb0ca0259700073098c3` |
| 27 | `abbrev` | [unitsComplexConj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/unitscomplexconj.md) | 263 | `declaration-track:40f330a669bd1349c1ff1713f9bd640a16319c6c3310664d426dfe1d9478c556` |
| 28 | `def` | [realUnits](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/realunits.md) | 270 | `declaration-track:afc8ea7c52acced791820d55e2f67a4bdcd3daf28ebc8dc76d80c924d04db57c` |
| 29 | `theorem` | [mem_realUnits_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/mem-realunits-iff.md) | 273 | `result-track:95a977331c6a1f9b6600a100f7ce1851e624aff0784b797622cfc4f628f94b17` |
| 30 | `theorem` | [unitsComplexConj_eq_self_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/unitscomplexconj-eq-self-iff.md) | 277 | `result-track:6e468a834857af2f963e2a9746de106b904f9cc6548c94b31511aa09976a0e26` |
| 31 | `theorem` | [complexConj_torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/complexconj-torsion.md) | 291 | `result-track:a76239859ae736430250508956668d276df10647449a2fc5f3383a282035deab` |
| 32 | `theorem` | [unitsComplexConj_torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/unitscomplexconj-torsion.md) | 300 | `result-track:bc5faa73528d38c313ca41212c91885e91679d82b8c1e512b75a8aef0e90516f` |
| 33 | `def` | [unitsMulComplexConjInv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/unitsmulcomplexconjinv.md) | 308 | `declaration-track:5f17e61eaf4959c02c4a65b0f47fca8f1f9dcd5e1acb76ed2d39c7aacc7e94ac` |
| 34 | `theorem` | [unitsMulComplexConjInv_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/unitsmulcomplexconjinv-apply.md) | 318 | `result-track:6e644d4c03911232aaa82e4bc6c6a4d7a0041cc8c7c00f3265376ac9680a45fa` |
| 35 | `theorem` | [unitsMulComplexConjInv_apply_torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/unitsmulcomplexconjinv-apply-torsion.md) | 322 | `result-track:df7bfa5ecb0290f6a4d0b0d53fe8474d7a469b836d06381e63e1b3a8872aca5e` |
| 36 | `theorem` | [map_unitsMulComplexConjInv_torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/map-unitsmulcomplexconjinv-torsion.md) | 329 | `result-track:102058f761d899dbfe35ed45ceaefbaa513f8c6b36d79e15b77fd9e5596cdd05` |
| 37 | `theorem` | [unitsMulComplexConjInv_ker](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/unitsmulcomplexconjinv-ker.md) | 337 | `result-track:7728e6f03062afebcc1194188721fa9c42ccf821092d4f0011fedf6263bc67c7` |
| 38 | `theorem` | [index_unitsMulComplexConjInv_range_dvd](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/index-unitsmulcomplexconjinv-range-dvd.md) | 346 | `result-track:84650632f6b6a56893db62a5c945ffd45d29b426074dbb3a15b1568d68e4b830` |
| 39 | `abbrev` | [indexRealUnits](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/indexrealunits.md) | 359 | `declaration-track:984013857ec15485e273b9cd8ca2efe9f5b3b12d6022f8a822aa256426ec7e1a` |
| 40 | `theorem` | [indexRealUnits_mul_eq](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/indexrealunits-mul-eq.md) | 361 | `result-track:38b8494077543169daeac8495558b9ead36cd5d0a8a069fa3fc0a3b947349491` |
| 41 | `theorem` | [indexRealUnits_eq_one_or_two](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/indexrealunits-eq-one-or-two.md) | 374 | `result-track:d4efb8caaf9e50d8a6d218fff125bf2cba78f91ede7f24a896fd610518576bea` |
| 42 | `theorem` | [indexRealUnits_eq_two_iff](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/indexrealunits-eq-two-iff.md) | 386 | `result-track:011691247834b2f86a6ca167ccd4e9212f6cae738416cd7cfd8cd83343188e5b` |
| 43 | `def` | [realFundSystem](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/realfundsystem.md) | 407 | `declaration-track:f060e1f2aed33181b727a70ee38816893b87b9527bd2abfb279de122b702959a` |
| 44 | `theorem` | [closure_realFundSystem_sup_torsion](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/closure-realfundsystem-sup-torsion.md) | 411 | `result-track:dbc858d1a2027c84021970b5b7cca1f64442ed1e5c11ec860adc7158ac37dab6` |
| 45 | `theorem` | [regOfFamily_realFunSystem](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/regoffamily-realfunsystem.md) | 422 | `result-track:add5790c930288c7494c9236171ed8e6403ced0b557065162301021b3555513e` |
| 46 | `theorem` | [regulator_div_regulator_eq_two_pow_mul_indexRealUnits_inv](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/regulator-div-regulator-eq-two-pow-mul-indexrealunits-inv.md) | 440 | `result-track:2fe01355b925c2ffad76a96143cc28bca11120049d608022ff1850ecab42f6da` |
| 47 | `theorem` | [eq_maximalRealSubfield](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/eq-maximalrealsubfield.md) | 457 | `result-track:d1451da6b0f589ddd074e481fa9525d6fcea4a46a65f574c3302e02128f1a014` |
| 48 | `def` | [equivMaximalRealSubfield](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/equivmaximalrealsubfield.md) | 480 | `declaration-track:7aeea09e569cbe60181476d5f0b5f07acd9ad3671964fafbfe10e218e6f4921f` |
| 49 | `theorem` | [equivMaximalRealSubfield_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/equivmaximalrealsubfield-apply.md) | 491 | `result-track:ad50a422918469578e02e5974f26587d3613487243b27938ce950a724d0c4e75` |
| 50 | `theorem` | [algebraMap_equivMaximalRealSubfield_symm_apply](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/algebramap-equivmaximalrealsubfield-symm-apply.md) | 495 | `result-track:06e4d53e1990c686fba7c4d5b48eb32969911d2601639afd1bbc151273e50286` |
| 51 | `theorem` | [ofCMExtension](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/ofcmextension.md) | 511 | `result-track:46ba85eb4bf2ab49cab61d721d41c1a0c709f4798f5a91bdde4de098dacf3b73` |
| 52 | `theorem` | [of_forall_isConj](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/of-forall-isconj.md) | 520 | `result-track:0dd2603565dbe7349f9a95503cc567a57988e8c6ac2ea2e38194be626bf56d4b` |
| 53 | `instance` | [of_isAbelianGalois](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/of-isabeliangalois.md) | 543 | `declaration-track:ba06671d7ec6b3909b747da71a1d37680db73a1ece8d4921b8c2c763983dcb03` |
| 54 | `theorem` | [isCMField](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/iscmfield.md) | 565 | `result-track:3b13031f3628a0d63d98b594ca2dab6e27a2cf3829aaf5a1eafc54cd1e7c7d94` |
| 55 | `instance` | [(anonymous)](../../../../../NumberTheory/AlgebraicNumberTheoryGlobalFields/CMFieldPublic.lean/declarations/instance.md) | 578 | `declaration-track:6367fed3c614c6fb7fcd7a87be6b057793e418976318a2a0b536fa3105efd3f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ce88ce1f585bf616ae5d9ff1dee81d44476f74aa1f934f6fc8cf8bd0f3711aa4 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean","GRWTSK/_verification/specifications/NumberTheory/AlgebraicNumberTheory/CMField/Variant536b158ef3bd7fe6cb287c66d7d46f9ad10733830c1d31c6083b6d00f6d3ce01.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
