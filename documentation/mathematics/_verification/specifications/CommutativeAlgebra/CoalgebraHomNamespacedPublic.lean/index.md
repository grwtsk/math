# Verification target: Coalgebra Hom Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1c4c92e7e7aef7cb5fb2dd6e1166f55cb71a1c7",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/index.md) · [Full source](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1c4c92e7e7aef7cb5fb2dd6e1166f55cb71a1c7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean.json)

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
| 1 | `structure` | [CoalgHom](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coalghom.md) | 45 | `declaration-track:8fc374e3cec93b64327126fcd3369c7fed6ffcdebf3db4828bc49e5ff7ec3110` |
| 2 | `class` | [CoalgHomClass](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coalghomclass-source-edition-2.md) | 59 | `declaration-track:f3c7ffe440fdb25b965c5702f7d84ae19ea817b3c3c05cc00ee2e28750c36c01` |
| 3 | `def` | [Coalgebra Hom Namespaced Public](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/ofclass.md) | 79 | `declaration-track:84488a637827ca6fd61f047fadaed918199896e2b8d46e30a440d0a88149ed1d` |
| 4 | `instance` | [instCoeToCoalgHom](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/instcoetocoalghom.md) | 87 | `declaration-track:dcdf648dacdbac24749bbf8f7cd5ed46250822211d396749b71306a55d3b0667` |
| 5 | `theorem` | [counit_comp_apply](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/counit-comp-apply.md) | 90 | `result-track:1bd05f8f6a8ba937327c1236f2a9e7818d1da845216454d85257a0e20d822b03` |
| 6 | `theorem` | [map_comp_comul_apply](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/map-comp-comul-apply.md) | 94 | `result-track:c2d35d372ccc58421ce4a83bef1a971e726316e5781766453944ba43cd0d0b16` |
| 7 | `instance` | [funLike](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/funlike.md) | 111 | `declaration-track:efefd7f60192dc0594f64b0054fb3940a9d11bce477e4cb6bc09106768513a6c` |
| 8 | `instance` | [coalgHomClass](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coalghomclass.md) | 118 | `declaration-track:c9a0b338cd9092fc988803afc87f6c65e7b5ad370e271c2c538974403c185923` |
| 9 | `def` | [Simps.apply](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/simps-apply.md) | 125 | `declaration-track:3d8c64f61f3225330b8eb153979eebcd7e5d72c43e2951b5ddbf733224b0cfeb` |
| 10 | `theorem` | [coe_ofClass](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coe-ofclass.md) | 133 | `result-track:04a012c7c4c4a6887a912258fc2e439bbe4fe018a55c04f1d9d25ddf3eafaaa1` |
| 11 | `theorem` | [coe_mk](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coe-mk.md) | 140 | `result-track:79de66c27760bc7d9f99d0ca2ac1719c30d64ad30b6e33ec42d32d79ff72affd` |
| 12 | `theorem` | [coe_mks](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coe-mks.md) | 144 | `result-track:aab79f026c0da648cb7d9e5f53f085c92641825ac2c539b1f692987ab0a11ac2` |
| 13 | `theorem` | [coe_linearMap_mk](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coe-linearmap-mk.md) | 148 | `result-track:9dbf0857363d2fb0e065468f8d6a7bff2d54ea8298ef44872035b0dd064e104d` |
| 14 | `theorem` | [toLinearMap_eq_ofClass](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/tolinearmap-eq-ofclass.md) | 152 | `result-track:4414554bac18ee7b4308e5809c8fdc4b42891bdd865527cf464c47999825d9e0` |
| 15 | `theorem` | [coe_linearMapOfClass](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coe-linearmapofclass.md) | 158 | `result-track:674daeb26e226b4fb7995a8b328051e5376dca423910262e3c57644149ffafa3` |
| 16 | `theorem` | [coe_toAddMonoidHom](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coe-toaddmonoidhom.md) | 164 | `result-track:7401249a4b631a1fd8fe6c5d9964af91d55e204014102949b4d4adc6630f885f` |
| 17 | `theorem` | [coe_injective](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coe-injective.md) | 167 | `result-track:6eb5fa23f3b0e8267a2aed13519bdc5bd9ac52b668dd80d61cab7dd11441c8c3` |
| 18 | `theorem` | [coe_inj](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coe-inj.md) | 170 | `result-track:9169eb5cc497edc6a29e92fa10dedaa267f3898044f3ac7654bfdd045f4b321e` |
| 19 | `theorem` | [linearMapOfClass_injective](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/linearmapofclass-injective.md) | 176 | `result-track:56c56075766c0a764abf153cb33fc61842489b3ba16098663b026bfd66593dd4` |
| 20 | `theorem` | [coe_addMonoidHom_injective](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coe-addmonoidhom-injective.md) | 182 | `result-track:78e16785cca1375688cfd2265dd7d1c1165e279e8c82245387cd7de569d326b8` |
| 21 | `theorem` | [congr_fun](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/congr-fun.md) | 185 | `result-track:98a9b4695277ca22f3d6a62afd4cd307a29064fcf24874866d7fa70c54df737d` |
| 22 | `theorem` | [congr_arg](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/congr-arg.md) | 188 | `result-track:54f9900e4f6e135f0808c8fcf6c37d132a49a1e3478c1ace4e6d4236a29b321c` |
| 23 | `theorem` | [ext](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/ext.md) | 192 | `result-track:09cdf90807d889f852ddd3880c5dc06dba028a9adade9b83b810b500ec852e88` |
| 24 | `theorem` | [ext_of_ring](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/ext-of-ring.md) | 196 | `result-track:6065b9cf493d82fd324c910f3dc84711596f7577ec5fb5e7c4831698a52b6470` |
| 25 | `theorem` | [mk_coe](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/mk-coe.md) | 200 | `result-track:e90534d60b48b4906b22c2b912b503d0d207d3c318016d315456ccad398e0fc4` |
| 26 | `def` | [copy](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/copy.md) | 205 | `declaration-track:e5f5110bf1b76ce9b87ab2241b1d05e1b4e721d73a3e2dcb759e5e339c529d38` |
| 27 | `theorem` | [coe_copy](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coe-copy.md) | 212 | `result-track:a6d5a9e5182c69bf53ad1fad9767e25f0e90f87a8f56fa59d50e0a4265064bea` |
| 28 | `theorem` | [copy_eq](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/copy-eq.md) | 215 | `result-track:ca1339b7acacaef398f14398d97e491fcff124d6de108caa87ec067a65657d54` |
| 29 | `def` | [id](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/id.md) | 221 | `declaration-track:b1a5b5955c184edd015994903108d4238b2f5369591691ec80e9dcf3c730acba` |
| 30 | `theorem` | [coe_id](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coe-id.md) | 229 | `result-track:b9a645a9d2b16c722e6b49ed1257a24780a24d92ceb6736122b8fba9a19f6aa8` |
| 31 | `theorem` | [id_toLinearMap](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/id-tolinearmap.md) | 233 | `result-track:384b66bd7c33d82ae97e1ad1c32da4f41240baf7dd07df4c736646b42de32e17` |
| 32 | `def` | [comp](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/comp.md) | 236 | `declaration-track:dccfa1790577044406c2e245ff2bacc676acb1238f05c49d700c1c814879330b` |
| 33 | `theorem` | [coe_comp](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/coe-comp.md) | 242 | `result-track:201166d8413ef0d930b5e8d0190a14eabb1e19eb1c8899a1ab21a9f110ed4b35` |
| 34 | `theorem` | [comp_toLinearMap](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/comp-tolinearmap.md) | 245 | `result-track:72f894c32c49e1f81935dce852f579f456156ed5ff045cf3afb9819e791fdd63` |
| 35 | `theorem` | [comp_id](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/comp-id.md) | 251 | `result-track:dcc44cf72305e63a0abe0a4bab2d8f71282565bca83fe15f322ae97eb31d46ef` |
| 36 | `theorem` | [id_comp](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/id-comp.md) | 255 | `result-track:4cd3e89903a4efb9d9817e852e17733ba1b14674b9e09763069ee30c93ff7d40` |
| 37 | `theorem` | [comp_assoc](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/comp-assoc.md) | 258 | `result-track:a919834cba470407385ced9f7dca8f636adfc07ab8d284fa39980b65797e59dc` |
| 38 | `theorem` | [map_smul_of_tower](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/map-smul-of-tower.md) | 262 | `result-track:66e49a3bc473e0f503cf59c56e82e2ebadb393814fa8232150e13dbadf489093` |
| 39 | `instance` | [End](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/end.md) | 267 | `declaration-track:724c4e9360e110a67aab6296589a0c4e696ac2503f2f08177bfa8147e6dd1c72` |
| 40 | `theorem` | [one_apply](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/one-apply.md) | 275 | `result-track:5d3cb2fb36a88a348620a1ae1b7024abed24bafd45d4e52dad974a24ab712db2` |
| 41 | `theorem` | [mul_apply](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/mul-apply.md) | 279 | `result-track:cc8f2348d895e40aa3a6b0b9ba3620e0b1b95910cf04c5effd38e40c9926564e` |
| 42 | `def` | [counitCoalgHom](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/counitcoalghom.md) | 294 | `declaration-track:9dbe95ba6e65822829ddd9204303b48c753057fc2c584e5afad0ca1d8834e463` |
| 43 | `theorem` | [counitCoalgHom_apply](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/counitcoalghom-apply.md) | 303 | `result-track:8a126fbc68b338757420dbc76e102f76f207dbbed0230295b7ff9a26205f0b20` |
| 44 | `theorem` | [counitCoalgHom_toLinearMap](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/counitcoalghom-tolinearmap.md) | 307 | `result-track:a1111866f55605c8b49e7f5341c4534b337629df019f3e5e142f21da2c3b49a0` |
| 45 | `instance` | [subsingleton_to_ring](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/subsingleton-to-ring.md) | 312 | `declaration-track:d63ee558ed748a8a1830e5e820abd09d32226d25c8ca09c27cd3a7fef104178b` |
| 46 | `theorem` | [ext_to_ring](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/ext-to-ring.md) | 319 | `result-track:0af209a53e535fa0b3a15f759cc1148663277aa3ad591332f2e63e7f375ccde8` |
| 47 | `def` | [Repr.induced](../../../../CommutativeAlgebra/CoalgebraHomNamespacedPublic.lean/declarations/repr-induced.md) | 326 | `declaration-track:ba0f2a54ebe91b56fc68f593cdbab4c36d1dd29e0ae211d18071b0cf9711aa82` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=034559b5ae7c136dee64ce4d40919136649868e770d5229f24243013c93b2d01 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Hom/Variant912d87bbec258cffa4e57296212fe7ca41c02eb898e539c3906b3dde8c214c94.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
