# Verification target: Linear Algebra Pi Namespaced Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afa008609ea31c48770b74eed32bc8862c10c06b",
  "lexical_observation_count": 96,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/index.md) · [Full source](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afa008609ea31c48770b74eed32bc8862c10c06b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean.json)

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
| 1 | `def` | [pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi.md) | 64 | `declaration-track:279591b35b0ae8832cb67af7c7800b8bb2f60d7c746e5284252736180dd519c6` |
| 2 | `theorem` | [pi_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-apply.md) | 70 | `result-track:06dd44e6869ad932b010add0a09d931fc971952e17418ba18f48a9535ea6d0d2` |
| 3 | `theorem` | [ker_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/ker-pi.md) | 73 | `result-track:10f2794c8d1e0fd12276702edf6015cdc5b54503ebb1fd385b89b63ea8036317` |
| 4 | `theorem` | [pi_eq_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-eq-zero.md) | 76 | `result-track:5f01f770742313cd995736099568ddfe7a9277cea604ff7e9474ec63cb3bf626` |
| 5 | `theorem` | [pi_zero](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-zero.md) | 80 | `result-track:5337ab6cb0ca69dd28db9d57699f9e0a12a4d1e44dc4a281df90dee1e16a2892` |
| 6 | `theorem` | [pi_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-comp.md) | 82 | `result-track:e34b88980ff00ed6915c0b1bf8c694166bb3a764db1c4491623f62c610646f48` |
| 7 | `def` | [const](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/const.md) | 87 | `declaration-track:18e817801600ed0652ebbbfceab3db0a2a30f94111397226b3274fc9119305d6` |
| 8 | `lemma` | [const_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/const-apply.md) | 89 | `result-track:70553c33f5e5418d2ef51845c98d56050df30d05e3d566e1e50b127a9ad29364` |
| 9 | `def` | [proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/proj.md) | 95 | `declaration-track:d8a7fd342c89114ae0033315a6e14ad1502d64abc547014d9ea02cbe0a2c41d9` |
| 10 | `theorem` | [coe_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/coe-proj.md) | 101 | `result-track:a3eb91bffb1ff138cc5a326ac4eff832fafd7a40419a7d84921c75186130cf7f` |
| 11 | `theorem` | [toAddMonoidHom_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/toaddmonoidhom-proj.md) | 105 | `result-track:be844b40a850fcc5fa600d905f669f51c990860838cc34d4cb4299ce4bef7a59` |
| 12 | `theorem` | [proj_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/proj-apply.md) | 108 | `result-track:29fff5ff9a186e7aa66b71f3471ee1699a3fda7b870a64e1279941eca0f9576d` |
| 13 | `theorem` | [proj_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/proj-pi.md) | 112 | `result-track:bc84613f831779cbd703c485eb0843a7f0c2e9b32720281c99e2b080af7417a6` |
| 14 | `theorem` | [pi_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-proj.md) | 115 | `result-track:65515aea497a0d92c90c0c36d7ecef534df89d7e0457855dbebaf5e31c1d5ef5` |
| 15 | `theorem` | [pi_proj_comp](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-proj-comp.md) | 118 | `result-track:370cf506e1fce1daa7d9024ec52c02a6c2150e662e8167bfb6232e5b81a1d32d` |
| 16 | `theorem` | [proj_surjective](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/proj-surjective.md) | 120 | `result-track:c356436359d68959fe19587edcba4eb34d3bb04ee783678f114a389e25a5cfed` |
| 17 | `def` | [Linear Algebra Pi Namespaced Public](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/linearmappi.md) | 124 | `declaration-track:3c097f2aa966f88a725453be6eff753aef428f420c15d123a4a90fa98a1f670e` |
| 18 | `theorem` | [iInf_ker_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/iinf-ker-proj.md) | 133 | `result-track:46aed879529c4d4654db7c7077d12ada76725b3fb848de7fb947d185685a8c50` |
| 19 | `instance` | [CompatibleSMul.pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/compatiblesmul-pi.md) | 140 | `declaration-track:ebece839ef26020980f5d23b53393ba1342fff080c25a60ba9c6511aab08b5fb` |
| 20 | `def` | [piMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pimap.md) | 151 | `declaration-track:dce37a1256d84727f7e71fae878023e17ce1e2b952b51254dba69413ca3ff8f3` |
| 21 | `theorem` | [coe_piMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/coe-pimap.md) | 156 | `result-track:c0a92bf8f096090d0f9ec22845335748c6a39d413a2f7aa40e7199797cf0e259` |
| 22 | `def` | [compLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/compleft.md) | 163 | `declaration-track:65cf7620a60675df5531cb86dae2ce5f833939bd3d3b7a4850bef77d5774345a` |
| 23 | `theorem` | [apply_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/apply-single.md) | 170 | `result-track:1af3570e03db3627f8d92bf404127472992433decaea96587a6ff5c40a61672b` |
| 24 | `def` | [single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/single.md) | 177 | `declaration-track:26f80fa0d621ad1291c923d46796f9e4f2cc714af4761ab4f3bc26b043232be7` |
| 25 | `lemma` | [single_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/single-apply.md) | 182 | `result-track:8af6e20666fafd4c1636e4a8915dd883680ee3d2f039a7eefc109efe6429a070` |
| 26 | `lemma` | [sum_single_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/sum-single-apply.md) | 186 | `result-track:70c3da0c4813702b2c5f5661d0dfd147073d368dd0d8ca746737ebee8190f77e` |
| 27 | `theorem` | [coe_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/coe-single.md) | 190 | `result-track:2f0fdc931c07545009f0c9bac3f1144a5ec50e3d50d5f330e114885dc49e05b7` |
| 28 | `theorem` | [proj_comp_single_same](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/proj-comp-single-same.md) | 196 | `result-track:3cbfa6d5079a921cb847dd6c047d18cdbe18b9b7c67f4b8163a044ca4b010284` |
| 29 | `theorem` | [proj_comp_single_ne](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/proj-comp-single-ne.md) | 199 | `result-track:50405d1ccd3773d35b7c64d3c9cc93ae1d28f0aa1bee7825a87f649228107ea7` |
| 30 | `theorem` | [iSup_range_single_le_iInf_ker_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/isup-range-single-le-iinf-ker-proj.md) | 202 | `result-track:35c3abab35b5445de358683bf3fbc8f7e1cb7651423b1b03ca04fdb532b0f074` |
| 31 | `theorem` | [iInf_ker_proj_le_iSup_range_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/iinf-ker-proj-le-isup-range-single.md) | 211 | `result-track:2377d94ba70c2bcef3a6ad027e7d2980dd5fac44e64ad338ed8d13f7397efb51` |
| 32 | `theorem` | [iSup_range_single_eq_iInf_ker_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/isup-range-single-eq-iinf-ker-proj.md) | 226 | `result-track:2dadbdf3654873ac86f91b2c3236afa2d3f821b3fba11f9dfe3e18fec0b28e96` |
| 33 | `theorem` | [iSup_range_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/isup-range-single.md) | 231 | `result-track:8ede674e16a824950907b365722be353f1f6b9fb103ce2bbce6880297046e257` |
| 34 | `theorem` | [disjoint_single_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/disjoint-single-single.md) | 234 | `result-track:cb63274ff182d5b207f9f681e2c510fdd651b5a2ae8955afefe8cb5fd377c4c1` |
| 35 | `def` | [lsum](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/lsum.md) | 252 | `declaration-track:4f11b3be0b119aebfd01f5798cc60e35d62f2935ccc27b671f2fedd0d80347d5` |
| 36 | `theorem` | [lsum_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/lsum-apply.md) | 267 | `result-track:cc96d72a61453d2b04912f67dda9a757c30c76edc9aa591eb70857436ca50a3e` |
| 37 | `theorem` | [lsum_piSingle](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/lsum-pisingle.md) | 271 | `result-track:cb9bd198d9c6fb2fd11395c56f708fd14c359a2578e84f28d7cc62732d59c148` |
| 38 | `theorem` | [lsum_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/lsum-single.md) | 277 | `result-track:44852f955eee09892cdd95640055bbc51d2dd281a06dcd35a19afdafdabadfcc` |
| 39 | `theorem` | [pi_ext](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-ext.md) | 288 | `result-track:2aafea1314aef156c5fcc977dad0174a26adf0e3a9e459412a781de4f0b750a9` |
| 40 | `theorem` | [pi_ext_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-ext-iff.md) | 291 | `result-track:92e57b69e637e09728a247a45ee7be4568414c93bbc255907c78dd4b4fd1291d` |
| 41 | `theorem` | [pi_ext'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-ext-source-edition-2.md) | 297 | `result-track:e0d0994c925aa1bb5b07ea0ca9d5fb965b2a2540a6af4a96af9ce10ac75ec81f` |
| 42 | `def` | [iInfKerProjEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/iinfkerprojequiv.md) | 309 | `declaration-track:c28df5a5b75fe07e18d1c16544001aef89b5e3279f004c05ba0c2183cd14ca3e` |
| 43 | `def` | [diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/diag.md) | 341 | `declaration-track:58c5daccea8eb44a52758afb4aac1fc4c727cd59e6eca149587660a5b4f7c8a6` |
| 44 | `theorem` | [update_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/update-apply.md) | 344 | `result-track:c261779c5412480d975da8453ec9960a72c9b5d68da934d5481aca2abaf06c22` |
| 45 | `theorem` | [single_eq_pi_diag](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/single-eq-pi-diag.md) | 352 | `result-track:b8a43442017b8d7ecf9061b85892309511a4d38131079981a8740233b4d85b24` |
| 46 | `theorem` | [ker_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/ker-single.md) | 357 | `result-track:355300b99d29d4bd22039687793323617df0637c501ee39f6541362bbe311320` |
| 47 | `theorem` | [proj_comp_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/proj-comp-single.md) | 360 | `result-track:3d080ddb18e2312a62a4adab51f7cbd29c22674452cf18d54334a7e1deff280a` |
| 48 | `theorem` | [pi_apply_eq_sum_univ](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-apply-eq-sum-univ.md) | 367 | `result-track:d00643d50917cd7b6f268f39901f9f13189bea113521e10a89eec9fff4669533` |
| 49 | `def` | [pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-source-edition-2.md) | 385 | `declaration-track:5f53f6cb5b9383846de653d72809a212962f574186b42ce022f6d2f0c6df6771` |
| 50 | `theorem` | [mem_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/mem-pi.md) | 396 | `result-track:859f672a3bba59016becc40c20afb01ff4eee41b97bb17fb8af6afa66bd20a31` |
| 51 | `theorem` | [pi_empty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-empty.md) | 400 | `result-track:ac5429c3b458f144c1aca13f699f0f0afaefb0eaf7676496be1b3e5c748c1189` |
| 52 | `theorem` | [pi_top](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-top.md) | 404 | `result-track:493065f4c8ef692a28dd46b27399393e80a03bbc285ac53395fa0a87a33bc084` |
| 53 | `theorem` | [pi_univ_bot](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-univ-bot.md) | 408 | `result-track:09b5e75fb6460530ab82a5725b6b486858104c607f1d4008659180d54bc2a4d8` |
| 54 | `theorem` | [pi_mono](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-mono.md) | 412 | `result-track:bef1f198496d2a05f859ad735910a0d0f55dabf4d4b4eb202f8618e1e745ca83` |
| 55 | `theorem` | [biInf_comap_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/biinf-comap-proj.md) | 415 | `result-track:79486694425cc6adcdba5ee30ec19369320dd558df5050765c4bbdf63c496b9e` |
| 56 | `theorem` | [iInf_comap_proj](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/iinf-comap-proj.md) | 420 | `result-track:e750a3fd2af9251703dbeb9a78c1dc1908655582e3e3c105f47b499349795662` |
| 57 | `theorem` | [le_comap_single_pi](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/le-comap-single-pi.md) | 425 | `result-track:319ab6dab0e9c077e3ad8e967d73202434c377f6a7ebe58ddc1587e53fd536f5` |
| 58 | `theorem` | [iSup_map_single_le](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/isup-map-single-le.md) | 432 | `result-track:6d88cff9d9261847aced7eb5830176c5ff7e62756b31366e6fb7ab0347dfcabc` |
| 59 | `theorem` | [iSup_map_single](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/isup-map-single.md) | 436 | `result-track:709b43c2aaa04117b79f012f1c34486127244cd5c16aabc2799624b4aa8a66c9` |
| 60 | `lemma` | [ker_compLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/ker-compleft.md) | 449 | `result-track:8f6d2a6e8b88e7296c801b1e9963c26c88066f7e70b112417cfdb1eb484ed16d` |
| 61 | `lemma` | [range_compLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/range-compleft.md) | 455 | `result-track:f7c923af639444cecea1d57df10b4bdb3b351ecc42c7484ea2e1ad8b4f6481a9` |
| 62 | `def` | [piCongrRight](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/picongrright.md) | 475 | `declaration-track:ef0fb7af066aa8517bad214f257e58174f4080a57e23bc1d7467f557e0bf04e5` |
| 63 | `theorem` | [piCongrRight_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/picongrright-apply.md) | 482 | `result-track:7b9a83e0c60cf4bfa7da6de58f3a5b3d293355e253cc681dfa1b0bf740cfb3ad` |
| 64 | `theorem` | [piCongrRight_refl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/picongrright-refl.md) | 486 | `result-track:8a41a173b8cf49b4c79bbc585cfe4d606136cd159b9de051a8f19ac366cbc947` |
| 65 | `theorem` | [piCongrRight_symm](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/picongrright-symm.md) | 490 | `result-track:e5fe1a0c6eb2546a9b04190c3027f42d65515c24c76b0061fc50e08dc2b15afb` |
| 66 | `theorem` | [piCongrRight_trans](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/picongrright-trans.md) | 495 | `result-track:47487f427d86c542f40977e926a4af2d4d91d15f0d66bb575262760887fbd3ac` |
| 67 | `def` | [piCongrLeft'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/picongrleft-source-edition-2.md) | 505 | `declaration-track:69f15235e668a67818a3b26b0bc934860f8c36d3e39022e9abd855ce8530d7a8` |
| 68 | `def` | [piCongrLeft](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/picongrleft.md) | 514 | `declaration-track:5cee11fe133eb389ed7ec39cf7f18eb026f3e33608be1d8320dacc6705de8b00` |
| 69 | `def` | [piCurry](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/picurry.md) | 518 | `declaration-track:17e7ae68e817b3a60ca8caa66ae81f1ea24b3357d08857758cda3234b06c552c` |
| 70 | `theorem` | [piCurry_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/picurry-apply.md) | 525 | `result-track:7a08aef7fdb96bfcdc4f53283cf28265c552884f655f20bf4e64e0de993b0e67` |
| 71 | `theorem` | [piCurry_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/picurry-symm-apply.md) | 531 | `result-track:a749fc9fbc0f572db7602f0fe0c329b0b090ed50310ec08057bd02fbdb66e687` |
| 72 | `def` | [piOptionEquivProd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pioptionequivprod.md) | 538 | `declaration-track:9612845e6ee519687f91573827e917e51bc9a2b9fcbd100e73e66fe7840aee8b` |
| 73 | `def` | [piRing](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/piring.md) | 555 | `declaration-track:aa64639121186121fd07257bf9245524aee4e8b0d2ca748d0706a813351ff52d` |
| 74 | `theorem` | [piRing_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/piring-apply.md) | 562 | `result-track:03d6a033fd91dcf10306276b0657edca966258b03c045d8c29c243ada38eda03` |
| 75 | `theorem` | [piRing_symm_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/piring-symm-apply.md) | 566 | `result-track:7a3486aab1b8c82ec32b298a85608c7bee058dc418dfc0fa76ff556d91d26fe0` |
| 76 | `def` | [sumArrowLequivProdArrow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/sumarrowlequivprodarrow.md) | 572 | `declaration-track:1a17b75f74b799d79a0579264605f5cf31c4fc67f8af8e30bec9cd5df7f76b1f` |
| 77 | `theorem` | [sumArrowLequivProdArrow_apply_fst](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/sumarrowlequivprodarrow-apply-fst.md) | 584 | `result-track:41b30dd582469eebacdc3d8c8230fec2b5954ea9381502d40f5f740fa76a285f` |
| 78 | `theorem` | [sumArrowLequivProdArrow_apply_snd](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/sumarrowlequivprodarrow-apply-snd.md) | 589 | `result-track:2139b5e4ce0de3286ac99d6b7a4b503edd67d6a603a59727fcca53929cf6c989` |
| 79 | `theorem` | [sumArrowLequivProdArrow_symm_apply_inl](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/sumarrowlequivprodarrow-symm-apply-inl.md) | 594 | `result-track:1356b00122818817614d90f6409fb784271066b22e0438c29383c3a177e4669f` |
| 80 | `theorem` | [sumArrowLequivProdArrow_symm_apply_inr](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/sumarrowlequivprodarrow-symm-apply-inr.md) | 599 | `result-track:e38798e82845786759ac0677e8aa2f04642f157767320ed355ec48b25951e021` |
| 81 | `def` | [funUnique](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/fununique.md) | 605 | `declaration-track:9e8da02c2fdabba4de5c052d1761f806cb45e80b8765f815c3a9a7a6b4de23a6` |
| 82 | `theorem` | [funUnique_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/fununique-apply.md) | 611 | `result-track:0356a6ab963ce570a58ca949837901fee0bcedadff603b5a5d02bd2ca260386d` |
| 83 | `def` | [piFinTwo](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pifintwo.md) | 618 | `declaration-track:fc3ecbd11258b2dc6119e909c88084aa58ad8e814cfd4f582cc92151560c8a06` |
| 84 | `theorem` | [piFinTwo_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pifintwo-apply.md) | 626 | `result-track:1531340c45661a33e571578f8ba981627271e7ac28d316e62ce61459b586256d` |
| 85 | `def` | [finTwoArrow](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/fintwoarrow.md) | 632 | `declaration-track:98204af4d8af2b0863a82d53387be78518dcfa2c5a9e2ebbb3d20c8a4ccb9c85` |
| 86 | `lemma` | [Pi.mem_span_range_single_inl_iff](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/pi-mem-span-range-single-inl-iff.md) | 637 | `result-track:c395997e661e10166059bd993682c949ff9bbb8bf3ebb728750a6b24838b451a` |
| 87 | `def` | [Function.ExtendByZero.linearMap](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/function-extendbyzero-linearmap.md) | 660 | `declaration-track:781cb48d3ad15f02340f542c8d4892deba095954040158694a7756a63635e5ac` |
| 88 | `def` | [Fin.consLinearEquiv](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/fin-conslinearequiv.md) | 670 | `declaration-track:e80162db522194d3a746182ace0396620d55c9c8d497a372b5606dcb1148ae82` |
| 89 | `def` | [LinearMap.vecEmpty](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/linearmap-vecempty.md) | 700 | `declaration-track:3931c78006a312cfd2a64b9faa229529fdf13bb090ab7380d3925ecf3594e2a1` |
| 90 | `theorem` | [LinearMap.vecEmpty_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/linearmap-vecempty-apply.md) | 706 | `result-track:1746dcdfab067a4697ed2e4737e7386d8103f174e6bf2d267b013100b7c32397` |
| 91 | `def` | [LinearMap.vecCons](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/linearmap-veccons.md) | 711 | `declaration-track:d61a75db88ab39f080f5fe9aee4ccdefa3f56bcd1e426d51a9f334d45aa2027d` |
| 92 | `theorem` | [LinearMap.vecCons_apply](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/linearmap-veccons-apply.md) | 715 | `result-track:c0fcd3cc3c72647648579da1df13dbe83d96dfa6e54e3821e9080001b5df324a` |
| 93 | `lemma` | [Module.pi_induction](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/module-pi-induction-source-edition-2.md) | 733 | `result-track:76a2ad63c09b37ffe9524a4c0552630b49da6d84b33f792dd07e19edd60d92cf` |
| 94 | `def` | [LinearMap.vecEmpty₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/linearmap-vecempty-source-edition-2.md) | 760 | `declaration-track:b31a70b26a03388ef8f84eaa3ceb531dbf618cd3318949b230f2bcc298a968c6` |
| 95 | `def` | [LinearMap.vecCons₂](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/linearmap-veccons-source-edition-2.md) | 768 | `declaration-track:e4f578f2d6206e3150d4a9510733f0a56ea3ad6a5aa7372a0a8c13889a0cb8a5` |
| 96 | `lemma` | [Module.pi_induction'](../../../../../LinearAndMultilinearAlgebraMatrixTheory/BasicLinearAlgebra/LinearAlgebraPiNamespacedPublic.lean/declarations/module-pi-induction.md) | 781 | `result-track:36b16f9bb82c5e49190164724655ab67f83109dc8fe6d799f1b364ae5bdfcb9e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8e7ce6e7bed1ac235d02e25ab013d3acfd1355b934977d9b17b348addeef2cee -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Pi/Variant7a126b367e60c4ead091ec067ddfd2f2932f3aad164f84c425466661e3217101.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
