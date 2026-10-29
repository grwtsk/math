# Verification target: Mul Char Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1946164d82bcbd41f15e053d24ac92b20fa6411",
  "lexical_observation_count": 69,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../NumberTheory/MulCharBasic.lean/index.md) · [Full source](../../../../NumberTheory/MulCharBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1946164d82bcbd41f15e053d24ac92b20fa6411`.

Source path: `GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharP.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Units` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.OrderOfElement` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MulChar](../../../../NumberTheory/MulCharBasic.lean/declarations/mulchar.md) | 65 | `declaration-track:61a212c827c64fa75a57a1ab39d6b4f37141581b9329cae8148c58314bb5ccf7` |
| 2 | `instance` | [MulChar.instFunLike](../../../../NumberTheory/MulCharBasic.lean/declarations/mulchar-instfunlike.md) | 68 | `declaration-track:bd6b7b49925e6900f7e628d70cc8c5d7aaf1823cf5501eae912221aa9fa1680c` |
| 3 | `class` | [MulCharClass](../../../../NumberTheory/MulCharBasic.lean/declarations/mulcharclass.md) | 73 | `declaration-track:bad19a39972b7a4f7dac2b5ea60743b14e3d739d3bb2419569485363a4560f09` |
| 4 | `def` | [trivial](../../../../NumberTheory/MulCharBasic.lean/declarations/trivial.md) | 97 | `declaration-track:a276d0aa59a81f7a583cc3dea8f1fac6d49163df1f06d0226ab3e6a6d3a21ad5` |
| 5 | `theorem` | [coe_mk](../../../../NumberTheory/MulCharBasic.lean/declarations/coe-mk.md) | 110 | `result-track:a223584ca2267c490315c6f9925355e3600108f95fe6f2e9f768b8e34a6c43f2` |
| 6 | `theorem` | [ext'](../../../../NumberTheory/MulCharBasic.lean/declarations/ext.md) | 114 | `result-track:972fe5686301173bd1ceb92c0f5180de021fe6afdd82ed9aed8042ac8eaea624` |
| 7 | `instance` | [(anonymous)](../../../../NumberTheory/MulCharBasic.lean/declarations/instance.md) | 120 | `declaration-track:66ddddb6383405ed116cbfef8f78382a7328b4aadb1585c5067499d74f18fd4a` |
| 8 | `theorem` | [map_nonunit](../../../../NumberTheory/MulCharBasic.lean/declarations/map-nonunit.md) | 125 | `result-track:8d274f6dec1945d60b968251584f9d1063117e9146fa4c97d5da4fea64417454` |
| 9 | `theorem` | [ext](../../../../NumberTheory/MulCharBasic.lean/declarations/ext-source-edition-2.md) | 131 | `result-track:9bf0414e11c33bc50520035672fc57e7042b464129c228c2257fd18f4853c28e` |
| 10 | `def` | [toUnitHom](../../../../NumberTheory/MulCharBasic.lean/declarations/tounithom.md) | 147 | `declaration-track:89f98057f8e009517bf585ded5a9499fbacc8adb5d72aac83c322933f30f3ce4` |
| 11 | `theorem` | [coe_toUnitHom](../../../../NumberTheory/MulCharBasic.lean/declarations/coe-tounithom.md) | 150 | `result-track:9b9e9037a419a88e7b1f72a972aeca72940e068034bcd6162964568a71ec09ab` |
| 12 | `def` | [ofUnitHom](../../../../NumberTheory/MulCharBasic.lean/declarations/ofunithom.md) | 154 | `declaration-track:b122227f77f97e119e4ec6e867224c1b4f873ab20f8020e34fad318df60a58c3` |
| 13 | `theorem` | [ofUnitHom_coe](../../../../NumberTheory/MulCharBasic.lean/declarations/ofunithom-coe.md) | 175 | `result-track:8cfb41343ca5270b6d252e1d0aa2cf75d9f4457004788084664c9c768e7b1ca4` |
| 14 | `def` | [equivToUnitHom](../../../../NumberTheory/MulCharBasic.lean/declarations/equivtounithom.md) | 178 | `declaration-track:e8ca04d253619039d3d0a792016d3368a7e0bae3effccd71d4adecf85281e2c0` |
| 15 | `theorem` | [toUnitHom_eq](../../../../NumberTheory/MulCharBasic.lean/declarations/tounithom-eq.md) | 191 | `result-track:563278ea8428655ef4a7eed31824f9c5582504c1e7829b88da68c7fa00726c04` |
| 16 | `theorem` | [ofUnitHom_eq](../../../../NumberTheory/MulCharBasic.lean/declarations/ofunithom-eq.md) | 195 | `result-track:cdd3f32b752f650be95cd71b409341e3b6026666a4c9f0bdb7368c60f2faa64c` |
| 17 | `theorem` | [coe_equivToUnitHom](../../../../NumberTheory/MulCharBasic.lean/declarations/coe-equivtounithom.md) | 199 | `result-track:d8e9d8d1f6f4e37c27471c531952b470f821325702f01e8d8895d92bb96d460a` |
| 18 | `theorem` | [equivToUnitHom_symm_coe](../../../../NumberTheory/MulCharBasic.lean/declarations/equivtounithom-symm-coe.md) | 203 | `result-track:2d5e60b587146c48b9c52275239504cb3b8cbde4a4f25d8b18db355453658d6c` |
| 19 | `lemma` | [coe_toMonoidHom](../../../../NumberTheory/MulCharBasic.lean/declarations/coe-tomonoidhom.md) | 207 | `result-track:2551ba0a1b7a37b8fc51bb0fb464d33790b240d3fed09762e9f9bf7b83d2530a` |
| 20 | `theorem` | [map_one](../../../../NumberTheory/MulCharBasic.lean/declarations/map-one.md) | 217 | `result-track:c6f7a9ef874befb820b72bd618a0535614015336114bdbfd7c050d37f5bb0283` |
| 21 | `theorem` | [map_zero](../../../../NumberTheory/MulCharBasic.lean/declarations/map-zero.md) | 221 | `result-track:800ff13b76242124d5ee73464566545d0d8c6167c26147c55ab7c575cb11f532` |
| 22 | `def` | [toMonoidWithZeroHom](../../../../NumberTheory/MulCharBasic.lean/declarations/tomonoidwithzerohom.md) | 227 | `declaration-track:c61be33c59db97c37daa4e64baff12a4232f422ed2705c78f27b55d224392760` |
| 23 | `theorem` | [map_ringChar](../../../../NumberTheory/MulCharBasic.lean/declarations/map-ringchar.md) | 235 | `result-track:38c56ddeb0301789e4d7997f49b83c333bbdee4f3b1b10ee4cfeca2acf740864` |
| 24 | `instance` | [hasOne](../../../../NumberTheory/MulCharBasic.lean/declarations/hasone.md) | 238 | `declaration-track:e9a0db19a54b4e62fb421a7898d3f5958f48ccad815e3415d8d5ce22f89d5a02` |
| 25 | `instance` | [inhabited](../../../../NumberTheory/MulCharBasic.lean/declarations/inhabited.md) | 241 | `declaration-track:36bea98daac9eae5099c4f8c4772c98512b08357cc3cb8513c5d803892e5eb61` |
| 26 | `theorem` | [one_apply_coe](../../../../NumberTheory/MulCharBasic.lean/declarations/one-apply-coe.md) | 246 | `result-track:d7222c9281ca5c87f78e2d75319d6e880390bccb0e9f3fbfd1e92ed259fabbf9` |
| 27 | `lemma` | [one_apply](../../../../NumberTheory/MulCharBasic.lean/declarations/one-apply.md) | 249 | `result-track:7bf43af75ef9801bde7d364743259cb8093f295ba77da4756cb621176971b051` |
| 28 | `def` | [mul](../../../../NumberTheory/MulCharBasic.lean/declarations/mul.md) | 252 | `declaration-track:cf8ce24f9e1db8770ba3729f07718effec1e276873a210e6820815d1ffcedd14` |
| 29 | `instance` | [hasMul](../../../../NumberTheory/MulCharBasic.lean/declarations/hasmul.md) | 257 | `declaration-track:ca49349e6a662356cda6016d0ca2cd18e7944b48539b1aac9b37d0dc7e745e3a` |
| 30 | `theorem` | [mul_apply](../../../../NumberTheory/MulCharBasic.lean/declarations/mul-apply.md) | 260 | `result-track:80c26da7baa5987acff22201d140e25a5083ffcae1c91468d6b313fcd0eb95ec` |
| 31 | `theorem` | [coeToFun_mul](../../../../NumberTheory/MulCharBasic.lean/declarations/coetofun-mul.md) | 264 | `result-track:b83a94e96802d19631600e7d1704ae3c42e602040fac47800fdcdf18307b6808` |
| 32 | `theorem` | [one_mul](../../../../NumberTheory/MulCharBasic.lean/declarations/one-mul.md) | 267 | `result-track:b40927d8b6a32bd3d3544746e1218ede81c6a9a948f2ba1ece6cb848b00f99af` |
| 33 | `theorem` | [mul_one](../../../../NumberTheory/MulCharBasic.lean/declarations/mul-one.md) | 271 | `result-track:1d5550e3416af98f6e87ef06138b64be5af0e16f2d08cb85d3c74def6ee5705b` |
| 34 | `def` | [inv](../../../../NumberTheory/MulCharBasic.lean/declarations/inv.md) | 276 | `declaration-track:aa3f587b78551e92b8adab872937be35459205f98e5ba33ddac3f04ec6ddc213` |
| 35 | `instance` | [hasInv](../../../../NumberTheory/MulCharBasic.lean/declarations/hasinv.md) | 281 | `declaration-track:68c20fb74e2c2f5312679120a50aa971d8680d582acd093d3cd8c7e043cecf35` |
| 36 | `theorem` | [inv_apply_eq_inv](../../../../NumberTheory/MulCharBasic.lean/declarations/inv-apply-eq-inv.md) | 285 | `result-track:684922ba189b1836da6d8ca7271e26f70f2b8016c1ceac094fb1f36dcc2b830a` |
| 37 | `theorem` | [inv_apply_eq_inv'](../../../../NumberTheory/MulCharBasic.lean/declarations/inv-apply-eq-inv-source-edition-2.md) | 290 | `result-track:fa4e6faaa5fb56073103c28fffe6b306a3c7f053f7a3b034dbecedc51f541bd8` |
| 38 | `theorem` | [inv_apply](../../../../NumberTheory/MulCharBasic.lean/declarations/inv-apply-source-edition-2.md) | 296 | `result-track:d18ca0eaadee8b1999c4575493bafac34456ab2c4c9ab3f0cdf440d42266d299` |
| 39 | `theorem` | [inv_apply'](../../../../NumberTheory/MulCharBasic.lean/declarations/inv-apply.md) | 312 | `result-track:c440219826ba6683731483e44478fee8aa176f1ef31ae2dfd8a1628687231900` |
| 40 | `theorem` | [inv_mul](../../../../NumberTheory/MulCharBasic.lean/declarations/inv-mul.md) | 316 | `result-track:f4540aeeb01cf47c2190ec9a80e1321c0b185641d4a8bd840f1420eb69c9ce10` |
| 41 | `instance` | [commGroup](../../../../NumberTheory/MulCharBasic.lean/declarations/commgroup.md) | 323 | `declaration-track:b96c8f9ef0eedb721be6de345ac5b4770b43b173bf6b0e36e7eccf2faebb0a32` |
| 42 | `theorem` | [pow_apply_coe](../../../../NumberTheory/MulCharBasic.lean/declarations/pow-apply-coe.md) | 340 | `result-track:9675a0cc7af53cda355117f1550c47ecc1cbb56fd84f8e2d3b2b2f8b6fa2bd4e` |
| 43 | `theorem` | [pow_apply'](../../../../NumberTheory/MulCharBasic.lean/declarations/pow-apply.md) | 346 | `result-track:73e02816367e425793138b7268341ea1f03d6f088502fd1bc51a392f5d733fde` |
| 44 | `lemma` | [equivToUnitHom_mul_apply](../../../../NumberTheory/MulCharBasic.lean/declarations/equivtounithom-mul-apply.md) | 351 | `result-track:cb1a26b36f3dc8f865245e7d1e5d633b8a6aff9b905bfeaf80c0b84ef35b6f0b` |
| 45 | `def` | [mulEquivToUnitHom](../../../../NumberTheory/MulCharBasic.lean/declarations/mulequivtounithom.md) | 360 | `declaration-track:8afb12b9c5ce4df5915a7ecce09ceafa46c90fb0061c5406b2be3a12a7cdf939` |
| 46 | `lemma` | [eq_one_iff](../../../../NumberTheory/MulCharBasic.lean/declarations/eq-one-iff.md) | 388 | `result-track:7851d61a7731f2e9b819f339c75020ee4a3cdb1caf3a6d6180ae911c1f1f428e` |
| 47 | `lemma` | [ne_one_iff](../../../../NumberTheory/MulCharBasic.lean/declarations/ne-one-iff.md) | 391 | `result-track:a381e5030a8f3a30fbeb96beb742af5cf79a49e66b85e2df7ff106b3c84faf86` |
| 48 | `def` | [IsQuadratic](../../../../NumberTheory/MulCharBasic.lean/declarations/isquadratic.md) | 401 | `declaration-track:3a852071afbf056b624f134f4896a1988c750f99ca8bfcf18657efb7eee39cb8` |
| 49 | `theorem` | [IsQuadratic.eq_of_eq_coe](../../../../NumberTheory/MulCharBasic.lean/declarations/isquadratic-eq-of-eq-coe.md) | 406 | `result-track:5404f9c184069fcadfa3cfa30879384dc01aabd97af376fb4208a386e567aaa2` |
| 50 | `def` | [ringHomComp](../../../../NumberTheory/MulCharBasic.lean/declarations/ringhomcomp.md) | 413 | `declaration-track:189a6088fa1f4ed88c396ca8a0af82c363ff9b148c1999396a5007100386ab12` |
| 51 | `lemma` | [ringHomComp_one](../../../../NumberTheory/MulCharBasic.lean/declarations/ringhomcomp-one.md) | 419 | `result-track:33bc6d0959feee4689becb2bbc44ddfd42ad101f21e2d79a206fcdcc801022ab` |
| 52 | `lemma` | [ringHomComp_inv](../../../../NumberTheory/MulCharBasic.lean/declarations/ringhomcomp-inv.md) | 423 | `result-track:25b00e8c6a6e1b58eba1a680b8c1774240b57693d3276a9960650c5111f5d629` |
| 53 | `lemma` | [ringHomComp_mul](../../../../NumberTheory/MulCharBasic.lean/declarations/ringhomcomp-mul.md) | 428 | `result-track:d335057812d9015ef84460000b444f508b23cb2c68782c48dd7af9aa292f8956` |
| 54 | `lemma` | [ringHomComp_pow](../../../../NumberTheory/MulCharBasic.lean/declarations/ringhomcomp-pow.md) | 433 | `result-track:4ec9f3db01476c0ec05cd1c0ea91e14e167347ab7be2550a3ea9b8ff226f36e8` |
| 55 | `lemma` | [injective_ringHomComp](../../../../NumberTheory/MulCharBasic.lean/declarations/injective-ringhomcomp.md) | 439 | `result-track:b300599ccbea899a3be7e518fcaf979360835b51a3a7682c49f5f066c12cb40f` |
| 56 | `lemma` | [ringHomComp_eq_one_iff](../../../../NumberTheory/MulCharBasic.lean/declarations/ringhomcomp-eq-one-iff.md) | 445 | `result-track:cc183d38e76f063a0e0a9404c382fe5dfbe6074c41f6dc805d18d93630068017` |
| 57 | `lemma` | [ringHomComp_ne_one_iff](../../../../NumberTheory/MulCharBasic.lean/declarations/ringhomcomp-ne-one-iff.md) | 450 | `result-track:6cff04c27db464000eeba99cb7323a59593fcee59192bd15b55b2c692f01bf9f` |
| 58 | `theorem` | [IsQuadratic.comp](../../../../NumberTheory/MulCharBasic.lean/declarations/isquadratic-comp.md) | 455 | `result-track:d75bed5bb6bbeacc789139ea9e5a87b96dd71692758c1471242321af725a2358` |
| 59 | `theorem` | [IsQuadratic.inv](../../../../NumberTheory/MulCharBasic.lean/declarations/isquadratic-inv.md) | 461 | `result-track:3e94b7ee0bc3159971845fd03bcf58d1c929f4580c2bd4d7688afcdf57f0d44e` |
| 60 | `theorem` | [IsQuadratic.sq_eq_one](../../../../NumberTheory/MulCharBasic.lean/declarations/isquadratic-sq-eq-one.md) | 473 | `result-track:34d5fde86d3a30e89217401650f42568947813b091b7f9e4e2dd6c59424ab327` |
| 61 | `theorem` | [IsQuadratic.pow_char](../../../../NumberTheory/MulCharBasic.lean/declarations/isquadratic-pow-char.md) | 478 | `result-track:0f9a65c1f919d5580f4a684ba20790bd8e74084d3e3ecd0c2a9382524319c94c` |
| 62 | `theorem` | [IsQuadratic.pow_even](../../../../NumberTheory/MulCharBasic.lean/declarations/isquadratic-pow-even.md) | 488 | `result-track:384dd891c4f4dd869389f704a5b0f4972b99b1a5d0be5b04f554cd1538ac4a4d` |
| 63 | `theorem` | [IsQuadratic.pow_odd](../../../../NumberTheory/MulCharBasic.lean/declarations/isquadratic-pow-odd.md) | 494 | `result-track:b74b0c8f3cbc1edcdfa5fa0fa8acd697cc21c6da61b7560d43dcace408232b33` |
| 64 | `lemma` | [isQuadratic_iff_sq_eq_one](../../../../NumberTheory/MulCharBasic.lean/declarations/isquadratic-iff-sq-eq-one.md) | 501 | `result-track:ea1b71b1381e4719ce44e2381c8cd074b58741fff45bda5eeeb1e4ae9e4d17f7` |
| 65 | `lemma` | [pow_card_eq_one](../../../../NumberTheory/MulCharBasic.lean/declarations/pow-card-eq-one.md) | 530 | `result-track:edd5761fd05f4b20a05dead30b6f5219aefe9ce2023e8be078fbe92bc22410a0` |
| 66 | `lemma` | [orderOf_pos](../../../../NumberTheory/MulCharBasic.lean/declarations/orderof-pos.md) | 537 | `result-track:7c533a049c89484548aa67d891e2524239e0d740085d64569df7227af2f469d8` |
| 67 | `theorem` | [sum_eq_zero_of_ne_one](../../../../NumberTheory/MulCharBasic.lean/declarations/sum-eq-zero-of-ne-one.md) | 550 | `result-track:58c71c9e310d770b951d90ae4aa1fb599ad406589feeac55e94c87ed89cd8529` |
| 68 | `theorem` | [sum_one_eq_card_units](../../../../NumberTheory/MulCharBasic.lean/declarations/sum-one-eq-card-units.md) | 557 | `result-track:b9b48c38cd55439003043e3266ddf8df01f74299558571fb5bb976da0cae15eb` |
| 69 | `lemma` | [val_neg_one_eq_one_of_odd_order](../../../../NumberTheory/MulCharBasic.lean/declarations/val-neg-one-eq-one-of-odd-order.md) | 584 | `result-track:1ffa9d1a9c71b51aafd48289f7cb37af45fca191cebf7779f3db823101a1d5e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9698cad9612ffcd564b4632a085aa87b8c8f550fced80e6f70934a17106c176b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean","GRWTSK/_verification/specifications/NumberTheory/Basic/Variant93a58729b6a78ee08cbde42fa6bb96c34f2f1b7f256fa388a87f1bda2576a10d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
