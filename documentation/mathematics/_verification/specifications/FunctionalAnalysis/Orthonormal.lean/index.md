# Verification target: Orthonormal

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07b398494eadbbe032fd777026bc3b3ca030bf19",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/Orthonormal.lean/index.md) · [Full source](../../../../FunctionalAnalysis/Orthonormal.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07b398494eadbbe032fd777026bc3b3ca030bf19`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.LinearMap` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional.Lemmas` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.LocalRing.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Orthonormal](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal.md) | 48 | `declaration-track:eb4eb552d0418ee6b0519f7c3f9332a5a28a0565ee73407289719f164a781ace` |
| 2 | `lemma` | [Orthonormal.norm_eq_one](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-norm-eq-one.md) | 53 | `result-track:8fcf35c70529f22f83833fd4404a95fb1d48cf2af005eb6be37e4457ba857a7c` |
| 3 | `lemma` | [Orthonormal.nnnorm_eq_one](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-nnnorm-eq-one.md) | 56 | `result-track:b3b63e00d1ceb15f1756ba03029d63a518b22ae731119cc8e5b87bdf5895d4f8` |
| 4 | `lemma` | [Orthonormal.enorm_eq_one](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-enorm-eq-one.md) | 61 | `result-track:9f8deaf9d2e2ff67b19d03ea3368ccee66920a77ef617395e109ed3595884c2d` |
| 5 | `lemma` | [Orthonormal.inner_eq_zero](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-eq-zero.md) | 64 | `result-track:a0969a79ad6aa975f5211f2389adb2b3a678c664da8b60740682506026e97f02` |
| 6 | `theorem` | [orthonormal_iff_ite](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-iff-ite.md) | 69 | `result-track:6f200726b41e9b1533a7fa69b9d55305eec6c3001f70fa74c24174b09eeb4c14` |
| 7 | `theorem` | [orthonormal_subtype_iff_ite](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-subtype-iff-ite.md) | 88 | `result-track:28f1b89128d0873aa350dd7a6cf52d7482c4ec8a825a0a31e1cd73604fa9b447` |
| 8 | `theorem` | [Orthonormal.inner_right_finsupp](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-right-finsupp.md) | 101 | `result-track:eed27e86377b0ead7051d31f459dc1d4236e99d23b829cb683c3647b61667be0` |
| 9 | `theorem` | [Orthonormal.inner_right_sum](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-right-sum.md) | 108 | `result-track:e364f06044c73a99ce2120b08ee64b859c42e3dbadf1397375e288efa7cac7cc` |
| 10 | `theorem` | [Orthonormal.inner_right_fintype](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-right-fintype.md) | 115 | `result-track:247088df8388fbb9785f383286b9e38bb7d9085957f1cf70bf1a5ba2aa564c76` |
| 11 | `theorem` | [Orthonormal.inner_left_finsupp](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-left-finsupp.md) | 121 | `result-track:cf72b6415e12573c0605fa1d8fb23732fdba062ce539666921c1f0aa5b3e0d60` |
| 12 | `theorem` | [Orthonormal.inner_left_sum](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-left-sum.md) | 126 | `result-track:8dc0021ce6511c761869bd5870df951ac3b39adebd08224405d37c29f37bdfc6` |
| 13 | `theorem` | [Orthonormal.inner_left_fintype](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-left-fintype.md) | 134 | `result-track:e37d7b5cdfb74877a83e08120be4779113026a3b18737b1564d5b39caa25b822` |
| 14 | `theorem` | [Orthonormal.inner_finsupp_eq_sum_left](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-finsupp-eq-sum-left.md) | 140 | `result-track:4e0c1a90245c74f797f2fa557a1d896053b4868c87609fd78faa300767d043e6` |
| 15 | `theorem` | [Orthonormal.inner_finsupp_eq_sum_right](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-finsupp-eq-sum-right.md) | 146 | `result-track:00fba24db9fb59fc090151ab69fc1d24be32e4e3bf869d40dbc0b80119e0137b` |
| 16 | `theorem` | [Orthonormal.inner_sum](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-sum.md) | 153 | `result-track:4ba7259b82b87f3f62c9f84e9180d9fc8abf4e8aa8e3568264050b7fe5b8a1d7` |
| 17 | `theorem` | [Orthonormal.inner_left_right_finset](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-left-right-finset.md) | 163 | `result-track:aa99bcc8cbdb4fa0bf743b09b92674c7e8c08fcc146f0c1486b14a1dd98d3725` |
| 18 | `theorem` | [Orthonormal.linearIndependent](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-linearindependent.md) | 169 | `result-track:5f54cae256311fd0c942782dd28f77de2091c834d814b5c3c80a18fe1c3470dd` |
| 19 | `theorem` | [Orthonormal.comp](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-comp.md) | 179 | `result-track:0230c3728673d67a65307889ad13a68473ab4ebc466e69fa026fe2651836da4e` |
| 20 | `theorem` | [orthonormal_subtype_range](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-subtype-range.md) | 189 | `result-track:46adfc297717b675016024905c64a8d1eb2be896d8b544012af1a0809065050d` |
| 21 | `theorem` | [Orthonormal.toSubtypeRange](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-tosubtyperange.md) | 198 | `result-track:f526795f593450ac11186f6928138b57c9d8d54306c18ce21711528d11723b79` |
| 22 | `theorem` | [Orthonormal.inner_finsupp_eq_zero](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-finsupp-eq-zero.md) | 204 | `result-track:363ddbac3378f90faed38a25be56ca9f8a398530deaccffc7b4dccd1e7380e0c` |
| 23 | `theorem` | [Orthonormal.orthonormal_of_forall_eq_or_eq_neg](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-orthonormal-of-forall-eq-or-eq-neg.md) | 212 | `result-track:5f531501ad2fef6450346b784cc9afc2a402ca72e5fecc82c0bdc75c7e33b4ac` |
| 24 | `theorem` | [orthonormal_empty](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-empty.md) | 227 | `result-track:1b0ff2a325503d6a3e687162a832873d84622e243b3db1353b9dc0b6336cb201` |
| 25 | `theorem` | [orthonormal_iUnion_of_directed](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-iunion-of-directed.md) | 233 | `result-track:13eb8cac8f4486fddecc226e270ad425034e30e50dd849199ebb74612985dbe8` |
| 26 | `theorem` | [orthonormal_sUnion_of_directed](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-sunion-of-directed.md) | 244 | `result-track:b5698c3b98cb1a7037c5d22189e3f39a34e53c3f780ee569891426c57333391f` |
| 27 | `theorem` | [exists_maximal_orthonormal](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/exists-maximal-orthonormal.md) | 251 | `result-track:e4e8bd3edbca95f898841ea27ea80a02618ccfb4f0dc0f88d1a186848e372ea6` |
| 28 | `def` | [basisOfOrthonormalOfCardEqFinrank](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/basisoforthonormalofcardeqfinrank.md) | 264 | `declaration-track:c39b8cdb57b29192edcd3079808d8d0278ed605c893e11b510eb6299075e5cb5` |
| 29 | `theorem` | [coe_basisOfOrthonormalOfCardEqFinrank](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/coe-basisoforthonormalofcardeqfinrank.md) | 269 | `result-track:04763626ae17beac7a11d50570653bccccb46731dd3df4fa4d7e4f85e37f4f6c` |
| 30 | `theorem` | [Orthonormal.ne_zero](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-ne-zero.md) | 274 | `result-track:7a039411fe15d04aac688375c5bae30ff1c96a4d6b263a62505588d9d0870744` |
| 31 | `theorem` | [LinearIsometry.orthonormal_comp_iff](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/linearisometry-orthonormal-comp-iff.md) | 297 | `result-track:14344fd8f627f7443cbc79f4ec1e6cb02c681b89db97f3aaec9d9909b335eb6b` |
| 32 | `theorem` | [Orthonormal.comp_linearIsometry](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-comp-linearisometry.md) | 302 | `result-track:2781edfc093384e9492967c9291595091065f1c7a3b7e96cc7cdff5c292d35d3` |
| 33 | `theorem` | [Orthonormal.comp_linearIsometryEquiv](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-comp-linearisometryequiv.md) | 306 | `result-track:6eb5711d021bb5f12adb1e7203e8a9e25e5aa3725f7a7e9a9464b359f53bf63c` |
| 34 | `theorem` | [Orthonormal.mapLinearIsometryEquiv](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-maplinearisometryequiv.md) | 312 | `result-track:24d61a49e4f22f6f68ee0128aa49671f7e3c81ecb3861e6ea60c11e1da5ef688` |
| 35 | `def` | [LinearMap.isometryOfOrthonormal](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/linearmap-isometryoforthonormal.md) | 317 | `declaration-track:df9a1693f3aa50934d68a1290c76ed6cc839c4389958ac0032d1ffc72544aae5` |
| 36 | `theorem` | [LinearMap.coe_isometryOfOrthonormal](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/linearmap-coe-isometryoforthonormal.md) | 325 | `result-track:e0929cae0bf49c04407af56c6c1451f50ae605ea1677bc300e485f3297511327` |
| 37 | `theorem` | [LinearMap.isometryOfOrthonormal_toLinearMap](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/linearmap-isometryoforthonormal-tolinearmap.md) | 330 | `result-track:e235de653a77af17c33eced39b511dd8cc20c0ea1fdee0df4485435565be12db` |
| 38 | `def` | [LinearEquiv.isometryOfOrthonormal](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/linearequiv-isometryoforthonormal.md) | 337 | `declaration-track:88d60d9ecdd067756a753c21c24e256f38a6f15497149a24d017757291734a5b` |
| 39 | `theorem` | [LinearEquiv.coe_isometryOfOrthonormal](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/linearequiv-coe-isometryoforthonormal.md) | 346 | `result-track:6fb5fae9fb1254c2bac1a7fd3f345ee14eeae2ca36e77e6d53417cc0bf357006` |
| 40 | `theorem` | [LinearEquiv.isometryOfOrthonormal_toLinearEquiv](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/linearequiv-isometryoforthonormal-tolinearequiv.md) | 351 | `result-track:56bd31f4761ae2be499547eccf2ee7767682a6005fa1f03d33183a4fc3f6c929` |
| 41 | `def` | [Orthonormal.equiv](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-equiv.md) | 357 | `declaration-track:5ba96798e32e16639c661d88afb097230504d7b71275dd94bf2b2481efdd5aea` |
| 42 | `theorem` | [Orthonormal.equiv_toLinearEquiv](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-equiv-tolinearequiv.md) | 368 | `result-track:72de82d217b321bc2342defc091d8c3106d9ec7892887efa52b186ff0458090d` |
| 43 | `theorem` | [Orthonormal.equiv_apply](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-equiv-apply.md) | 374 | `result-track:0b7dab89984339fcdea35f041792f9621ea031a57f5d829ab4fb9782e700dddf` |
| 44 | `theorem` | [Orthonormal.equiv_trans](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-equiv-trans.md) | 380 | `result-track:c5c1d698ef769fb86210dfe0092bb92fdd759a950dc9588d4f7cb852d7c7a0a3` |
| 45 | `theorem` | [Orthonormal.map_equiv](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-map-equiv.md) | 387 | `result-track:c6b8082c281de0a4999dabe83d7c151ffb8c911ec81480c0908d99b350b58b51` |
| 46 | `theorem` | [Orthonormal.equiv_refl](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-equiv-refl.md) | 399 | `result-track:1ffaf23817e2ab2217ebd02b632daea5166cb5a29d359965d81f22bc065ea62a` |
| 47 | `theorem` | [Orthonormal.equiv_symm](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-equiv-symm.md) | 405 | `result-track:93fcea7a18d673e7fe5d64c00952547daf0370411397757fc820e59169f79c36` |
| 48 | `theorem` | [Orthonormal.sum_inner_products_le](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-sum-inner-products-le.md) | 424 | `result-track:5353ec95674c49b4f1dd36c8fc8a1bb265daf4f451187991a90731e58a186174` |
| 49 | `theorem` | [Orthonormal.tsum_inner_products_le](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-tsum-inner-products-le.md) | 443 | `result-track:d51b65988d2dfaa9824493a37cbc792e48e1e0d498cf0055938703d6b5205691` |
| 50 | `theorem` | [Orthonormal.inner_products_summable](../../../../FunctionalAnalysis/Orthonormal.lean/declarations/orthonormal-inner-products-summable.md) | 449 | `result-track:3650a260913d4692cd8f7c5d2779594dfdaa64673ad28e687425dad07c5e46d5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=23d99159f83503368bddb6dd0eca46233128778d6cc4c61d730475ac537c5152 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Orthonormal/Variant75b8c720f5884e1f41451c8078e7a63927db919462110a658ab1dc363459e547.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
