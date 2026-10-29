# Verification target: Associator Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e2b873da58159d51502f02dbc2570834277c99b0",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Associator/Variant712bf513aa0db41280e0ddae4ff70c61f1426579e02da2cfb3230a96d0f4b39a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/index.md) · [Full source](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e2b873da58159d51502f02dbc2570834277c99b0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Associator/Variant712bf513aa0db41280e0ddae4ff70c61f1426579e02da2cfb3230a96d0f4b39a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Associator/Variant712bf513aa0db41280e0ddae4ff70c61f1426579e02da2cfb3230a96d0f4b39a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/lid.md) | 47 | `declaration-track:3ee6ac72ac84cfa3711b1d9a597d012aa8927ae9373a7b847f287ea822cdb633` |
| 2 | `theorem` | [lid_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/lid-tmul.md) | 57 | `result-track:3edb65389ee9e34530cfe6f8e3b17e5409714c4ad6e5b1816ad32bbeded641c8` |
| 3 | `theorem` | [lid_symm_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/lid-symm-apply.md) | 61 | `result-track:8c2fccde12c398b37a1882a4e842b1183f6333139520c74f672e04091fa04885` |
| 4 | `theorem` | [toLinearMap_symm_lid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/tolinearmap-symm-lid.md) | 64 | `result-track:e60b5f059f7f16624cd0f352c98577de840633091b82c17a095c2ffdbc1040ce` |
| 5 | `lemma` | [includeRight_lid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/includeright-lid.md) | 66 | `result-track:39e0ec469840c63349914e6a628d4706ee0abaecd1310b609355b62f6292d027` |
| 6 | `def` | [rid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/rid.md) | 80 | `declaration-track:c5287bb0ee74bdeb945e2e831ed291b2c280de3a4c6147b365aa9b334cdf08f5` |
| 7 | `theorem` | [rid_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/rid-tmul.md) | 90 | `result-track:6f483461be149993191ac44b9753b6714b4bdc50e109a4884b42d20784a66440` |
| 8 | `theorem` | [rid_symm_apply](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/rid-symm-apply.md) | 94 | `result-track:b308b19a73b29d6f9074eb42a59633263a7345012ee2a37a52c859b0070c4dc2` |
| 9 | `theorem` | [toLinearMap_symm_rid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/tolinearmap-symm-rid.md) | 97 | `result-track:e5c2753d6c76a7fc3b6513793871e89345905426aac42c3bf10999ebfcd279c5` |
| 10 | `theorem` | [comm_trans_lid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/comm-trans-lid.md) | 100 | `result-track:c95e79e24ec3695cdb81a598e9dd97acddd1963dbeea72d33c9963eeb3a45c68` |
| 11 | `lemma` | [lid_comm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/lid-comm.md) | 104 | `result-track:82c2aed70fe2e851390c75e2253f251290b86a7af420d7f38a556cf62e24ec24` |
| 12 | `theorem` | [comm_trans_rid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/comm-trans-rid.md) | 109 | `result-track:eaa009831df336fabe7db45ab94d795b583952656e8cbc22d55dab29c53bcb8b` |
| 13 | `lemma` | [rid_comm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/rid-comm.md) | 113 | `result-track:48e51cc43933b216a164c9e4f483be22bda8bc5f7deec12e7577cb771ca64b89` |
| 14 | `theorem` | [lid_eq_rid](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/lid-eq-rid.md) | 118 | `result-track:f2dd2aa3b0ce9db47f58e897c9a803b5c0ae841c4a72587ac3f558bc3e487a43` |
| 15 | `def` | [lidOfCompatibleSMul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/lidofcompatiblesmul.md) | 129 | `declaration-track:c8b2949637952d0551984bb5d24ca81a4dc12a88b021c33e9155db468aed9011` |
| 16 | `theorem` | [lidOfCompatibleSMul_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/lidofcompatiblesmul-tmul.md) | 132 | `result-track:33aa17e21ad5c0bbe0b8139ea5fdf12d4de78198f56ca2afb58dd07f3c1e4925` |
| 17 | `lemma` | [CompatibleSMul.of_algebraMap_surjective](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/compatiblesmul-of-algebramap-surjective.md) | 135 | `result-track:fc24a98952169690ec1369404fdf74b055cb13946dbc12e9643970d8a179700b` |
| 18 | `def` | [assoc](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/assoc.md) | 153 | `declaration-track:ee95493594ba17bb5d3b54032fe279cc3149c5148091f7ed0660291441792e6a` |
| 19 | `theorem` | [assoc_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/assoc-tmul.md) | 163 | `result-track:c7401db7dfc2d5803a387f9b836ac658c47387443c1d1f7cdf4f03f8def77590` |
| 20 | `theorem` | [assoc_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/assoc-symm-tmul.md) | 168 | `result-track:7882fe828759fec97ac8b26364ce39c96da0c562dc8f040629f5d55d1fb6b642` |
| 21 | `lemma` | [map_map_comp_assoc_eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/map-map-comp-assoc-eq.md) | 175 | `result-track:c0c86ca7cf2caf2aabfa0ff25fb12a43c2452d7955ca5b5bff487e8ff2f6a02e` |
| 22 | `lemma` | [map_map_assoc](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/map-map-assoc.md) | 180 | `result-track:c684ba6b768badd3a8e626029ca5789c7d012891bd4c7b0f42e156ad8c26cead` |
| 23 | `lemma` | [map_map_comp_assoc_symm_eq](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/map-map-comp-assoc-symm-eq.md) | 188 | `result-track:e4475fadd0990711f36e594f64d6e5017b43e8139601e8658d9224761f2353d5` |
| 24 | `lemma` | [map_map_assoc_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/map-map-assoc-symm.md) | 193 | `result-track:ce39ffeb57b493207bae9bee15b9c7036e0f66adba9df316ab769d9da8af5ec0` |
| 25 | `lemma` | [assoc_tensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/assoc-tensor-source-edition-3.md) | 198 | `result-track:bf0fca2c6a36cc967ad8a53cec504c76c031fb2f3419a4296a92c7f63569ae3b` |
| 26 | `lemma` | [assoc_tensor'](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/assoc-tensor-source-edition-2.md) | 204 | `result-track:5de27d3099a60cb2468e6d796c15cb55d50f01c10929fdb8c297baa257c1d21d` |
| 27 | `lemma` | [assoc_tensor''](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/assoc-tensor.md) | 210 | `result-track:42e0a49ff4c327a1f5de246fbc5f5b3e896f65b512fbb829f8519243561ba69c` |
| 28 | `lemma` | [lid_tensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/lid-tensor.md) | 216 | `result-track:8a656e12236cfcc86bb6f949a80e9c31653ec03e207f097ad666b4220b40664b` |
| 29 | `def` | [leftComm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/leftcomm.md) | 226 | `declaration-track:7ac8db8d2ad184c84e9ec63898b348d0c70e280e4cc3bc743bd2baa5ffbfe8e4` |
| 30 | `theorem` | [leftComm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/leftcomm-tmul.md) | 235 | `result-track:e82edce3b1f837bd58be23bf6c11c57a0fae5b88419aafdf9e3080ef8ddc2f2f` |
| 31 | `theorem` | [leftComm_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/leftcomm-symm-tmul.md) | 239 | `result-track:d2116aca422eb3a5d7b9abbf42303a45dbaf019444d4747f67c4e9ea796c2a2c` |
| 32 | `lemma` | [leftComm_def](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/leftcomm-def.md) | 244 | `result-track:e1b9725886258be7f2ebc6c709c94a29119ab6982be3bd277041a79ff1951dcb` |
| 33 | `def` | [rightComm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/rightcomm.md) | 252 | `declaration-track:dd87b8b597afa8c7abb2d07a36b8bc8dc9ea07ce142a4f90c17449b011c56318` |
| 34 | `theorem` | [rightComm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/rightcomm-tmul.md) | 259 | `result-track:1b0298d356fd9b8b63e3657c1d7ecc2564a5fb5297461e64166274b3f4fbb108` |
| 35 | `theorem` | [rightComm_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/rightcomm-symm.md) | 264 | `result-track:d2970da855f7ba182f780155633e4681b0f8de7ff3d78bf1804136797b44aaf2` |
| 36 | `lemma` | [rightComm_def](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/rightcomm-def.md) | 267 | `result-track:1721bc523e1d412e90da17ce68716e24ea6dc59edbb0b3ca5daa91a6112fd261` |
| 37 | `def` | [tensorTensorTensorComm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/tensortensortensorcomm.md) | 284 | `declaration-track:4619381062a73dcfdd8029ccb55a12fe1d50460d1f03adb7e977fd29b29c262e` |
| 38 | `theorem` | [tensorTensorTensorComm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/tensortensortensorcomm-tmul.md) | 292 | `result-track:f435bba6936f63dfbca0a3590f1cd2c7a8381f37d4e4ae84c995b12b67aa41ce` |
| 39 | `theorem` | [tensorTensorTensorComm_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/tensortensortensorcomm-symm.md) | 297 | `result-track:7c4509853943164fadda96be903301463e865fc1ff44297d38b06fd2d830f3fa` |
| 40 | `theorem` | [tensorTensorTensorComm_trans_tensorTensorTensorComm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/tensortensortensorcomm-trans-tensortensortensorcomm.md) | 301 | `result-track:1ef7d0169b32252d33fcf2f886facfc616adb478396702d98221ef61836e4487` |
| 41 | `theorem` | [tensorTensorTensorComm_comp_map](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/tensortensortensorcomm-comp-map.md) | 306 | `result-track:33af883a138e88232d6efffd779812b3d3b57ffeb8b1d76247073ab3b851122a` |
| 42 | `def` | [tensorTensorTensorAssoc](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/tensortensortensorassoc.md) | 323 | `declaration-track:5ee1235a44bd84e4ee8ac5356caff202669c9143af52db854d07a90aa138a7b7` |
| 43 | `theorem` | [tensorTensorTensorAssoc_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/tensortensortensorassoc-tmul.md) | 330 | `result-track:6c43f8fe79644fa6cd38f72684e18b4b9b5b42811a2be19fdf583b77565e5e65` |
| 44 | `theorem` | [tensorTensorTensorAssoc_symm_tmul](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/tensortensortensorassoc-symm-tmul.md) | 335 | `result-track:e34c423285aacead4484c6232e2e1481c0e71ff1b9e10983b5a97ab981f0545b` |
| 45 | `lemma` | [lTensor_tensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/ltensor-tensor.md) | 355 | `result-track:f61ece98a11dd4afe4f9bbf263a52d02a89c72c00675b7c9b669322b5d81f663` |
| 46 | `theorem` | [rTensor_tensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/rtensor-tensor.md) | 359 | `result-track:212ddd2d16cf54c4647b5889eefa5cb7f606c3ae46a7dba2f42f3ae03af62ebc` |
| 47 | `theorem` | [lid_comp_rTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/lid-comp-rtensor.md) | 365 | `result-track:08dceefa25278af5ba27b477a1562f2a70ee81090ea049ff3633cd15f307d1ce` |
| 48 | `lemma` | [rid_comp_lTensor](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/rid-comp-ltensor.md) | 368 | `result-track:85c2615d35d9bef458f8c189664ce9d6d79ea64a7009f7299871339ac8b525fe` |
| 49 | `lemma` | [lTensor_rTensor_comp_assoc](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/ltensor-rtensor-comp-assoc.md) | 371 | `result-track:d3aff21d26deb18c5fd1dfd7b791cab69854ff03cc00771b9a360f4e34450d24` |
| 50 | `lemma` | [rTensor_lTensor_comp_assoc_symm](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/rtensor-ltensor-comp-assoc-symm.md) | 376 | `result-track:efe2d9b685fbefa769ed09af689575601437286673a0b35d9fcf86b8df213202` |
| 51 | `lemma` | [tensorProductAssoc_def](../../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/MultilinearAlgebraTensorCalculus/AssociatorNamespacedPublic.lean/declarations/tensorproductassoc-def.md) | 391 | `result-track:e01c561a4cf5baf111c24e9ccba6a9930e21d30902e3e5eaba3fc7aabe9f671c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=20600a893356d10d83def9ea42642dbff03f1784d20d9d6e8d636a76043b7a64 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Associator/Variant712bf513aa0db41280e0ddae4ff70c61f1426579e02da2cfb3230a96d0f4b39a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Associator/Variant712bf513aa0db41280e0ddae4ff70c61f1426579e02da2cfb3230a96d0f4b39a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
