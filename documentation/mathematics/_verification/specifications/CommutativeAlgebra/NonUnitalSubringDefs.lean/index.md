# Verification target: Non Unital Subring Defs

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "70133f904023607a1db3483890d786004697b0d3",
  "lexical_observation_count": 57,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Defs/Variant0b9215cd60040f1c5429713e38be74e88ca080e0c9bd7871150e67f88fc3cc3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/index.md) · [Full source](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `70133f904023607a1db3483890d786004697b0d3`.

Source path: `GRWTSK/Algebra/RingTheory/Defs/Variant0b9215cd60040f1c5429713e38be74e88ca080e0c9bd7871150e67f88fc3cc3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Defs/Variant0b9215cd60040f1c5429713e38be74e88ca080e0c9bd7871150e67f88fc3cc3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.NonUnitalSubsemiring.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FastInstance` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NonUnitalSubringClass](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/nonunitalsubringclass.md) | 50 | `declaration-track:b533ce473534f148f1c903329c91027246b3d6e3a6d618afe175483a1bbf921a` |
| 2 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/instance.md) | 54 | `declaration-track:00c17c08460e013732c8f28fe842c39ec78c80c7a97de6a3ef06f4c12a46c78e` |
| 3 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/instance-source-edition-2.md) | 65 | `declaration-track:19e29e8ec480b055c99a2da3bdc294d2a51c2eda16468ede5c48351a4677b9bb` |
| 4 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/instance-source-edition-3.md) | 71 | `declaration-track:21f119be1029ae022f5e2e475c024a27fd9796982986610f7a8b7e8a96fd8013` |
| 5 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/instance-source-edition-6.md) | 78 | `declaration-track:d2c0780cfe758f8f08d6c3c627fd012e7da87086231edc3b7e0799bbf10ca536` |
| 6 | `def` | [subtype](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/subtype.md) | 84 | `declaration-track:e2535c922d8e8ad69f28d0bfe2aabe903b279c902ffb7d7e18dec1e9483e42e3` |
| 7 | `theorem` | [subtype_apply](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/subtype-apply.md) | 91 | `result-track:1c8636c05655f9c62825f66cfdc34bf2db31d40da95cd2fb62322f8e78dc53b1` |
| 8 | `theorem` | [subtype_injective](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/subtype-injective.md) | 94 | `result-track:a325b687bc5c3cc3e6e4e33e33c831abefa445a03ede038e65f415898185c30d` |
| 9 | `theorem` | [coe_subtype](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/coe-subtype.md) | 98 | `result-track:800b51f85caa57fa3614d6fe352dd77eea88ceca2d1527299f159b35b75ea3fe` |
| 10 | `structure` | [NonUnitalSubring](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/nonunitalsubring.md) | 108 | `declaration-track:341510d01d8ad29abf52380e867e553d4628e81f703fc7276469b19919f01b5f` |
| 11 | `def` | [toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/tosubsemigroup.md) | 120 | `declaration-track:de04e2eb3f1f83a3c9c3f9a6148ba17e0cac71aa0023c1da94761d17ea4f9bdb` |
| 12 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/instance-source-edition-4.md) | 123 | `declaration-track:37ef5e7a47463dc4071e49d31c74dfdb2eba484d52b849db0e217fae3de66942` |
| 13 | `def` | [ofClass](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/ofclass.md) | 129 | `declaration-track:ad050d9dea8ee7fad09fd2e9db8ffa65205b840a258e199246f8ad2f3ef064c0` |
| 14 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/instance-source-edition-5.md) | 137 | `declaration-track:9fe9ef0f9ba88cf67486dd8f2c83a73dac4cfe11fc3c94005243cfc697a446fa` |
| 15 | `instance` | [(anonymous)](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/instance-source-edition-7.md) | 148 | `declaration-track:e5a6027eac4d939a0c05608b596d564b6149e222718683ce2162946a8927a472` |
| 16 | `theorem` | [mem_carrier](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/mem-carrier.md) | 154 | `result-track:02b9dee80a36ddd2e4ee163d307622e861503f3537d40fe3e044cc04153359a8` |
| 17 | `theorem` | [mem_mk](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/mem-mk.md) | 158 | `result-track:2ea55c331b881feab5107137fc2521108b0ee72724ab0d5254d36da06bc98026` |
| 18 | `theorem` | [coe_set_mk](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/coe-set-mk.md) | 163 | `result-track:fb8563e2029ee8b36463bd6a51ab9f1a17c07bb8f757f5a402d402e0c8b77a12` |
| 19 | `theorem` | [mk_le_mk](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/mk-le-mk.md) | 168 | `result-track:7549362dc4f8daa4bb9e54c41d0750fc76498cc5ca3eb73d3d97fb264f96dbd7` |
| 20 | `theorem` | [ext](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/ext.md) | 174 | `result-track:e1dc8f9b151fcf842e3c4dcef839aae372807f74d0572c3294b4f3068e719357` |
| 21 | `def` | [copy](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/copy.md) | 179 | `declaration-track:fc2bf31f51745b6067af10fec86ef02e3703c25414177f3750bfe1b7e13c91df` |
| 22 | `theorem` | [coe_copy](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/coe-copy.md) | 185 | `result-track:0a7d22ba8d763f861952a2c53ca61d9c8cdbe4315d9eeab1554c92223fe9fcfa` |
| 23 | `theorem` | [copy_eq](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/copy-eq.md) | 188 | `result-track:328e2ec9bb3e4bfa2de202738e8f006befff7af2f7cf88316c0a9e1e71280d4c` |
| 24 | `theorem` | [toNonUnitalSubsemiring_injective](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/tononunitalsubsemiring-injective.md) | 191 | `result-track:e9e591796582182eca1a8812dcbd9d0283755015a91be408f1ebc188d79bdd5d` |
| 25 | `theorem` | [toNonUnitalSubsemiring_strictMono](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/tononunitalsubsemiring-strictmono.md) | 196 | `result-track:54532dd57cd8e399dc4758161eae49e7fc3ae0a7aa2982951603d71bd414b639` |
| 26 | `theorem` | [toNonUnitalSubsemiring_mono](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/tononunitalsubsemiring-mono.md) | 201 | `result-track:e0a5a9a5d01e4744fc6f2994d20e6f3ffde55a5fa2e495e79cf930c1ac13890e` |
| 27 | `theorem` | [toAddSubgroup_injective](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/toaddsubgroup-injective.md) | 205 | `result-track:afe1c22706973f6a1e178b0bf04547e7dc85d81d6f8cc4c748e9741d504bd89e` |
| 28 | `theorem` | [toAddSubgroup_strictMono](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/toaddsubgroup-strictmono.md) | 210 | `result-track:6ba64da94072c2aa4b4d463482f96cef05b1d611c66bd895b1e7ecf5674d49fe` |
| 29 | `theorem` | [toAddSubgroup_mono](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/toaddsubgroup-mono.md) | 214 | `result-track:a00d16a8bf1a1aeaad7822750e9b49a662b859f7e21a95cc284b79b241b294ef` |
| 30 | `theorem` | [toSubsemigroup_injective](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/tosubsemigroup-injective.md) | 217 | `result-track:823c242d293ed01a2b5f4f3e582ba18f570d711bb8c245c5c6cf49c4fb338d58` |
| 31 | `theorem` | [toSubsemigroup_strictMono](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/tosubsemigroup-strictmono.md) | 222 | `result-track:dbae7103e6f703d92ab490aef64e3627563a497cafc58703cfa8f283c2629040` |
| 32 | `theorem` | [toSubsemigroup_mono](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/tosubsemigroup-mono.md) | 226 | `result-track:067b82f01cc642473d03528a20623f579e9d292b523d981f73b4b981777d781f` |
| 33 | `def` | [mk'](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/mk.md) | 231 | `declaration-track:6374a04e772beed9f185f692d9a317574602e49615e2e1c2b435f81897b7f14a` |
| 34 | `theorem` | [coe_mk'](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/coe-mk.md) | 236 | `result-track:e085f6db0906a16cb2cee51327a962953e29b0cddec93af0cc5596798ba4bab6` |
| 35 | `theorem` | [mem_mk'](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/mem-mk-source-edition-2.md) | 241 | `result-track:98fdc6e855f93db92de420c797a6acefd3cd797aa8c487039fc819ea80ea0036` |
| 36 | `theorem` | [mk'_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/mk-tosubsemigroup.md) | 246 | `result-track:c53a6c258885fe31038ce99432737a265f0a4b9697f63dc46dda08d857c273d4` |
| 37 | `theorem` | [mk'_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/mk-toaddsubgroup.md) | 251 | `result-track:fa87946db339393a235c20d8221f0d65c5abf899a1c8b5899432aa056c4c044b` |
| 38 | `theorem` | [zero_mem](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/zero-mem.md) | 262 | `result-track:c26826fd23b89ba2ade5c577d06a6415579c110f06e124779eba598df851f444` |
| 39 | `theorem` | [mul_mem](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/mul-mem.md) | 266 | `result-track:932511e7c9b38bd594ec4579788f05796597231f28657d49bf2938505819caec` |
| 40 | `theorem` | [add_mem](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/add-mem.md) | 270 | `result-track:86b1d1d3d1126d589b7e7f19f006913c0cf73ffa27be43481374d5d54d80744e` |
| 41 | `theorem` | [neg_mem](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/neg-mem.md) | 274 | `result-track:557f5f09f70d1ca8d21cdcd99a5bf0cd5c07785d6288d336ed2a0c948648cef8` |
| 42 | `theorem` | [sub_mem](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/sub-mem.md) | 278 | `result-track:39bbf159c908f830b034b7d0afdad59f8973dfd9dc40786bdfe668ec51623fe6` |
| 43 | `instance` | [toNonUnitalRing](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/tononunitalring.md) | 282 | `declaration-track:10058b99b4f12785f5fccc3671e9ee50959c60c7e1542d5449c9826b7abe1aed` |
| 44 | `theorem` | [zsmul_mem](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/zsmul-mem.md) | 287 | `result-track:f6f8cb1a691cbb738bb33f5a60d857868990b1c4b9e888bb43ed47ece327df02` |
| 45 | `theorem` | [val_add](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/val-add.md) | 291 | `result-track:90b9a283b6e11932c811a6d2ad8f553a66e85707655dd81c4bb77091fc40c20e` |
| 46 | `theorem` | [val_neg](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/val-neg.md) | 295 | `result-track:5a13e780ab5001759634ab1d995dd8de7f2b6898b89730bd9a0c92da1e084a94` |
| 47 | `theorem` | [val_mul](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/val-mul.md) | 299 | `result-track:6e155188eb4ff981b1766fd897474962650a9d7eaef48f19011f6bce628b1cba` |
| 48 | `theorem` | [val_zero](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/val-zero.md) | 303 | `result-track:22ebe56344864df849cc5b3288793bf33b5b4ad157c8cbc8eebbc08e7f7c4313` |
| 49 | `theorem` | [coe_eq_zero_iff](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/coe-eq-zero-iff.md) | 306 | `result-track:95ee727ff0c1a001b5b7d59b454bf275d341191cdbed8ca0be4744d394d65a24` |
| 50 | `instance` | [toNonUnitalCommRing](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/tononunitalcommring.md) | 310 | `declaration-track:397987d8d45ccb10370868c2475a91bbc267d11bc54066eb14b2bf7d304b7687` |
| 51 | `theorem` | [mem_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/mem-tosubsemigroup.md) | 319 | `result-track:515ff406a84e16561b4c4cf9b161feac3535dd22cfb4e3b6734d62b385f31f92` |
| 52 | `theorem` | [coe_toSubsemigroup](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/coe-tosubsemigroup.md) | 323 | `result-track:bfc3c69bd268741fa19181cca1e086e69c9c746d726eaf423dbb8b5deecb9bbc` |
| 53 | `theorem` | [mem_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/mem-toaddsubgroup.md) | 327 | `result-track:d78348f81d3b381b92862034da44bdd39b7cf35cc47304e7a6eb9c9ebf74858c` |
| 54 | `theorem` | [coe_toAddSubgroup](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/coe-toaddsubgroup.md) | 331 | `result-track:a41d74657ec46930d9db4fa5beb573cb7ee7719442ae51d0577e9ce28a653bbb` |
| 55 | `theorem` | [mem_toNonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/mem-tononunitalsubsemiring.md) | 335 | `result-track:5529cc39960818c89b28e50a03944f168e1fbfcf6d0f67aaaa36fb4ee4315882` |
| 56 | `theorem` | [coe_toNonUnitalSubsemiring](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/coe-tononunitalsubsemiring.md) | 340 | `result-track:40178c219591afa598ce8f505454af4b7b210069598d9c6079a3385d4d79e062` |
| 57 | `def` | [inclusion](../../../../CommutativeAlgebra/NonUnitalSubringDefs.lean/declarations/inclusion.md) | 357 | `declaration-track:db712e9cdd313f494062f5bc0b017788b253531980829686ff2d156f612da57f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=57e5608ba6cb12af264ee59da573326cb7ffb3a38cfb10163be9a575ccf09392 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/RingTheory/Defs/Variant0b9215cd60040f1c5429713e38be74e88ca080e0c9bd7871150e67f88fc3cc3d.lean","GRWTSK/_verification/specifications/Algebra/RingTheory/Defs/Variant0b9215cd60040f1c5429713e38be74e88ca080e0c9bd7871150e67f88fc3cc3d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
