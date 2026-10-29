# Verification target: SMul Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "133c52bfb2ea666e9e74295e250a0d59ed1ff523",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../DifferentialGeometry/SMulPublic.lean/index.md) · [Full source](../../../../DifferentialGeometry/SMulPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `133c52bfb2ea666e9e74295e250a0d59ed1ff523`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean.json)

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
| 1 | `class` | [ContMDiffVAdd](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffvadd.md) | 51 | `declaration-track:c761f95fcba70fb5494647a04dd3931b5d8174ecdc7859072df96d872b927342` |
| 2 | `class` | [ContMDiffSMul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffsmul.md) | 68 | `declaration-track:5874c8c8fc8cc59932c8574ba54dd923235e748d48691a376de9fd75bbaa597f` |
| 3 | `class` | [ContMDiffConstVAdd](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffconstvadd.md) | 80 | `declaration-track:2b0e4190cc64d44ba9b648f3873d949354d67673429fd4f6a410831be7a5dec3` |
| 4 | `class` | [ContMDiffConstSMul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffconstsmul.md) | 91 | `declaration-track:96fcb20bbda409e8fa626d1e025ee381794aa3177e5cf7fb911fbc6f85f94e31` |
| 5 | `theorem` | [ContMDiffSMul.of_le](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffsmul-of-le.md) | 117 | `result-track:1cc93e6ea470345726d00d17415a0793c1d956bb70fe12c0f6872f2e821ab3d7` |
| 6 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulPublic.lean/declarations/instance.md) | 121 | `declaration-track:158ff9971a151be622967c1411f84b4f585a4da29add1675b018de8f8840fa8b` |
| 7 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulPublic.lean/declarations/instance-source-edition-6.md) | 126 | `declaration-track:5ce719f8fc8c5c0a6e16c4751b964044063361eb0455188bd80247f6ef051a15` |
| 8 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulPublic.lean/declarations/instance-source-edition-9.md) | 130 | `declaration-track:d43411fbcaca9514e988882616c90d1d3350afb49346ee68823ccb87bdc6f79e` |
| 9 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulPublic.lean/declarations/instance-source-edition-5.md) | 134 | `declaration-track:53c243eba966b9b930108d6d4398c5d49d72ec372ce217843d16e85c16189238` |
| 10 | `lemma` | [ContMDiffSMul.continuousSMul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffsmul-continuoussmul.md) | 143 | `result-track:8d04c885b7c47d5bf463f9e9adebdb1426a769ae1b01da2bd20c34638b546b42` |
| 11 | `instance` | [ContMDiffMul.contMDiffSMul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffmul-contmdiffsmul.md) | 149 | `declaration-track:55112cb2ef3378e5362f935561f21106e55fc4b8ecc41b1f4cfbd291145e227c` |
| 12 | `theorem` | [ContMDiffWithinAt.smul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffwithinat-smul.md) | 159 | `result-track:284995e5659db475e7d2d196d5fd2588928454b39260ae4c53d6098b8c8bbf13` |
| 13 | `theorem` | [ContMDiffAt.smul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffat-smul.md) | 164 | `result-track:fa7e4b54811f10e3e6d9a774e3116a315a16e60ab63a3f8bf71c0972e03bf62a` |
| 14 | `theorem` | [ContMDiffOn.smul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffon-smul.md) | 169 | `result-track:3622f103fe3d865e1d261089d8b4176a81919a41eebc3c0d6eacc608e4d835c2` |
| 15 | `theorem` | [ContMDiff.smul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiff-smul.md) | 173 | `result-track:c28d6143761786ed89da40906d343e9fb061e61b124ebd68fb231d2d234c0f0f` |
| 16 | `theorem` | [ContMDiffSMul.contMDiff_const_smul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffsmul-contmdiff-const-smul.md) | 178 | `result-track:6ce55ef99bc6f9162d884c17fed2bec4f99248cd641227a5bfce0cbd330b131a` |
| 17 | `instance` | [Prod.contMDiffSMul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/prod-contmdiffsmul.md) | 185 | `declaration-track:ccf99f00ca22aa3e657b6e8c85ec4ea1cafd91aba4979d3fbac92d5d8e149ac5` |
| 18 | `lemma` | [IsScalarTower.contMDiffSMul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/isscalartower-contmdiffsmul.md) | 193 | `result-track:a27aa7016c786d27ee8a57b4bce6a87672b33171b7dc98df1067b8cf59121670` |
| 19 | `theorem` | [MulAction.contMDiffSMul_compHom](../../../../DifferentialGeometry/SMulPublic.lean/declarations/mulaction-contmdiffsmul-comphom.md) | 204 | `result-track:e3fbe7baffe32b6e58d6afed8abdfb634eeb1fa9d95f991df8093c6af4a332da` |
| 20 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulPublic.lean/declarations/instance-source-edition-10.md) | 213 | `declaration-track:e33b378c79fd2f41178aa90bb013e209f036d09d793ae81c24a3661f8d0246fe` |
| 21 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulPublic.lean/declarations/instance-source-edition-7.md) | 220 | `declaration-track:aafdb3f79919d63f8e7ec772cd2381697ca8f5bfdb54fab621adf163ec15d093` |
| 22 | `theorem` | [ContMDiffConstSMul.of_le](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffconstsmul-of-le.md) | 241 | `result-track:9aacfcda9ff0bc7b036524558f72b1e90d70f6275cf0d55c891505a18bbc3abd` |
| 23 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulPublic.lean/declarations/instance-source-edition-4.md) | 246 | `declaration-track:50c666ff816aab2cb4471232c26e1dc3ace78ecb6a65e418363c9e85e7877884` |
| 24 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulPublic.lean/declarations/instance-source-edition-2.md) | 251 | `declaration-track:17dd080eadb540e4a547b8f234cd110ece7f15dd95472570b272032a3f049a13` |
| 25 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulPublic.lean/declarations/instance-source-edition-3.md) | 255 | `declaration-track:312450e65265b8f41a998babd987f1eb6a01e20730f60806c048bb707a2f3546` |
| 26 | `instance` | [(anonymous)](../../../../DifferentialGeometry/SMulPublic.lean/declarations/instance-source-edition-8.md) | 259 | `declaration-track:bee186709a4a939aab7390698a6782d650724ff461e468c0130ac65095f24afb` |
| 27 | `lemma` | [ContMDiffConstSMul.continuousConstSMul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffconstsmul-continuousconstsmul.md) | 266 | `result-track:0a85a06ffffa0f6256a76edfbb029b24076504e179b1fc966404769647b726d8` |
| 28 | `theorem` | [ContMDiffWithinAt.const_smul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffwithinat-const-smul.md) | 277 | `result-track:1df64a0f2f9f9fd28251e2db298da78c22efda9ea7f376d639534899af7a423c` |
| 29 | `theorem` | [ContMDiffAt.const_smul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffat-const-smul.md) | 282 | `result-track:3b7aa681996a08bbea0e44276069bc7f0867ffbcd4cd5e16a59cc936f6d153f9` |
| 30 | `theorem` | [ContMDiffOn.const_smul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiffon-const-smul.md) | 287 | `result-track:6a747de9a6a5f77f7abfc98ff1037fa28d550e9f3ed4ef05f0ce17fbd27e494c` |
| 31 | `theorem` | [ContMDiff.const_smul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/contmdiff-const-smul.md) | 291 | `result-track:4ff26d6843a105713d2be2c9fc20b7571c81a0aca9ebaf3c0fa6d9aa98b1901b` |
| 32 | `instance` | [Prod.contMDiffConstSMul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/prod-contmdiffconstsmul.md) | 297 | `declaration-track:7a6c5e87228fcf75687977aa8d159889c7304557806854357c709bc2aa355159` |
| 33 | `lemma` | [IsScalarTower.contMDiffConstSMul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/isscalartower-contmdiffconstsmul.md) | 306 | `result-track:05d6cf666004ba540537fb26b8b1244212b8689e5620555373581ba2127273c1` |
| 34 | `theorem` | [MulAction.contMDiffConstSMul_compHom](../../../../DifferentialGeometry/SMulPublic.lean/declarations/mulaction-contmdiffconstsmul-comphom.md) | 317 | `result-track:d005acdc12de7a7f3b950e99e9649021fc48d8d9946bdf479146c36c091e905d` |
| 35 | `def` | [Diffeomorph.smul](../../../../DifferentialGeometry/SMulPublic.lean/declarations/diffeomorph-smul.md) | 345 | `declaration-track:159f6127423231cda9ec804c95d8163685a1a3cfec3f09b02c44a33df804c991` |
| 36 | `lemma` | [Diffeomorph.smul_toHomeomorph](../../../../DifferentialGeometry/SMulPublic.lean/declarations/diffeomorph-smul-tohomeomorph.md) | 351 | `result-track:b8fbd679efc6b5995575f8be10f052e90f0d5d0bbaf7d74767980f93e32a650f` |
| 37 | `lemma` | [Diffeomorph.smul_apply](../../../../DifferentialGeometry/SMulPublic.lean/declarations/diffeomorph-smul-apply.md) | 357 | `result-track:21cbcc3bcf05fbb2647f5a2151ceab5c1a9d976d84efa5496a038164de678adf` |
| 38 | `lemma` | [Diffeomorph.smul_symm_apply](../../../../DifferentialGeometry/SMulPublic.lean/declarations/diffeomorph-smul-symm-apply.md) | 360 | `result-track:4b415e0d43c43cbeaa95f0bc78864a6313ac21af38cba49bbd6dbf762321b527` |
| 39 | `lemma` | [Diffeomorph.smul_symm](../../../../DifferentialGeometry/SMulPublic.lean/declarations/diffeomorph-smul-symm.md) | 363 | `result-track:267d36d6eade5b691101b3ae3ee5a1e5ba3faa268050c89f5716e3533acc7339` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3820df7a1777fcee2da6bd73c0d5f34c6b191b92029c2586c50dcf2e218e4e9d -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean","GRWTSK/_verification/specifications/Geometry/DifferentialGeometry/SMul/Variant660707c09257332986d7a07365f171eeb4539707c7ba74950cd994e62ec43de6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
