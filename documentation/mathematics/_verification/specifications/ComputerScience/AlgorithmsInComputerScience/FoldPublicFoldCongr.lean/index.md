# Verification target: Fold Public Fold Congr

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "579a2bab97965b27d212eeeecd9cc2000695ad9f",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantcb0980a671b7b5e628492290a13e86581c620afca29e4e7fe75ff9ce5913d80c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `579a2bab97965b27d212eeeecd9cc2000695ad9f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantcb0980a671b7b5e628492290a13e86581c620afca29e4e7fe75ff9ce5913d80c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantcb0980a671b7b5e628492290a13e86581c620afca29e4e7fe75ff9ce5913d80c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Fin.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fold](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/fold.md) | 30 | `declaration-track:432ce427b8281f2bb2060ca8ceb04fafca7635980106bf8d758d3b8d85d1d0d7` |
| 2 | `def` | [foldTR](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/foldtr.md) | 46 | `declaration-track:7921c1ed0cba83f380e67ca134a5b581f54a6d1e8820bca76aa21c7ec3ba83e8` |
| 3 | `def` | [foldRev](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/foldrev.md) | 61 | `declaration-track:5a7e04893642e4bdf08808b88319bf178420216e212750211b7ab58afd291aa6` |
| 4 | `def` | [any](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/any.md) | 74 | `declaration-track:4d8a363c13b8ec98029ab4865713d7d885f9edb3c05db2ba11dcbf07b8ffca67` |
| 5 | `def` | [anyTR](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/anytr.md) | 89 | `declaration-track:c867033e5decf61a539ce94763551a7f9e197a86c8d2b7edac0bbb1ab35409af` |
| 6 | `def` | [all](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/all.md) | 104 | `declaration-track:20bb29a5b34b8e1ee5bd48b700ac20538a9b145aeaa399a87f0235fade84f41a` |
| 7 | `def` | [allTR](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/alltr.md) | 119 | `declaration-track:3bd7f2dc80fd2c65c91839b4458c57b22da4c6ca1d7f6a8a138b8d834276354d` |
| 8 | `theorem` | [fold_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/fold-congr.md) | 127 | `result-track:8c0583cb2b79a48f0d69ffc0b6b71a5e2a4013c9390f28536824ea5bab1033fd` |
| 9 | `theorem` | [foldRev_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/foldrev-congr.md) | 133 | `result-track:bc2ae70a851f7069c5e1a97d01f8fcbf0f970dd344a449f79f3cc123378bb875` |
| 10 | `theorem` | [foldTR_loop_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/foldtr-loop-congr.md) | 139 | `result-track:b7bec5741f42a2f00c9bae209d442d9bee4d5ad34a22a28d2ef740c102f008bc` |
| 11 | `theorem` | [fold_eq_foldTR](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/fold-eq-foldtr.md) | 145 | `result-track:2bd21aa93da3078beb35a71295ec5f9ec87a772f22b967cfbda3462f571bbb38` |
| 12 | `theorem` | [any_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/any-congr.md) | 161 | `result-track:be496c847a8d18c7e56873bf3136631958309523b998a470e854f405f41f5c7d` |
| 13 | `theorem` | [anyTR_loop_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/anytr-loop-congr.md) | 165 | `result-track:640e14f4168065160226fda106d0e304555da40a69a4b9df2b158efaaf085b07` |
| 14 | `theorem` | [any_eq_anyTR](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/any-eq-anytr.md) | 170 | `result-track:5d1782d28777290aa587b05c9204d3e62a1bff1b54f366cbb421c925f1bcb6ea` |
| 15 | `theorem` | [all_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/all-congr.md) | 186 | `result-track:1a1d56106cfe1c1e4193ce6fc13f76d649d4fefbd74dc1d10b19f0414091b4fa` |
| 16 | `theorem` | [allTR_loop_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/alltr-loop-congr.md) | 190 | `result-track:35729b00516a47a4f738a0e93c5b393ca14b0a90af052e539673e28ec5f43efb` |
| 17 | `theorem` | [all_eq_allTR](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/all-eq-alltr.md) | 194 | `result-track:91fb253e6855cd4a5d3b8f39eed6eefd0e62d574230b04915dbe3d35b29c3ebd` |
| 18 | `def` | [dfoldCast](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfoldcast.md) | 212 | `declaration-track:5cebd7684f98c0ce046a698635033b404fc1eb85207e9ab3cfc1b25332cb62cf` |
| 19 | `theorem` | [dfoldCast_rfl](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfoldcast-rfl.md) | 217 | `result-track:4d35ac287775b1c17bacbca27287ec9f7e8f5a7f04b7f872600bc7fd9fc5c2a7` |
| 20 | `theorem` | [dfoldCast_trans](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfoldcast-trans.md) | 220 | `result-track:340dad3333aa75b27ff7c4ca71db6afb263054313982844f657ca1afda8b35ed` |
| 21 | `theorem` | [dfoldCast_eq_dfoldCast_iff](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfoldcast-eq-dfoldcast-iff.md) | 226 | `result-track:3a803385aea625aa8b938b95f61ef62a3dc40ab42c4f45ba41a06a189debdc6b` |
| 22 | `theorem` | [apply_dfoldCast](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/apply-dfoldcast.md) | 232 | `result-track:04cf7a1bf046ea72e4630fe60691599c866ea0ec827b4a73930b1165ba17c4b7` |
| 23 | `def` | [dfold](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfold.md) | 244 | `declaration-track:e3c1985e88253ed326d8d3016cc8fb96f51d2c06e54a78853a76752aefd80cf9` |
| 24 | `def` | [dfoldRev](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfoldrev.md) | 258 | `declaration-track:ab0d0783d82f5b0f2dcc2835b3f8fb2c3fd7ab53282798aae9ea64628504c1e4` |
| 25 | `theorem` | [fold_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/fold-zero.md) | 268 | `result-track:bf76c46d6712b5061c05732ec09944fb8295a5df8e25da4462b5f6bc83b081fb` |
| 26 | `theorem` | [fold_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/fold-succ.md) | 271 | `result-track:0b45291021e32aa8020dde2e9cb69c8c115e8d145330c0f5ff9a3fa2fe8408ea` |
| 27 | `theorem` | [fold_eq_finRange_foldl](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/fold-eq-finrange-foldl.md) | 274 | `result-track:fab246e5107f4ba20974a014a0f2a5d60b3413cc8537b9190065ae3341d61d90` |
| 28 | `theorem` | [fold_add](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/fold-add.md) | 281 | `result-track:5c9acfc448c1c17b7e49044ab899fcc5d5e701ea64cc06f59650231467feb946` |
| 29 | `theorem` | [foldRev_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/foldrev-zero.md) | 293 | `result-track:997dfb633e81275ef46cfcf196732cb52395acc4cceefc0035040c54ecb3e8c6` |
| 30 | `theorem` | [foldRev_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/foldrev-succ.md) | 296 | `result-track:dee6391080972a651d7e7361269a48a98dcf6225520b02dfcdfa5964e4748c38` |
| 31 | `theorem` | [foldRev_eq_finRange_foldr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/foldrev-eq-finrange-foldr.md) | 300 | `result-track:b4b7bdbe0c0961a53745b598cf25aad1f833935d1354c1d05069287c5d48cabb` |
| 32 | `theorem` | [foldRev_add](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/foldrev-add.md) | 306 | `result-track:310d51c4fce88db6d067559ef487efc62718b46d2712348d4577004876bdea49` |
| 33 | `theorem` | [any_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/any-zero.md) | 319 | `result-track:77d2b220a2f9930d1cc6f60cad77a05ba1102d0f4c9781d864169c2b80118d01` |
| 34 | `theorem` | [any_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/any-succ.md) | 321 | `result-track:ee5a6c4f505b0d0c0c7ab9842b0458d88d81119caf55e2e3429ade35865ecc15` |
| 35 | `theorem` | [any_eq_finRange_any](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/any-eq-finrange-any.md) | 324 | `result-track:b3cde73cb0c63c3f195b44b3d31c3fc0595b6564107369c1f7cfb7bef9320a2e` |
| 36 | `theorem` | [all_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/all-zero.md) | 332 | `result-track:7a06bce77ce87d6ebd7f99b096b8717f72347c4ea0ddadb267e2331ef5c640cb` |
| 37 | `theorem` | [all_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/all-succ.md) | 334 | `result-track:1a3dac2098e20f82e7cd351f04f648ada5e89756c5389ba3e71531eef525ac07` |
| 38 | `theorem` | [all_eq_finRange_all](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/all-eq-finrange-all.md) | 337 | `result-track:02c68d323ed4932c3866a8d44be42abe9cfe42d547ea558087cc0eeb4296403d` |
| 39 | `theorem` | [dfold_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfold-zero.md) | 346 | `result-track:56905b2e24e76e54462e465f42557511e72bca837cf5c93a21c229ec623dd2e8` |
| 40 | `theorem` | [dfold_loop_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfold-loop-succ.md) | 352 | `result-track:21363f840c555182ea72e8ed300a96b62bdd1204740e7588f585b4b97763718a` |
| 41 | `theorem` | [dfold_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfold-succ.md) | 371 | `result-track:ea1a39e38ad92dab7e87b9c2274e232d7fec5c8bcc54d3798a337f5c9c827651` |
| 42 | `theorem` | [dfold_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfold-congr.md) | 384 | `result-track:5882f6c4dd9bbfbc122959964900c4fc0b97958c02e9e8cb8a495985ab7ad814` |
| 43 | `theorem` | [dfold_add](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfold-add.md) | 394 | `result-track:0b6e48f6dd28b7f9c4a0a2b11b76bea186035cfbe2bdb3e24f40512a75baf349` |
| 44 | `theorem` | [dfoldRev_zero](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfoldrev-zero.md) | 405 | `result-track:4e82d70134a27477e16817106084003815a6b69f849749af01c454ea7cc8c80f` |
| 45 | `theorem` | [dfoldRev_succ](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfoldrev-succ.md) | 411 | `result-track:7c2f5e4c5ca79c98f7d034bc1c35ab23d7a96882f070ba86672c19f76ec164f6` |
| 46 | `theorem` | [dfoldRev_congr](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfoldrev-congr.md) | 419 | `result-track:94f9ea23474eb69c0d01300e204dbb1d40711e3b0e01f693ae1326c7f44f8022` |
| 47 | `theorem` | [dfoldRev_add](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/dfoldrev-add.md) | 429 | `result-track:c61d34348cd9299dc93a920a6a530dcddf8bc3bb1312fd1743bd1285097b7914` |
| 48 | `def` | [foldI](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/foldi.md) | 455 | `declaration-track:431558b4d1b8c66cb4c64c97e51b809fd385b6c370a49321864ee61192849752` |
| 49 | `def` | [anyI](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/anyi.md) | 469 | `declaration-track:2fa5f3b590f418ad75198c8e97aa87cad2cbdb6011439e80f521898ddb6c100a` |
| 50 | `def` | [allI](../../../../../ComputerScience/AlgorithmsInComputerScience/FoldPublicFoldCongr.lean/declarations/alli.md) | 483 | `declaration-track:0864e6ffd25d9e10570a4eccb4acb3c9e33c71b1c242a7a2ff0b3fd68e261ef4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=67a2b3074a574e0c7beb3b77a619c044f12aa967161c90901f199b7faa9cf411 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantcb0980a671b7b5e628492290a13e86581c620afca29e4e7fe75ff9ce5913d80c.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Fold/Variantcb0980a671b7b5e628492290a13e86581c620afca29e4e7fe75ff9ce5913d80c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
