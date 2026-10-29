# Verification target: Orthonormal Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4c22139138eb648768f026facb5298a12688bf38",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/index.md) · [Full source](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4c22139138eb648768f026facb5298a12688bf38`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Orthonormal](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal.md) | 59 | `declaration-track:22d995d21a0c440188064392e74df9ad7a70ea44e3ad2cafacd8deb31d7cdea7` |
| 2 | `lemma` | [Orthonormal.of_isEmpty](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-of-isempty.md) | 65 | `result-track:fc8db20465b679c5870dc39b9413fbcb6eb90576dd634bd5359e237e9c3216ee` |
| 3 | `lemma` | [orthonormal_vecCons_iff](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-veccons-iff.md) | 69 | `result-track:25a8873259c54c7cc2de462fec3df92f99c282ef3722bcd7dc79213d06db1adb` |
| 4 | `lemma` | [Orthonormal.norm_eq_one](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-norm-eq-one.md) | 74 | `result-track:ff3cc8d84ba865a6cc1bf88e71a03ca148ae17ef79f5b92baf3fec27d1aed28f` |
| 5 | `lemma` | [Orthonormal.nnnorm_eq_one](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-nnnorm-eq-one.md) | 77 | `result-track:c66a4dd9e86e83b1a1cbc7df578ff8d7f26b7e3c0a7867d773b8d3ddd5a4d1ef` |
| 6 | `lemma` | [Orthonormal.enorm_eq_one](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-enorm-eq-one.md) | 82 | `result-track:265143e6c9b42aea8ee9425373cc288ee6870865b45105d61d2632825bffa20f` |
| 7 | `lemma` | [Orthonormal.inner_eq_zero](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-eq-zero.md) | 85 | `result-track:6806cf46a4459253bf1b8c555489cf0f2278b73c88fb9d50535a095dfe6bb63d` |
| 8 | `theorem` | [orthonormal_iff_ite](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-iff-ite.md) | 90 | `result-track:5368d72fbac73c7f025b1751a1e679b168065fae9d1e90e26782ce3b3cca2c26` |
| 9 | `theorem` | [orthonormal_subsingleton_iff](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-subsingleton-iff.md) | 109 | `result-track:c6dd76a1a2548def15f27e8f443de09ead910433591738c76f7f7ddfbaaeed9f` |
| 10 | `theorem` | [orthonormal_subtype_iff_ite](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-subtype-iff-ite.md) | 115 | `result-track:f604fb625a96beead7fa00284dbf8ac943cc8f95f8101f1d737fcbeef30a032d` |
| 11 | `theorem` | [Orthonormal.inner_right_finsupp](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-right-finsupp.md) | 122 | `result-track:123e3240638ca40498aeacc79720f652fe93a90870818e96412690c9be98564b` |
| 12 | `theorem` | [Orthonormal.inner_right_sum](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-right-sum.md) | 130 | `result-track:1615e038f80cbabb4a6e4b024b8dbd04d2f2af61690ba121250748c9de40642b` |
| 13 | `theorem` | [Orthonormal.inner_right_fintype](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-right-fintype.md) | 137 | `result-track:394e7b0f890dedaf4dca10ebdf096b1567d034fda6dc215cebac814e765b97b7` |
| 14 | `theorem` | [Orthonormal.inner_left_finsupp](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-left-finsupp.md) | 143 | `result-track:f896513c0283a0456b3c9523cd2b23d507e44dc43d36519d62551a0c54c5ca8d` |
| 15 | `theorem` | [Orthonormal.inner_left_sum](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-left-sum.md) | 148 | `result-track:5e11706494b3424d4c81873cbd0ae6accdd1cb6124f368d4222aa76b7f966678` |
| 16 | `theorem` | [Orthonormal.inner_left_fintype](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-left-fintype.md) | 156 | `result-track:c045be7bbc2cdb159aa562615607775fac5616a74e882f98b8e9aa8c6623103f` |
| 17 | `theorem` | [Orthonormal.inner_finsupp_eq_sum_left](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-finsupp-eq-sum-left.md) | 162 | `result-track:b685490e5f33fd225f73600437ff69cc8bb0447eaa5b3adcd4c27bfdcdfedc05` |
| 18 | `theorem` | [Orthonormal.inner_finsupp_eq_sum_right](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-finsupp-eq-sum-right.md) | 168 | `result-track:52b54e98f66475aef6c3f8c16a4c95ad204efb414a604fdd0f51119e33debeab` |
| 19 | `theorem` | [Orthonormal.inner_sum](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-sum.md) | 175 | `result-track:bb937cd6ffad639da350cb334ae20cf9d92cd254078fb608ba8a8c94ff493db7` |
| 20 | `theorem` | [Orthonormal.inner_left_right_finset](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-left-right-finset.md) | 185 | `result-track:c030472806dd498f6cf00b77bcc409458e48bd68471858e40122052a1c307000` |
| 21 | `theorem` | [Orthonormal.linearIndependent](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-linearindependent.md) | 191 | `result-track:a1b6c6e96de9a334dfc3a9d48d4c9c29cdc4770d94175cf02c8047afc14df47a` |
| 22 | `theorem` | [Orthonormal.comp](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-comp.md) | 201 | `result-track:a01d801e180f419e404077b3118989ed6f0f1ff73372202e2b2fbb9dc6ec1384` |
| 23 | `theorem` | [orthonormal_subtype_range](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-subtype-range.md) | 211 | `result-track:285c6b9b95533bc93861719e6dec921fa5f13bc8562355626ab90c07c2af4c9b` |
| 24 | `theorem` | [Orthonormal.toSubtypeRange](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-tosubtyperange.md) | 220 | `result-track:a56bf8ddd2f522d7d21901590a868ee241c48d01324e46ce6f40a13856b0c467` |
| 25 | `theorem` | [Orthonormal.inner_finsupp_eq_zero](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-finsupp-eq-zero.md) | 226 | `result-track:1247cd95cdb402d1f35a17f168704a8e8ced6d29ff8ece14c03a49f73119835e` |
| 26 | `theorem` | [Orthonormal.orthonormal_of_forall_eq_or_eq_neg](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-orthonormal-of-forall-eq-or-eq-neg.md) | 234 | `result-track:a21755615b80cac2164958172dd4ee6a55025c74d9eb2809e8656c664578a91d` |
| 27 | `theorem` | [orthonormal_empty](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-empty.md) | 249 | `result-track:3da51edbfa1d9eab318d64f1f12c8410c2259b670e254e09f11f605a73cca31a` |
| 28 | `theorem` | [orthonormal_iUnion_of_directed](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-iunion-of-directed.md) | 254 | `result-track:b21defee0112112f24c1f9c56401eac5c38d0463ff937586ee60a7bb91456f8b` |
| 29 | `theorem` | [orthonormal_sUnion_of_directed](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-sunion-of-directed.md) | 265 | `result-track:ec360748bb0dedca7c086f7e52cef495f95224d3c36eaacb09747b4a1049a795` |
| 30 | `theorem` | [exists_maximal_orthonormal](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/exists-maximal-orthonormal.md) | 272 | `result-track:1ecaf36035ae00b9e97d7da6c6ae7cb51128d0791537531485269e28f08da878` |
| 31 | `def` | [basisOfOrthonormalOfCardEqFinrank](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/basisoforthonormalofcardeqfinrank.md) | 285 | `declaration-track:9a8b165b4accb6206b93a9fc42fe329cbfe60fb8ff377f99c0f107fecfe04552` |
| 32 | `theorem` | [coe_basisOfOrthonormalOfCardEqFinrank](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/coe-basisoforthonormalofcardeqfinrank.md) | 290 | `result-track:cc0564bfe38767b92a4729945e6076a2418ae308358f4bf64a1a2b6d669454b5` |
| 33 | `theorem` | [Orthonormal.ne_zero](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-ne-zero.md) | 295 | `result-track:bcc09de5496e90d868d7be0ca79a2ee487d49f96017dbc214592298d9e5df195` |
| 34 | `theorem` | [LinearIsometry.orthonormal_comp_iff](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/linearisometry-orthonormal-comp-iff.md) | 318 | `result-track:f80e510332212ff6b9a1be9711666d7a3847193d78493fc39d204b018108cbe9` |
| 35 | `theorem` | [Orthonormal.comp_linearIsometry](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-comp-linearisometry.md) | 323 | `result-track:5cd90e5dec9a3ec7ac1f20872df62101f1bf60fe56804deac8b309c04994c323` |
| 36 | `theorem` | [Orthonormal.comp_linearIsometryEquiv](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-comp-linearisometryequiv.md) | 327 | `result-track:843b1f0e63c3431ea23b093773f5a33c9a012cc4b4b9abf1b6cd03143b6ede8f` |
| 37 | `theorem` | [Orthonormal.mapLinearIsometryEquiv](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-maplinearisometryequiv.md) | 333 | `result-track:86ebe8aab6c810a91097195f20767622e6110a1044050f0db0add9bb6f30db99` |
| 38 | `def` | [LinearMap.isometryOfOrthonormal](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/linearmap-isometryoforthonormal.md) | 338 | `declaration-track:2e5d01fc8c1f81596777cc0eeb6444c2ef2899acbc549ca033695bbfb61e0226` |
| 39 | `theorem` | [LinearMap.coe_isometryOfOrthonormal](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/linearmap-coe-isometryoforthonormal.md) | 346 | `result-track:90eb391ed534e89180b73b513fc001894706a45ccf7068f584d9cf25652bce48` |
| 40 | `theorem` | [LinearMap.isometryOfOrthonormal_toLinearMap](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/linearmap-isometryoforthonormal-tolinearmap.md) | 351 | `result-track:10e046ca54f6ef56d37b139a16d835ea7347f939dd497af9ea2dbdc918a0af17` |
| 41 | `def` | [LinearEquiv.isometryOfOrthonormal](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/linearequiv-isometryoforthonormal.md) | 358 | `declaration-track:5f1a83ece501d933e2b372bb87d09dfe76927764bf96e041df70e0a96d24f2c2` |
| 42 | `theorem` | [LinearEquiv.coe_isometryOfOrthonormal](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/linearequiv-coe-isometryoforthonormal.md) | 367 | `result-track:9ae70520fd537881755f6df7e7a3ed28d8dc6b0823d7b5000165f3b549dbfde9` |
| 43 | `theorem` | [LinearEquiv.isometryOfOrthonormal_toLinearEquiv](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/linearequiv-isometryoforthonormal-tolinearequiv.md) | 372 | `result-track:b39f710f68bc4687807da0de335fc5eddb7b83b11a738cd30f057ad87995aa49` |
| 44 | `def` | [Orthonormal.equiv](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-equiv.md) | 378 | `declaration-track:5d0e539d7965d875b0a06a7baec71fb33fe755f091b0d0ebdf6b3432d4f993a8` |
| 45 | `theorem` | [Orthonormal.equiv_toLinearEquiv](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-equiv-tolinearequiv.md) | 389 | `result-track:97df83278a40a028f03fd571b8cbc063e8ce48edacd94082210812a09efda894` |
| 46 | `theorem` | [Orthonormal.equiv_apply](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-equiv-apply.md) | 395 | `result-track:9924f1be1622bc156b41cda8f802462ac3d266d2968f38c57682b4c097b52901` |
| 47 | `theorem` | [Orthonormal.equiv_trans](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-equiv-trans.md) | 401 | `result-track:d6b2387bf13704ef82b44806b16b487388990ac9c5146c48ed8a1a8f5576decd` |
| 48 | `theorem` | [Orthonormal.map_equiv](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-map-equiv.md) | 408 | `result-track:86d9d1bb11613746dde8406d5894f8850a5a67ae985ecbd6cbe5ae23d9520ffa` |
| 49 | `theorem` | [Orthonormal.equiv_refl](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-equiv-refl.md) | 420 | `result-track:b0950d417f05402ea9c7784b7c7a296ab8a71135108797d3483219c678cbc3f3` |
| 50 | `theorem` | [Orthonormal.equiv_symm](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-equiv-symm.md) | 426 | `result-track:b34649311761b44d05119bb20570915be8d580ca1e18e4834ad89030d6d5fee7` |
| 51 | `theorem` | [Orthonormal.sum_inner_products_le](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-sum-inner-products-le.md) | 445 | `result-track:acf2a7c9dc667486be117c733d81958ada49823c778d1bc34b90e51e78fe2049` |
| 52 | `theorem` | [Orthonormal.tsum_inner_products_le](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-tsum-inner-products-le.md) | 464 | `result-track:a9324c105c7ba044fe4ef798557d8c48e0110021a035357694d7dd5d8b5d845c` |
| 53 | `theorem` | [Orthonormal.inner_products_summable](../../../../FunctionalAnalysis/OrthonormalNamespacedPublic.lean/declarations/orthonormal-inner-products-summable.md) | 470 | `result-track:8b18fbd58757023165cc26b7a312a77a73f0f8f764e67877b7200bad452e1e63` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ef012e891ec0799e0898cd11ca96c8e764744d255142f62e71e973a74d85b5c6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Orthonormal/Variant221f8ef8a73788a40fae90b2f54ac0b5f89ad30afa02fcdc39be780b4cc490ab.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
