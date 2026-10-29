# Verification target: Equiv Namespaced Is Uniform Inducing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5185e4aa7c61696b0669b320a6a82a6421659f5e",
  "lexical_observation_count": 65,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622e3692ec3a36318f8bdcceaa4d5772f6b5d68154986d9dfc0bc0df3351d2d8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/index.md) · [Full source](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5185e4aa7c61696b0669b320a6a82a6421659f5e`.

Source path: `GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622e3692ec3a36318f8bdcceaa4d5772f6b5d68154986d9dfc0bc0df3351d2d8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622e3692ec3a36318f8bdcceaa4d5772f6b5d68154986d9dfc0bc0df3351d2d8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Equiv.Fin.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.UniformEmbedding` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UniformSpace.Pi` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [UniformEquiv](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/uniformequiv.md) | 41 | `declaration-track:044f19bc43ee37b82c5e70d26b713cca8f868490c4e76bc623765f37d8c622fa` |
| 2 | `theorem` | [toEquiv_injective](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/toequiv-injective.md) | 55 | `result-track:0074cdbde7aca6856147829bace7be51c3301ce18557034b4f07e2398a94214f` |
| 3 | `instance` | [(anonymous)](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/instance.md) | 58 | `declaration-track:07032da3754f66b82fb9024573a2248fe97a65738877c98785d2f4d3c8460a01` |
| 4 | `theorem` | [uniformEquiv_mk_coe](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/uniformequiv-mk-coe.md) | 66 | `result-track:76a54aa5c407252809528291f23f91ec7180715344920322163abe61d670ee48` |
| 5 | `def` | [symm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/symm.md) | 70 | `declaration-track:c304929f4cca34fd42c8b6e9fc481454157d5e9b6eefbb4fa7dd1373ff4c8e14` |
| 6 | `def` | [Simps.apply](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/simps-apply.md) | 77 | `declaration-track:5ca1f06b042bc0eb8cd899ed52aeb40175250e95e46d7d13596e8c5b01ae383a` |
| 7 | `def` | [Simps.symm_apply](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/simps-symm-apply.md) | 81 | `declaration-track:61fe2a74caa760c166c0b5d2d2a067ee4dd85873e58c3ad9df430aa7f12e5ac3` |
| 8 | `theorem` | [coe_toEquiv](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/coe-toequiv.md) | 87 | `result-track:c0a759ce8d277ddd0789765567450b1ff2a3736a3e41f2c5b5e0a6490135c5fa` |
| 9 | `theorem` | [coe_symm_toEquiv](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/coe-symm-toequiv.md) | 91 | `result-track:8d1400455bdd44516b9e040f798d4611fd7225c45a65627f82c4250a3cec4214` |
| 10 | `theorem` | [ext](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/ext.md) | 95 | `result-track:08d8282ec3132025fae7a3397bd1a56b67bc31eed7ef72bbdec5c9bdce3d47f5` |
| 11 | `def` | [refl](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/refl.md) | 100 | `declaration-track:1ddc71ac7ff7429e3a67a31af451ba5f9b604964bf0351300f39d26a2e424236` |
| 12 | `def` | [trans](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/trans.md) | 106 | `declaration-track:f9beea575a9e71492482a10cfe923364d3d00a78f157bdc2f19975585cbe924e` |
| 13 | `theorem` | [trans_apply](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/trans-apply.md) | 112 | `result-track:b53726339f4d47436465b6b77c3d6ce71be692701c94b19b3bf3677405387d38` |
| 14 | `theorem` | [uniformEquiv_mk_coe_symm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/uniformequiv-mk-coe-symm.md) | 116 | `result-track:95408b286653651cd2ece4867117e25f62084ec64674b9692279efbbb7239a5f` |
| 15 | `theorem` | [refl_symm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/refl-symm.md) | 121 | `result-track:193bdbc76b05955dabd1d6af23700504cbcf761a56a3f9f817565be7a7c192ba` |
| 16 | `theorem` | [uniformContinuous](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/uniformcontinuous.md) | 124 | `result-track:adef5ef90bc0af9730125a3d55d5f74b55c561a79f630a2f067b58a4b56eee45` |
| 17 | `theorem` | [continuous](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/continuous.md) | 128 | `result-track:12d5bfcc62ccd46300f8d8e3f9cd28a35b9184e4a53debc3b61a408cb5df8d0b` |
| 18 | `theorem` | [uniformContinuous_symm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/uniformcontinuous-symm.md) | 131 | `result-track:6a74d6ae194826ea7e9d15e09cd1ed6e4f143557e23e277b0ae78e40dbc57f06` |
| 19 | `theorem` | [continuous_symm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/continuous-symm.md) | 136 | `result-track:65265d71de546e52f583424bbb7b3e0e17bb7b5340757b72d51218a1a364cff0` |
| 20 | `def` | [toHomeomorph](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/tohomeomorph.md) | 140 | `declaration-track:e0c1b95a53f09fd4a017daa411fc39ddcbfebe8ef7e17a76bf458fcb273ee108` |
| 21 | `lemma` | [toHomeomorph_apply](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/tohomeomorph-apply.md) | 145 | `result-track:845fc2ee17db3ed274f8b05bfbc8cc4e451c08cf7113d901e7e1945363db1bfa` |
| 22 | `lemma` | [toHomeomorph_symm_apply](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/tohomeomorph-symm-apply.md) | 147 | `result-track:5e613f82ba9946eef82526311f0daf39f28c99cb47a14f2afcf3e655b9186796` |
| 23 | `theorem` | [apply_symm_apply](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/apply-symm-apply.md) | 150 | `result-track:b41dd45e8850d7a3cdc8c3db0d370da0ff7d38256c1bbeaa7d9d90440ced1cf3` |
| 24 | `theorem` | [symm_apply_apply](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/symm-apply-apply.md) | 154 | `result-track:5cc0f4b039ce12ed0ea7ac552dd4819b01939462a39a3607bf7a3ffd338d25fe` |
| 25 | `theorem` | [bijective](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/bijective.md) | 157 | `result-track:cc92fba07070a27f65cfd0a9e1c41eff4fcd778b2c7ad0a9958040bd715ddd6c` |
| 26 | `theorem` | [injective](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/injective.md) | 160 | `result-track:e9973844bde91041134a30eca850096f304aced0046c4a4669aa9e0df41668b2` |
| 27 | `theorem` | [surjective](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/surjective.md) | 163 | `result-track:69b0e82ea43d5fd2b620edaf20eba3b9e8c28f98e67c608ff978dcd4a252f52b` |
| 28 | `def` | [changeInv](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/changeinv.md) | 167 | `declaration-track:6d9980fca9935f6cefe418022dfb965b48b7dcdc2ac985020daa0ec0476e7714` |
| 29 | `theorem` | [symm_comp_self](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/symm-comp-self.md) | 180 | `result-track:06201b7f50e38ee19f7d52e9c0df529565c8daf0c4cf87c3f7e45c377fd5488f` |
| 30 | `theorem` | [self_comp_symm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/self-comp-symm.md) | 184 | `result-track:9580d11a62d6199ab397de84c6e899aa8f05ea8ffdd96e63fec761ec36d8cc05` |
| 31 | `theorem` | [range_coe](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/range-coe.md) | 187 | `result-track:e2d86558cd4531e16094ed7076d7f4a7b7bfd25a029acdfbdcb31e9f5a3e7abd` |
| 32 | `theorem` | [image_symm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/image-symm.md) | 189 | `result-track:dd671c00f9f237f465125810ca03a241b34dd7869bbb3878b4c69a8aa8f254a5` |
| 33 | `theorem` | [preimage_symm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/preimage-symm.md) | 192 | `result-track:c41bf3a17a709fef4d10143cf136e6fce9f4e23e8ae1afda06219e49f8f9d3c9` |
| 34 | `theorem` | [image_preimage](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/image-preimage.md) | 196 | `result-track:46cb55b1ac4a2dda575549606bfc699b9fcaf4daf767a71e30bf38aa313db393` |
| 35 | `theorem` | [preimage_image](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/preimage-image.md) | 200 | `result-track:96756ace4142f0cfc0c199fd9c4260476daac4d25b0a4ce9b11d4dc2d119d587` |
| 36 | `theorem` | [isUniformInducing](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/isuniforminducing.md) | 203 | `result-track:e93aabda0429d75859843aa6d4676a0ee57ea87e4d04241426879d7edf1fecae` |
| 37 | `theorem` | [comap_eq](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/comap-eq.md) | 207 | `result-track:573b840eb387b5800e95d207604492baf8002b2dcf56919ec6e6f2f34c222201` |
| 38 | `lemma` | [isUniformEmbedding](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/isuniformembedding.md) | 210 | `result-track:063814f1e7c7525d0d708c353825336db5883fe0b7362c37bf77f4cb7ce5039a` |
| 39 | `theorem` | [completeSpace_iff](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/completespace-iff.md) | 212 | `result-track:4da6bc801e0d5bad74d3dc1383bff8fd37336300b0861af07bda117d36d1511a` |
| 40 | `def` | [ofIsUniformEmbedding](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/ofisuniformembedding.md) | 216 | `declaration-track:22b536cb02b3870d1a06e533e33633d469ad3270e2c7ccc60b90a4db88196528` |
| 41 | `def` | [setCongr](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/setcongr.md) | 226 | `declaration-track:190ab0abae2531842ac9bf52ed73b45dfb23043cb24ab3ce6c45d15b6a5c0922` |
| 42 | `def` | [prodCongr](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/prodcongr.md) | 232 | `declaration-track:9dff96f08498f69f9c5327d3d11a1833c3e4eb72e92952b6c09da783c43e1971` |
| 43 | `theorem` | [prodCongr_symm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/prodcongr-symm.md) | 242 | `result-track:128917a6d16fbc271003bda5dd8cb021359bbc23958d98b06a4631d3676002d4` |
| 44 | `theorem` | [coe_prodCongr](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/coe-prodcongr.md) | 247 | `result-track:96b4cf51f29e352aeffcac592e1a3a5dd8010e7d60293cf230877ccf7aa88548` |
| 45 | `def` | [prodComm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/prodcomm.md) | 255 | `declaration-track:03fb64eafa694bdd22654f9e3d87a9ad5a7a1aafc628bf6fe8395e4f5488643e` |
| 46 | `theorem` | [prodComm_symm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/prodcomm-symm.md) | 261 | `result-track:2b3454703d2d63d176c940745b0292af4e97ce21f40e4d752ecf5e4576774ab8` |
| 47 | `theorem` | [coe_prodComm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/coe-prodcomm.md) | 265 | `result-track:be4e3e94d6343beb9747bbe389dc4dc9b8061651d4d5412565efc00fc5c97240` |
| 48 | `def` | [prodAssoc](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/prodassoc.md) | 269 | `declaration-track:423eea09b993d17f80d7b20a9823976fb2163cafb1ec3e523403a0e854666b48` |
| 49 | `def` | [prodPunit](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/prodpunit.md) | 280 | `declaration-track:e92b49d6b078fa9095a8c60f89f3d630ce6f6e53ec3ca9edcd7908c7880eca98` |
| 50 | `def` | [punitProd](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/punitprod.md) | 286 | `declaration-track:66d520b89a2230c46e8011dd3eb8800963f707f9226cdeb66a4afed94aa4415c` |
| 51 | `theorem` | [coe_punitProd](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/coe-punitprod.md) | 290 | `result-track:765688ee776e070f725534fe56b2b74e517b175ddbf2154b0d93a10bfc3846a1` |
| 52 | `def` | [piCongrLeft](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/picongrleft.md) | 296 | `declaration-track:180430368337e5fa32849dd01af7d5c7630c628127850f57a2c276a931dbd079` |
| 53 | `lemma` | [piCongrLeft_refl](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/picongrleft-refl.md) | 305 | `result-track:073a1ea247d8b1b42efa4ff0211ec85ff7964c37fec2a55bf66731bbb1f1f341` |
| 54 | `lemma` | [piCongrLeft_symm_apply](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/picongrleft-symm-apply.md) | 310 | `result-track:1dd64dc5bade440b1630732b789f40d8d0f0199e62e4dee61b24dc29bf4a86d6` |
| 55 | `lemma` | [piCongrLeft_apply_apply](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/picongrleft-apply-apply.md) | 315 | `result-track:270c43076d467977ae817ff24df9e91be2ef5b51d18c0166ec3a953baec7e281` |
| 56 | `def` | [piCongrRight](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/picongrright.md) | 322 | `declaration-track:0823e6d41b61f3095174c919b4052e93dbe277da48a83fa238fb9e585a68a05a` |
| 57 | `theorem` | [piCongrRight_symm](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/picongrright-symm.md) | 329 | `result-track:0034183065fc69d1fa6bf71a615b39813147c9ef96a8a15aca4d08df831f506c` |
| 58 | `theorem` | [piCongrRight_refl](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/picongrright-refl.md) | 335 | `result-track:804e9620087f4097aff9b54cc27a4878f32f633e14fcdd486472beac7d12b5e8` |
| 59 | `def` | [piCongr](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/picongr.md) | 343 | `declaration-track:27f5f5c0210aa88f0a75cda64694288367f5e438ed3d490a736dadf9d00def64` |
| 60 | `def` | [ulift](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/ulift.md) | 349 | `declaration-track:998a66cb00670cb3d618bbe8620a5f09a28da49e0f535ced63ade59c7ae00d40` |
| 61 | `def` | [funUnique](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/fununique.md) | 361 | `declaration-track:7a4f2785362b081f641a7700b10c7a1604a7f6d7d168c9266a5bb074c98dab17` |
| 62 | `def` | [piFinTwo](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/pifintwo.md) | 368 | `declaration-track:0f58e3a51b60fc29ffcf4877b16938004a7ae78dc0b9fa71c95802a1e4a982b7` |
| 63 | `def` | [finTwoArrow](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/fintwoarrow.md) | 376 | `declaration-track:fbb6e2bb26fa8c139420d6f61188fb36dd3507ce967c48c2c6f496d9981ffe1c` |
| 64 | `def` | [image](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/image.md) | 381 | `declaration-track:c26fe875d63822d82b8082858cbecc71a03721f477bb41a2ac4c0586dd108ea7` |
| 65 | `def` | [Equiv.toUniformEquivOfIsUniformInducing](../../../../GeneralTopology/EquivNamespacedIsUniformInducing.lean/declarations/equiv-touniformequivofisuniforminducing.md) | 390 | `declaration-track:532369d7319830f8dc23f148f853a69542b8d53d322fff282111c592d91144f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=95aed732485f586d30329d2815efdffb68af964a876fa2b752751aa00e857ace -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622e3692ec3a36318f8bdcceaa4d5772f6b5d68154986d9dfc0bc0df3351d2d8.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/UniformSpaces/Equiv/Variant622e3692ec3a36318f8bdcceaa4d5772f6b5d68154986d9dfc0bc0df3351d2d8.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
