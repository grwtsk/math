# Verification target: Hadamard Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "862a76d82732183e9f89229837c885aa4927fea7",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant62172b64546b52d0465435445b78a77b344d5ba5bc4ec7ff0f849887fbfa380a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/index.md) · [Full source](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `862a76d82732183e9f89229837c885aa4927fea7`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant62172b64546b52d0465435445b78a77b344d5ba5bc4ec7ff0f849887fbfa380a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Hadamard/Variant62172b64546b52d0465435445b78a77b344d5ba5bc4ec7ff0f849887fbfa380a.lean.json)

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
| 1 | `def` | [verticalStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/verticalstrip.md) | 72 | `declaration-track:1b74f91d61750cfccb8df226fd0207667c850ab584fc5ec3fe609633d43c21ea` |
| 2 | `def` | [verticalClosedStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/verticalclosedstrip.md) | 75 | `declaration-track:beec6d37e5b9d40e187291ad621d26dde7f645e0a778320197f94f91c76eb0f3` |
| 3 | `def` | [sSupNormIm](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/ssupnormim.md) | 79 | `declaration-track:bd7110255aa3f6f678a5e1ac56704eb99b66a6fa58d5a2e3c2f0a787a6469c95` |
| 4 | `def` | [invInterpStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/invinterpstrip.md) | 94 | `declaration-track:4f934f9158f9edb6f0f9e7a88d9ee07b893ab9d61d28813eda414f32ce5c92c5` |
| 5 | `def` | [F](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/f.md) | 98 | `declaration-track:14731b3b9fcd63a69d87a856654b2f7f224a373820e07c13b459012ba34d2012` |
| 6 | `lemma` | [sSupNormIm_nonneg](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/ssupnormim-nonneg.md) | 101 | `result-track:f496dd8b32a2e9376a5825b52c849ff183ff253d421b67dd055c09b043a89c12` |
| 7 | `lemma` | [sSupNormIm_eps_pos](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/ssupnormim-eps-pos.md) | 108 | `result-track:69f7b841971b8c1f10229aec72f564dc479eba75782795c223abaf651b39fdf8` |
| 8 | `lemma` | [norm_invInterpStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/norm-invinterpstrip.md) | 112 | `result-track:b4487c171d2e642349a718323ff7c90d238cb442dc8e16cf6b53b04a6efb3a6e` |
| 9 | `lemma` | [diffContOnCl_invInterpStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/diffcontoncl-invinterpstrip.md) | 121 | `result-track:cd4836b3f362e4f342f0401dae5eeffbcaefc90f7e11352f9ae9d0b9a1e82db9` |
| 10 | `lemma` | [norm_le_sSupNormIm](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/norm-le-ssupnormim.md) | 135 | `result-track:a474bc9c89516e6ba2d68da2a81680c6d7986e11bbaa5487379f2db006c0b49d` |
| 11 | `lemma` | [norm_lt_sSupNormIm_eps](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/norm-lt-ssupnormim-eps.md) | 145 | `result-track:95cd09973951a7f8e48c393062aa00ac82bf3f2b89a2c207f34d1023b9584fdd` |
| 12 | `lemma` | [F_BddAbove](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/f-bddabove.md) | 154 | `result-track:d323596d26002a6b934c526277367d05081259673a0eb822d618655183ca47aa` |
| 13 | `lemma` | [F_edge_le_one](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/f-edge-le-one.md) | 194 | `result-track:a08b4067d987fe5fd7991d2306090dd54aad9386d77eee40cca80e077976cd17` |
| 14 | `theorem` | [norm_mul_invInterpStrip_le_one_of_mem_verticalClosedStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/norm-mul-invinterpstrip-le-one-of-mem-verticalclosedstrip.md) | 213 | `result-track:83229723dd18a32f58dd795e9ce55d937ee78b11488cb682603106e0e1c1551f` |
| 15 | `def` | [interpStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/interpstrip-source-edition-2.md) | 249 | `declaration-track:908b908e634d121a04a4e7412d2e57fd07b06d8727b27296c7315d34da979e86` |
| 16 | `lemma` | [interpStrip_eq_of_pos](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/interpstrip-eq-of-pos.md) | 255 | `result-track:668c16a7d076bb245e09b33c2512e9386666f2599f17d16e3fa835da3b49947d` |
| 17 | `lemma` | [interpStrip_eq_of_zero](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/interpstrip-eq-of-zero.md) | 260 | `result-track:edd23b0d2a91f8b02ca27026bd3786f52e615f414b1d37fe617f144e02c11f0c` |
| 18 | `lemma` | [interpStrip_eq_of_mem_verticalStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/interpstrip-eq-of-mem-verticalstrip.md) | 265 | `result-track:c1dcec9a823c3ff435b65914d89543d84b77438ae7f0bb4c6ee04341bd380d98` |
| 19 | `lemma` | [diffContOnCl_interpStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/diffcontoncl-interpstrip.md) | 283 | `result-track:8ba95dc2a897142ffba108e3a5a7c3290a87b102336505eb197eda3ea8003f31` |
| 20 | `def` | [interpStrip'](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/interpstrip.md) | 304 | `declaration-track:16e0dc03a3055311e2cb1b532aa602dc037bda415e35d3103dbe41881c50c62e` |
| 21 | `def` | [scale](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/scale.md) | 310 | `declaration-track:c98d269adbea3231285234b600ec4e6f9a88c0e3d570c3a1e2c7bc75ef52d7ae` |
| 22 | `lemma` | [scale_id_mem_verticalClosedStrip_of_mem_verticalClosedStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/scale-id-mem-verticalclosedstrip-of-mem-verticalclosedstrip.md) | 314 | `result-track:9d5423389fccfec2acf43e03e2c2477a95cc5aca2304ce31060de7d26f21bbc9` |
| 23 | `lemma` | [scale_bddAbove](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/scale-bddabove.md) | 321 | `result-track:fe69c9ba5c8f02cf2f536f27a4f9370e7eb264d3e1e5a492b7826ea969f20f11` |
| 24 | `lemma` | [scale_bound_left](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/scale-bound-left.md) | 330 | `result-track:fffb1f7c536cba95a840763856cda145a4adcf076a186d52e1885d3bdfbd08cc` |
| 25 | `lemma` | [scale_bound_right](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/scale-bound-right.md) | 338 | `result-track:eb38e3180d358270aa77c828d2ae43558fcf858ce10ddd1934f6a72b035e5466` |
| 26 | `lemma` | [sSupNormIm_scale_left](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/ssupnormim-scale-left.md) | 346 | `result-track:9ebec77ba6028395a05b7dea1ca3d3305ae2b75a9df0be224b29c416bd217c0b` |
| 27 | `lemma` | [sSupNormIm_scale_right](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/ssupnormim-scale-right.md) | 370 | `result-track:a579e734c3e282ff3e028f8b57796b1055530e9deca4154b38eb32c942e82c44` |
| 28 | `lemma` | [interpStrip_scale](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/interpstrip-scale.md) | 394 | `result-track:c4edc29ae5e7841e7f5d9d1b00c2971890036817c8e8d14a7a65239a4927f6f8` |
| 29 | `lemma` | [norm_le_interpStrip_of_mem_verticalClosedStrip_eps](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/norm-le-interpstrip-of-mem-verticalclosedstrip-eps.md) | 401 | `result-track:643d10eeb0cf77a67855fcb78e17c0d8ace9c86eed8f4bc68eaaded6a5aa14f9` |
| 30 | `lemma` | [eventuallyle](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/eventuallyle.md) | 416 | `result-track:933ecc092bc51ee5d827df915e8ff9964265f4d9573ebc422d4cb37f09f94c2c` |
| 31 | `lemma` | [norm_le_interpStrip_of_mem_verticalStrip_zero](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/norm-le-interpstrip-of-mem-verticalstrip-zero.md) | 424 | `result-track:259a0c8e3f46294ed8564de39b64101ae89c26e11026a62e96688102ef9cf703` |
| 32 | `lemma` | [norm_le_interpStrip_of_mem_verticalClosedStrip₀₁](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/norm-le-interpstrip-of-mem-verticalclosedstrip-source-edition-2.md) | 466 | `result-track:b25e245fbdc8966855a35498ce955b19835219251fe3ec1e34e6f01a0a158c64` |
| 33 | `lemma` | [norm_le_interp_of_mem_verticalClosedStrip₀₁'](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/norm-le-interp-of-mem-verticalclosedstrip.md) | 480 | `result-track:2ca39be5d42d7086ace733540a79ece75b8affdcf3ce50d849c9f01ead5301de` |
| 34 | `lemma` | [scale_id_mem_verticalStrip_of_mem_verticalStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/scale-id-mem-verticalstrip-of-mem-verticalstrip.md) | 525 | `result-track:c1d2d5d69df589564c0880d555091bdefa1fac237c27170ddc778dc441845b20` |
| 35 | `lemma` | [mem_verticalClosedStrip_of_scale_id_mem_verticalClosedStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/mem-verticalclosedstrip-of-scale-id-mem-verticalclosedstrip.md) | 538 | `result-track:fd2216c2e0d9cb6c6335e3a1e3b7f63d113c2194c767508b9f38c663d0ac1aa9` |
| 36 | `lemma` | [scale_diffContOnCl](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/scale-diffcontoncl.md) | 555 | `result-track:32430dc5d5a11459a53588a36334601600d9d78991e775acd4a221f2d2702163` |
| 37 | `lemma` | [fun_arg_eq](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/fun-arg-eq.md) | 568 | `result-track:800a53a18a41234d15312c155f647593331a20b9452c8aa3d527fc8ae972b9b9` |
| 38 | `lemma` | [bound_exp_eq](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/bound-exp-eq.md) | 575 | `result-track:8c219e1357362c672eb86ec9ec9f1d44d7a0dbf3549b2fbda03075a3d5599711` |
| 39 | `lemma` | [norm_le_interpStrip_of_mem_verticalClosedStrip](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/norm-le-interpstrip-of-mem-verticalclosedstrip.md) | 591 | `result-track:7a8d7c9c786af057adc04642242642f5a6be3c17a2809e9bf141d589da800001` |
| 40 | `lemma` | [norm_le_interp_of_mem_verticalClosedStrip'](../../../../FunctionsOfAComplexVariable/HadamardPublic.lean/declarations/norm-le-interp-of-mem-verticalclosedstrip-source-edition-2.md) | 610 | `result-track:4c5abaf43941737ac2ed51b5c725849d1bd3dba5fc5e15d146775b03656d1475` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=b33647893bdee05e051ea3d011763f03090e1415a218c2937c2978b4e319ad82 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variant62172b64546b52d0465435445b78a77b344d5ba5bc4ec7ff0f849887fbfa380a.lean","GRWTSK/_verification/specifications/Analysis/ComplexAnalysis/Hadamard/Variant62172b64546b52d0465435445b78a77b344d5ba5bc4ec7ff0f849887fbfa380a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
