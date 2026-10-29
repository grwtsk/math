# Verification target: Finsupp Defs Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1d08ffe87677b617138f97d3ec536af29d96e5a",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1d08ffe87677b617138f97d3ec536af29d96e5a`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [linearEquivFunOnFinite](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/linearequivfunonfinite.md) | 69 | `declaration-track:6838900e0be443eba3f5ea0eb2e427e31eaadcead0e8ae3c7df2139f1aa261a8` |
| 2 | `theorem` | [linearEquivFunOnFinite_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/linearequivfunonfinite-single.md) | 76 | `result-track:16a0e66c465e8e9e7d83cbdda6d39be5bedf85ecf9c63479309027100bbb9a07` |
| 3 | `theorem` | [linearEquivFunOnFinite_symm_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/linearequivfunonfinite-symm-single.md) | 81 | `result-track:ca4970cbe4e6a016dbb5684add22dad423f9ef03a3d8f4866008a7f173080705` |
| 4 | `theorem` | [linearEquivFunOnFinite_symm_coe](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/linearequivfunonfinite-symm-coe.md) | 86 | `result-track:832e1f48b84480af7896d4f7b45e52b71203bd93a029666e5d68477478e1a0a4` |
| 5 | `theorem` | [linearEquivFunOnFinite_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/linearequivfunonfinite-symm-apply.md) | 90 | `result-track:0414bfcc6647a1416eb54cc39092dc32eb74f434223c18b2741d94da3c0ea335` |
| 6 | `def` | [lsingle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lsingle.md) | 96 | `declaration-track:b1b2762ecb0ac828696f57a4a822847f1a34d61c04dd48cef137107f37ff9c8f` |
| 7 | `theorem` | [lhom_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lhom-ext-source-edition-2.md) | 100 | `result-track:a91a180f109b573c11153ed4b8ad5e575e1fad62af7b26175931b0bb2c65ebb6` |
| 8 | `theorem` | [lhom_ext'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lhom-ext.md) | 110 | `result-track:44a3b2716d2349a7cc7f3fc3be6d36d455b857ec57c592ddca93cad5faa7c7ec` |
| 9 | `def` | [lapply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lapply.md) | 115 | `declaration-track:0a832263fcda5b1fcc1e3df1b932bf7f49b3cbe0d6276c9961b5354edf6733d7` |
| 10 | `instance` | [(anonymous)](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/instance.md) | 118 | `declaration-track:72119ce25d7b8abf3740c75ebf93c169ac8c522e999a7f6d8d0e68cbb8c30a07` |
| 11 | `def` | [lsubtypeDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lsubtypedomain.md) | 126 | `declaration-track:655b256e425ad86bfeda61fbd29b65ad00dff5ad061e57c54111dab62990164a` |
| 12 | `theorem` | [lsubtypeDomain_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lsubtypedomain-apply.md) | 131 | `result-track:2edd1e352225b4651c90e50257f70c164014f54ac929e14dd7b1366b5acc2c78` |
| 13 | `theorem` | [lsingle_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lsingle-apply.md) | 138 | `result-track:6fe97a259884cda888a1163db41cbc4eddedc2663a54aadc52b88ad6c86a237a` |
| 14 | `theorem` | [lapply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lapply-apply.md) | 142 | `result-track:da040a395ba073905a567ab9346987087fbf0e70b181dc1651b7f39a6dac8d48` |
| 15 | `theorem` | [lapply_comp_lsingle_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lapply-comp-lsingle-same.md) | 146 | `result-track:2fe197f43430fd96534f4e9ea29b45a7d86a5d69610af060828bcf3fd7edc7d6` |
| 16 | `theorem` | [lapply_comp_lsingle_of_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lapply-comp-lsingle-of-ne.md) | 149 | `result-track:a5c87a9cdcb085de508a716bbca1de634ec1059045db7e089f71459cafe75553` |
| 17 | `def` | [lmapDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lmapdomain.md) | 157 | `declaration-track:15a9146510af0f3c18acc095e07e7172786683aa5a8dd400fa8ade39941ccd9e` |
| 18 | `theorem` | [lmapDomain_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lmapdomain-apply.md) | 163 | `result-track:ef4afc8807b74dc268906bbe6fef373091c53a13cd58ade7153a3f74d6d8b11d` |
| 19 | `lemma` | [coe_lmapDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/coe-lmapdomain.md) | 167 | `result-track:77ec01a33136462f8cfddad46593e28b03a859940538d6a69de4680a75e49a14` |
| 20 | `theorem` | [lmapDomain_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lmapdomain-id.md) | 171 | `result-track:8cef5b50250dfccad615fc786f429988ccc22363219b1e8a001f9047672eefed` |
| 21 | `theorem` | [lmapDomain_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lmapdomain-comp.md) | 174 | `result-track:a4951bcb7d8b472885298649b13aa7ee4e7bda6d116d9fac11ce0fc6cb4becb5` |
| 22 | `def` | [mapDomain.linearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/mapdomain-linearequiv.md) | 179 | `declaration-track:74ea425d2d0fa3e065b9b6a69fc381ca588a477cb0498c049b80de384fb8e5af` |
| 23 | `theorem` | [mapDomain.coe_linearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/mapdomain-coe-linearequiv.md) | 187 | `result-track:b19cb3bebfc80a57c2fa2db1638ed335e6f9f1cb85904d820e5e75d9fca80c5f` |
| 24 | `theorem` | [mapDomain.toLinearMap_linearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/mapdomain-tolinearmap-linearequiv.md) | 190 | `result-track:2aa29460b63204109822c1ac7728ab10ccae1e97148a8b3b5f24b166f47002c0` |
| 25 | `theorem` | [mapDomain.linearEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/mapdomain-linearequiv-symm.md) | 193 | `result-track:290b9f397654d0acb285bb4d805eaeb080dc1c20d29bd47b1f51faf9467b0ca7` |
| 26 | `def` | [lcomapDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/lcomapdomain.md) | 208 | `declaration-track:ddd1c04c212671298d1e4f67e9a2df9b11c7ba0ace1691829257c07f5a44cdcc` |
| 27 | `theorem` | [leftInverse_lcomapDomain_mapDomain](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/leftinverse-lcomapdomain-mapdomain.md) | 213 | `result-track:34b65a593a8add9a29c58476b9e89950bfde13785b2112a7347e51337d672f81` |
| 28 | `def` | [mapRange.linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/maprange-linearmap.md) | 221 | `declaration-track:7664cd7d445fcbe0cebcad918184aaef64f6cf716daa1ba0f75153ef672bc16f` |
| 29 | `theorem` | [mapRange.linearMap_id](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/maprange-linearmap-id.md) | 227 | `result-track:c192daa41fd78357383007cd6a91643a0c4e9ccfde003614ed18701ab859eed6` |
| 30 | `theorem` | [mapRange.linearMap_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/maprange-linearmap-comp.md) | 231 | `result-track:0de55a85bdcbe59a7db96a6f0c220182a5103ad6d812a63f286ca7e892e0218f` |
| 31 | `theorem` | [mapRange.linearMap_toAddMonoidHom](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/maprange-linearmap-toaddmonoidhom.md) | 237 | `result-track:36f9a7ac2dc1dbc80744d7d3dbc5ab29914ae4a8f036e5963fa1d561317b062f` |
| 32 | `def` | [mapRange.linearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/maprange-linearequiv.md) | 250 | `declaration-track:cf228f58f34e6cd115348d9707a22a3ed2c96221a21c8d0e3092384240374f35` |
| 33 | `theorem` | [mapRange.linearEquiv_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/maprange-linearequiv-refl.md) | 257 | `result-track:44f406aad3a07b486c195f491e806d32f42a67f2f43644479bdbf78ceecf78d8` |
| 34 | `theorem` | [mapRange.linearEquiv_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/maprange-linearequiv-trans.md) | 261 | `result-track:8ae3ac9a5bcbed0e322c0c506b93c2f29ab58e40da02fc311d4b7030a1ecec24` |
| 35 | `theorem` | [mapRange.linearEquiv_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/maprange-linearequiv-symm.md) | 267 | `result-track:1705bde7bf75159540eff4edc828d6e96b1e87f2cabe96206c73b7976f21d01c` |
| 36 | `theorem` | [mapRange.linearEquiv_toAddEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/maprange-linearequiv-toaddequiv.md) | 272 | `result-track:1cde29e7908a770ee21cf3ad6e2678b878c249d7755e4b75a52497fc74e46a9f` |
| 37 | `theorem` | [mapRange.linearEquiv_toLinearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/maprange-linearequiv-tolinearmap.md) | 277 | `result-track:1d79559564f5164a74e81014d62ad42495c8639e5e5d96bfb92f478b84e9d117` |
| 38 | `def` | [curryLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/currylinearequiv.md) | 293 | `declaration-track:f4543b7b1cb650372d00c5e47b6fbda658ab7daf413291b32e3c933a8cc2ba69` |
| 39 | `theorem` | [curryLinearEquiv_symm_apply_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/currylinearequiv-symm-apply-apply.md) | 297 | `result-track:9889818b883d351e10aef48b88046486e14e418a18d69627e9db65cfa0651f78` |
| 40 | `def` | [Module.subsingletonEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/module-subsingletonequiv.md) | 316 | `declaration-track:ea38209cbff799c088b2b49249c89ecc898226c5a0740451415921d5bc0cc8e6` |
| 41 | `def` | [ringHomEndFinsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/ringhomendfinsupp.md) | 336 | `declaration-track:82e468f1d74e05d5738a5db6aaae07feb5eb325d8773c4294ffa7c5eb252e290` |
| 42 | `def` | [ringEquivEndFinsupp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/ringequivendfinsupp.md) | 358 | `declaration-track:c410c419e6234ce41e5d2214ad2c76c1b9cb9f3f7e7a03ff2463bbe4d3c9e91a` |
| 43 | `theorem` | [ringHomEndFinsupp_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/FinsuppDefsNamespacedPublic.lean/declarations/ringhomendfinsupp-surjective.md) | 375 | `result-track:44679bf71c4c7e8f49957cbed852be6f3f6118ce1ee7d27739215bc8bfa5e963` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e1cea9f56cb7cbe157f46e51c5f8949768197f3425b83f2f51be962a21018e3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Defs/Variant062ca82f631af5293c79b144e7ffcacb44fdaba79ccf7a77631df27341eea0ea.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
