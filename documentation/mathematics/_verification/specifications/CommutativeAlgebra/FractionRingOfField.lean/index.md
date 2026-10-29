# Verification target: Fraction Ring Of Field

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7bfae6bbb41fd2c98a31988c8b3a1be32dac730",
  "lexical_observation_count": 64,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/FractionRing/Variant5d36df64675edc6825c1195d08bd266b44d6667f9d435326d8e15b7275bdf83c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/FractionRingOfField.lean/index.md) · [Full source](../../../../CommutativeAlgebra/FractionRingOfField.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7bfae6bbb41fd2c98a31988c8b3a1be32dac730`.

Source path: `GRWTSK/Algebra/FractionRing/Variant5d36df64675edc6825c1195d08bd266b44d6667f9d435326d8e15b7275bdf83c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/FractionRing/Variant5d36df64675edc6825c1195d08bd266b44d6667f9d435326d8e15b7275bdf83c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Subfield.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Int` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Localization.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.SimpleRing.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [IsFractionRing](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/isfractionring.md) | 43 | `declaration-track:bfa189d7892fd98f5a07bcd53c9bf258c2365ff938c1e46f073592f814636a1d` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/instance-source-edition-2.md) | 46 | `declaration-track:652559b693c4d3ee3e203d32644aa6af8974e97aa02f1a2012f6b7bf92997d4d` |
| 3 | `instance` | [Rat.isFractionRing](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/rat-isfractionring.md) | 50 | `declaration-track:c15641dd3c567d5caeaa80ba39aafbdc049f72d5c9739dfcdab2ce501b13e76f` |
| 4 | `theorem` | [of_field](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/of-field.md) | 69 | `result-track:d5bbaaf816afa5a5d32f8251e58ef3d3e09b1470ae0d4d29e7dfc09afcf145b2` |
| 5 | `theorem` | [to_map_eq_zero_iff](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/to-map-eq-zero-iff.md) | 92 | `result-track:b630eef0a7d15db8396403c2635e8e90577886624a0deeee7cd58668058dc2a5` |
| 6 | `theorem` | [injective](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/injective.md) | 97 | `result-track:3453a8385ea83c1932ff128b029b3d738de48678f3ae119e2fa43e987564c6c9` |
| 7 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/instance-source-edition-4.md) | 100 | `declaration-track:6a8cf86f036b389d897ba104bdb66872299280b3a6561c9a4172e677c7ce4790` |
| 8 | `theorem` | [coe_inj](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/coe-inj.md) | 107 | `result-track:e078b870ec7c309eddcb52d55464087c14511b9396ff780378d3ab005b422e1d` |
| 9 | `theorem` | [to_map_ne_zero_of_mem_nonZeroDivisors](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/to-map-ne-zero-of-mem-nonzerodivisors.md) | 110 | `result-track:22150822cd229f801f42a1bf369af15873b8ba59d8ee8faf682840321314d837` |
| 10 | `theorem` | [isDomain](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/isdomain.md) | 119 | `result-track:ec5cd9798dff050e9a5ead10d1194a94ff523ca7d0e687aeb371482c1984a133` |
| 11 | `theorem` | [mul_inv_cancel](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/mul-inv-cancel.md) | 131 | `result-track:cd86b1fa918e1fa5044b1034042b285377788e0cb5530a69d810e2c7726d2f34` |
| 12 | `abbrev` | [toField](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/tofield.md) | 145 | `declaration-track:2825a5f64d2b5d5bd97ab186ced84e0d37bcb8f0d64485a25bdf2dcd46a987fd` |
| 13 | `lemma` | [surjective_iff_isField](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/surjective-iff-isfield.md) | 155 | `result-track:2b8c66489c834360aab1cfd1750a4956320c20ad367f4bdfe42e93b574b04c71` |
| 14 | `theorem` | [mk'_mk_eq_div](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/mk-mk-eq-div.md) | 168 | `result-track:40399c0ab756cd069878bbd0ac3630956e5b37c4fba8a37480d9029363781126` |
| 15 | `theorem` | [mk'_eq_div](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/mk-eq-div.md) | 176 | `result-track:659acaf76c5c449e033b0489a0cfd69bbf97d694856da3e8e61adc1f634a13d5` |
| 16 | `theorem` | [div_surjective](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/div-surjective.md) | 179 | `result-track:813b239940a733541b9ccfd6f2878b44697e07cf088a0ec601ccc91e2b81d770` |
| 17 | `theorem` | [isUnit_map_of_injective](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/isunit-map-of-injective.md) | 184 | `result-track:d1a17beb62e4fbe1aab8e10e1be8dc1dbd401b977ba0259cf6d36c266161ea2f` |
| 18 | `theorem` | [mk'_eq_zero_iff_eq_zero](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/mk-eq-zero-iff-eq-zero.md) | 190 | `result-track:d77244f40ad742bb08ada6fd0f266b9efbb56366c809faa7e4bef1b2f4300bca` |
| 19 | `theorem` | [mk'_eq_one_iff_eq](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/mk-eq-one-iff-eq.md) | 195 | `result-track:1d99f0cecbd916a996c5c8888aec7d428bcbe02287ee34ab6ae6c50eb4882971` |
| 20 | `theorem` | [closure_range_algebraMap](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/closure-range-algebramap.md) | 209 | `result-track:09aa80432e3f1ca5ab5447b49531d0daa497ec1d9ac3b2ad9b9cc72cb9f8c7ee` |
| 21 | `theorem` | [ringHom_fieldRange_eq_of_comp_eq](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/ringhom-fieldrange-eq-of-comp-eq.md) | 218 | `result-track:5d3bdbcb4da33e5d38479b698ebb60780dfc11b78190e0b51dd675f64c0b9b31` |
| 22 | `theorem` | [ringHom_fieldRange_eq_of_comp_eq_of_range_eq](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/ringhom-fieldrange-eq-of-comp-eq-of-range-eq.md) | 226 | `result-track:a99806e7b46e4032490eb3c12f992b972c4fc295dd2b52b197f15b508e8f8474` |
| 23 | `def` | [lift](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/lift.md) | 240 | `declaration-track:f4cfa241d3a3c6ab20a5ffad4b80679ecd56008747c45380d82df3642b7421af` |
| 24 | `theorem` | [lift_unique](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/lift-unique.md) | 243 | `result-track:c19a338faba67c4aad01618822130de9887750dac5b175a1a6423641ea54653b` |
| 25 | `theorem` | [ringHom_ext](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/ringhom-ext.md) | 248 | `result-track:fa4fb2eeb1ffb765f28b34862523735efcef57d24690b5b6a1ee016b93d6c058` |
| 26 | `theorem` | [injective_comp_algebraMap](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/injective-comp-algebramap.md) | 254 | `result-track:150ec4d64df5a2b15ade8c3839fd848f03af74a65bcc6eb4ad6b2b9c183c5ae4` |
| 27 | `def` | [liftAlgHom](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/liftalghom.md) | 265 | `declaration-track:51843f97acd48e7783385745efecdec0a9025ce87b83dcbfec55f803352ef84c` |
| 28 | `theorem` | [liftAlgHom_toRingHom](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/liftalghom-toringhom.md) | 268 | `result-track:232da4fd18b596e08ad0a298afca33a25b6b2a9edbd2a88d161ee5a12f18328b` |
| 29 | `theorem` | [coe_liftAlgHom](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/coe-liftalghom.md) | 271 | `result-track:6801ab7a03abe9c7adb1cb20c03806e5292670df54d891377727cc3a2a7fdb83` |
| 30 | `theorem` | [liftAlgHom_apply](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/liftalghom-apply.md) | 273 | `result-track:1661761388481049948e4c6f9b4be1f3f19fc4065635207826bc37187c2238fc` |
| 31 | `theorem` | [lift_algebraMap](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/lift-algebramap.md) | 282 | `result-track:499ff8576e34e8cfbea7b12a83ddf050c6dacddb4aec48cdffa2936addab4876` |
| 32 | `theorem` | [lift_fieldRange](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/lift-fieldrange.md) | 287 | `result-track:2633089a8cecf5fbb6561bffff4c718e993adc8037b54e43a6d1cbc3de545120` |
| 33 | `theorem` | [lift_fieldRange_eq_of_range_eq](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/lift-fieldrange-eq-of-range-eq.md) | 293 | `result-track:b821a5750097f7efe5b20505a28fd4248300571fd5ac713ff172173bd51c4515` |
| 34 | `theorem` | [lift_mk'](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/lift-mk.md) | 302 | `result-track:5276f82d8b9e27ab23b7a4dcab68648272f786e60e4ec9c295f09766ff6e3b48` |
| 35 | `def` | [map](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/map.md) | 309 | `declaration-track:aed6267ea80c0eb428c51325324de869cac8c47bbfc97f616d4760bf7e95595c` |
| 36 | `def` | [ringEquivOfRingEquiv](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/ringequivofringequiv.md) | 325 | `declaration-track:c58ced3731cea86950c7cbfeff2771bd50e4f2233d234aecbb2bf9c741525e64` |
| 37 | `lemma` | [ringEquivOfRingEquiv_algebraMap](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/ringequivofringequiv-algebramap.md) | 332 | `result-track:0a96962015515c5c349574a5c14e1e4aaccc65068281b4d6ae2d8914ffba257b` |
| 38 | `lemma` | [ringEquivOfRingEquiv_symm](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/ringequivofringequiv-symm.md) | 340 | `result-track:cc934291294a5dfc2384fba05f6293da2472a72a101af8480c7aa60243611efc` |
| 39 | `def` | [algEquivOfAlgEquiv](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/algequivofalgequiv.md) | 355 | `declaration-track:6213dc798a497edb311bf65c8d6fdb83fd93a50c9030448a828e383f4a17be9f` |
| 40 | `lemma` | [algEquivOfAlgEquiv_algebraMap](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/algequivofalgequiv-algebramap.md) | 359 | `result-track:3fb16e200a100adcc51c74640175cb8a10722a6e256182eec255b7c2dc5da345` |
| 41 | `lemma` | [algEquivOfAlgEquiv_symm](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/algequivofalgequiv-symm.md) | 364 | `result-track:30fab5cb07896e9ae56b898423fc464cf330228a3c9bfbd8131ba8c82a738e47` |
| 42 | `def` | [fieldEquivOfAlgEquiv](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/fieldequivofalgequiv.md) | 385 | `declaration-track:8da66dcb14fb4533fbe0766d64a6a666c76a8b3cae44979a197895c44814421f` |
| 43 | `lemma` | [restrictScalars_fieldEquivOfAlgEquiv](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/restrictscalars-fieldequivofalgequiv.md) | 392 | `result-track:feea305f429e155cd0419490e438c8183672985bb8495a0625cc6e20a7578329` |
| 44 | `lemma` | [fieldEquivOfAlgEquiv_algebraMap](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/fieldequivofalgequiv-algebramap.md) | 399 | `result-track:a31560776500537835bc7a4a9e36174f8dddf603a8af4c6aca76d6f63da1799c` |
| 45 | `lemma` | [fieldEquivOfAlgEquiv_refl](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/fieldequivofalgequiv-refl.md) | 405 | `result-track:9dd0b34372e098af0c074bb1b68fe84c23ddc7fef8913e64a66a4be73d4b5534` |
| 46 | `lemma` | [fieldEquivOfAlgEquiv_trans](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/fieldequivofalgequiv-trans.md) | 411 | `result-track:506596f676cb25dc27dd97d5291dababe37455747986ecfa74752b9936ba46cb` |
| 47 | `def` | [fieldEquivOfAlgEquivHom](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/fieldequivofalgequivhom.md) | 430 | `declaration-track:0322ce20992f67dc443024b3c626e9bd2a4c595f748e880ff7091e0e7484faa7` |
| 48 | `lemma` | [fieldEquivOfAlgEquivHom_apply](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/fieldequivofalgequivhom-apply.md) | 436 | `result-track:166407a42a526d4d0c26a014991efd7b1dcb97ab51380adbf7c1b5851d400808` |
| 49 | `lemma` | [fieldEquivOfAlgEquivHom_injective](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/fieldequivofalgequivhom-injective.md) | 442 | `result-track:caa592e2a42a5f5d86ccfd6ce8e1bb112ee48db43ab6d1b994139de161d10328` |
| 50 | `theorem` | [isFractionRing_iff_of_base_ringEquiv](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/isfractionring-iff-of-base-ringequiv.md) | 450 | `result-track:c7ef1ea747fa5ef92a344babcd43e4a160823058cdd4256c81235cb33f1df619` |
| 51 | `theorem` | [nontrivial](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/nontrivial.md) | 457 | `result-track:76178f719dcc0ed483ebe44be87c328aaa49302c2843c9abb0e7393e80a91783` |
| 52 | `theorem` | [algebraMap_injective_of_field_isFractionRing](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/algebramap-injective-of-field-isfractionring.md) | 470 | `result-track:b04f16ec644a9c65d1cc845a658dd0e87261b6c1c1d9e7cd497bacce84782a7d` |
| 53 | `theorem` | [FaithfulSMul.of_field_isFractionRing](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/faithfulsmul-of-field-isfractionring.md) | 477 | `result-track:6e2d9440219bcf923818510e8ab543b141c7968611f1b31a272704cc5d919275` |
| 54 | `abbrev` | [FractionRing](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/fractionring.md) | 497 | `declaration-track:1a66436eb1ac2522c6db981604a8027dad585bdeb8b354b9848a43ade0d311af` |
| 55 | `instance` | [unique](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/unique.md) | 502 | `declaration-track:1062af5422d11c8f92c8780c22cd5035fc5c64951fe8a2333511c7afb8ff5c98` |
| 56 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/instance-source-edition-3.md) | 504 | `declaration-track:66ccb44a9d5d24452709199c2b1161942a2af0c3f057cdcbef581043d35f391c` |
| 57 | `instance` | [field](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/field.md) | 510 | `declaration-track:090ba66f5b9594cb7d7f9c55de519650df50f06800f3fad261f536dc56166ece` |
| 58 | `theorem` | [mk_eq_div](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/mk-eq-div-source-edition-2.md) | 513 | `result-track:bc9d8cfcd6d9d021a4aa83b86838eaa5992cfa346b05759eeb36c0af75295ed6` |
| 59 | `abbrev` | [liftAlgebra](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/liftalgebra.md) | 525 | `declaration-track:08e0466437bd555674f9678b74e79138950912f7143640c72493225b4616933f` |
| 60 | `instance` | [isScalarTower_liftAlgebra](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/isscalartower-liftalgebra.md) | 532 | `declaration-track:49e003a6683f923bf68f4390622ea68b86bea2401ffe43e169c422ce251fc2f3` |
| 61 | `lemma` | [algebraMap_liftAlgebra](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/algebramap-liftalgebra.md) | 537 | `result-track:83cc2556cb8888516acac361c1bab486e71b458249debdb4ec61075fad4173d3` |
| 62 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/instance-source-edition-5.md) | 542 | `declaration-track:d09899f9555b430c3c3cf4cf8c787cb315f2cf614d4351b3dd92479d94b1fcc5` |
| 63 | `def` | [algEquiv](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/algequiv.md) | 553 | `declaration-track:25ae5ac8fcd99a3c77acf3619926c50d8386954f67dcc7adebf53ab7646bc526` |
| 64 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/FractionRingOfField.lean/declarations/instance.md) | 557 | `declaration-track:4884354cd31a0928cf675c7e3e80843ea5745f737cf31bf862844c9a6bc32487` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f4614fad6bffa65b966b3b6f1e40b47fad445de5ddb9c69d73862b1b44301d6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/FractionRing/Variant5d36df64675edc6825c1195d08bd266b44d6667f9d435326d8e15b7275bdf83c.lean","GRWTSK/_verification/specifications/Algebra/FractionRing/Variant5d36df64675edc6825c1195d08bd266b44d6667f9d435326d8e15b7275bdf83c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
