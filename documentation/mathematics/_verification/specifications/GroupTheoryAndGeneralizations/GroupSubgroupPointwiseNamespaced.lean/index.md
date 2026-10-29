# Verification target: Group Subgroup Pointwise Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "69f17308e6b72d3dcd99c04c51b742513f7eefac",
  "lexical_observation_count": 61,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `69f17308e6b72d3dcd99c04c51b742513f7eefac`.

Source path: `GRWTSK/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.End` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Pointwise.Set.Lattice` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subgroup.MulOppositeLemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Pointwise` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.ConjAct` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inv_coe_set](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/inv-coe-set.md) | 47 | `result-track:610c89051aed543017cbdbcc8070ee64d8349e39380ae952d9f6666e68b23dc1` |
| 2 | `lemma` | [smul_coe_set](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/smul-coe-set.md) | 51 | `result-track:d1858c8f7582a2a0a09da7c746b94ce2553986cbbdbb47491d33a1049683c268` |
| 3 | `lemma` | [coe_set_eq_one](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/coe-set-eq-one.md) | 56 | `result-track:ed97c266aa594cc65b7c099ffd97166d63010a9bc753d036f7e4786969957f44` |
| 4 | `lemma` | [op_smul_coe_set](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/op-smul-coe-set.md) | 60 | `result-track:ab706c2dc8f86baf1a277a84f809111d9769305cc43797fcb73bd654b6c03b18` |
| 5 | `lemma` | [coe_div_coe](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/coe-div-coe.md) | 65 | `result-track:f49b456c71cb309e113967b62ab71e893f10c27451c6881988d6d73f403e1787` |
| 6 | `lemma` | [mul_subgroupClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/mul-subgroupclosure.md) | 75 | `result-track:dd6550f531f77fe4080c2aaea875c5efeb1834937e1cde3b59682e227d8df1e7` |
| 7 | `lemma` | [subgroupClosure_mul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/subgroupclosure-mul.md) | 83 | `result-track:fd02fc15312470baa9705ded84db96c9265932a893b6d036b3f47c709ba5d796` |
| 8 | `lemma` | [pow_mul_subgroupClosure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/pow-mul-subgroupclosure.md) | 90 | `result-track:5b3611f5454203c0c38268b4f422a392880b53d17a8a1a74f4a5646f41443c35` |
| 9 | `lemma` | [subgroupClosure_mul_pow](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/subgroupclosure-mul-pow.md) | 95 | `result-track:e00ab90328b359103468e922db9f20ea404a4ae3767794c48f5ac93228bf0823` |
| 10 | `theorem` | [inv_subset_closure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/inv-subset-closure.md) | 104 | `result-track:7092946ec9a3a535a18dcb1a5a165ca4387de40373646462811cd8e64817aa12` |
| 11 | `theorem` | [closure_toSubmonoid](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/closure-tosubmonoid.md) | 109 | `result-track:5b5aab9ee02dd3b7d5b1d8d4c1f62d4ff375257a42d52b1643cea9ecb828cfa9` |
| 12 | `theorem` | [closure_induction_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/closure-induction-left.md) | 123 | `result-track:52e1fe7314a50e7323ae466cf8d55339bf4594c55aa65fde8d09ea8a16d6b001` |
| 13 | `theorem` | [closure_induction_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/closure-induction-right.md) | 142 | `result-track:db4fe4f921d877a16e564655f4c6ab4ffaa78d35269c498022be452e89c9a552` |
| 14 | `theorem` | [closure_inv](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/closure-inv.md) | 155 | `result-track:43f2f38c39b999170bc9b0f450764fda77ef1edd15480b533298c1e5410c2eb3` |
| 15 | `lemma` | [closure_singleton_inv](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/closure-singleton-inv.md) | 159 | `result-track:4e5a8b0303060ad041c93d5595b97b87f811c98d2c8062a603e7c8d4dfe61307` |
| 16 | `theorem` | [closure_induction''](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/closure-induction.md) | 169 | `result-track:2c704eb4051dab1ffa228cda17bcb89dd86c7a1f526090f0b71b13ffba5d9a23` |
| 17 | `theorem` | [iSup_induction](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/isup-induction-source-edition-2.md) | 184 | `result-track:ae3f16abbd193c0119e90ff34487858167ca6f21dd93b6d5ae455c5d15ef464f` |
| 18 | `theorem` | [iSup_induction'](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/isup-induction.md) | 199 | `result-track:a7d506860e040f1faf639a56e46570245f2699589dd5dcbbaad047da528e1000` |
| 19 | `theorem` | [closure_mul_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/closure-mul-le.md) | 211 | `result-track:c5ffbacf1320797194e1ae547fe1a7c5c794214daa98bf6a0fd3d119f0600d6d` |
| 20 | `lemma` | [closure_pow_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/closure-pow-le.md) | 217 | `result-track:771ba3755c79beb59fe3549c1cdebe4385e4dab487c893050145af83c4edda91` |
| 21 | `lemma` | [closure_pow](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/closure-pow.md) | 228 | `result-track:fa15d343bfd1f9c81f54fb71b59a84c8d023711b6140e6ddb75539135b9f8756` |
| 22 | `theorem` | [sup_eq_closure_mul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/sup-eq-closure-mul.md) | 232 | `result-track:7fd6a5be8c0f722703cbaf787c00342a3c5a592aec28979654f95427e3e73591` |
| 23 | `theorem` | [set_mul_normalizer_comm](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/set-mul-normalizer-comm.md) | 239 | `result-track:cd7dce370a52c5cc4c27f4afc9411081ec75fccd6a8c6f9fb4fe5893344b3908` |
| 24 | `theorem` | [set_mul_normal_comm](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/set-mul-normal-comm.md) | 247 | `result-track:304905312d68c263670167bf3b0b6d73ecbe77d7216bcea87e98c96204f0007c` |
| 25 | `theorem` | [coe_mul_of_left_le_normalizer_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/coe-mul-of-left-le-normalizer-right.md) | 254 | `result-track:062a0aa08a8a1b80051d228a8789e8d15977aa0907819c1a245701434e8b78c3` |
| 26 | `theorem` | [coe_mul_of_right_le_normalizer_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/coe-mul-of-right-le-normalizer-left.md) | 276 | `result-track:c079e219d137bca1467a1e3b7e4dc5161b7dc8eb44343c76125ef3398b04d683` |
| 27 | `theorem` | [mul_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/mul-normal.md) | 283 | `result-track:cfe33bfa31e44ca70f806db358430337fcca10ff95f8d64c00a462763ef3acc5` |
| 28 | `theorem` | [normal_mul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/normal-mul.md) | 289 | `result-track:bedcfdc23473ab53f7e9937efe28d6e11707f17e785ccac1d95438f73e9c52c1` |
| 29 | `theorem` | [mul_inf_assoc](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/mul-inf-assoc.md) | 293 | `result-track:ea74c6df65f5c432c871b38001a548feac86c20c90e613a6698e431dfdcb6e6b` |
| 30 | `theorem` | [inf_mul_assoc](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/inf-mul-assoc.md) | 307 | `result-track:ce07b0ce921212f9bbbd956227af6d90bcbc1c95efc14301900ae10473be2428` |
| 31 | `instance` | [sup_normal](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/sup-normal.md) | 321 | `declaration-track:a953f1c02a93432c6659e54ae3516ee983a76d57a26ec31e4ed3f38040a74405` |
| 32 | `theorem` | [smul_mem_of_mem_closure_of_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/smul-mem-of-mem-closure-of-mem.md) | 329 | `result-track:c92f08409e6806a4c95701ff8990cd8becb94380901e9b9b0e1a6f96ec7e60ce` |
| 33 | `theorem` | [smul_opposite_image_mul_preimage'](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/smul-opposite-image-mul-preimage.md) | 339 | `result-track:1725e31f6f54e0016ebdf5a03dafa8c90041201fc0d8cb5dbc9cd9bfae2cfa9d` |
| 34 | `theorem` | [smul_opposite_image_mul_preimage](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/smul-opposite-image-mul-preimage-source-edition-2.md) | 345 | `result-track:eca16e44d9773977cf5509adbba9fa48a7c4cf8a1af6f8d1f35d7b1f44d60030` |
| 35 | `def` | [pointwiseMulAction](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/pointwisemulaction.md) | 359 | `declaration-track:124ff8831ab8b8948af84090b5497345c8572b73b561a7009c52086a9d368d29` |
| 36 | `theorem` | [pointwise_smul_def](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/pointwise-smul-def.md) | 370 | `result-track:63dba42d1f59ff1ed41321ce31d140efacd8f638f076e31c2afb93a210234ff8` |
| 37 | `theorem` | [coe_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/coe-pointwise-smul.md) | 375 | `result-track:6dedab1f5d39cde9d65bb4f84329af4a2aa08db0349c65be939e5362dac77b35` |
| 38 | `theorem` | [pointwise_smul_toSubmonoid](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/pointwise-smul-tosubmonoid.md) | 379 | `result-track:2c399142d108e70d3d80fad68497020a71527e0e7d4d8629b10d910219304feb` |
| 39 | `theorem` | [smul_mem_pointwise_smul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/smul-mem-pointwise-smul.md) | 383 | `result-track:5b2d5cac850d0870e4dfeadad7133e270f5e80ed4cdc1546340b668df5bf1276` |
| 40 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/instance.md) | 386 | `declaration-track:dad1cf4553953be68f357977e0f06da6168d67152d450255c406f9cc4cffae3c` |
| 41 | `theorem` | [mem_smul_pointwise_iff_exists](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/mem-smul-pointwise-iff-exists.md) | 389 | `result-track:37a28cd2e1658fc105eee6d841719c49ada52e4a19817dccf394663902b6c437` |
| 42 | `theorem` | [smul_bot](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/smul-bot.md) | 394 | `result-track:74d8da90f03c846bdf6aef340a02d6cff81e0a7568a19c2e2988a7ab502e45a7` |
| 43 | `theorem` | [smul_sup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/smul-sup.md) | 397 | `result-track:6aed54f26b96b97cb05b12c64ce49ab1e451025bef4a950c0903ad77ce4a4461` |
| 44 | `theorem` | [smul_closure](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/smul-closure.md) | 400 | `result-track:6454d24035949208db0861a44d285aea8ada4bcb20943c88e840bcd8446d9ee8` |
| 45 | `instance` | [pointwise_isCentralScalar](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/pointwise-iscentralscalar.md) | 403 | `declaration-track:9094f0e86c7f2612be4c8020f0e5ceaa1512d5ff039b4d95a77787560b3cf8f7` |
| 46 | `theorem` | [conj_smul_le_of_le](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/conj-smul-le-of-le.md) | 407 | `result-track:6542078a89e351f8c70168fbf4625619eddd38b5fe80a44d0e85a11cb0d6219f` |
| 47 | `theorem` | [conj_smul_subgroupOf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/conj-smul-subgroupof.md) | 412 | `result-track:b7713efde2192f9e0ecf2e6ec6f29486074191f48441ffba9812b530c6d9cbab` |
| 48 | `theorem` | [smul_mem_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/smul-mem-pointwise-smul-iff.md) | 427 | `result-track:f3433c598ec40ea17a3984777618107d575803549850439002e6a2dcf22275fa` |
| 49 | `theorem` | [mem_pointwise_smul_iff_inv_smul_mem](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/mem-pointwise-smul-iff-inv-smul-mem.md) | 430 | `result-track:376ca2ecbd9071f845558299e63a191037b62bcd59e21e8071e5a833cabe0917` |
| 50 | `theorem` | [mem_inv_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/mem-inv-pointwise-smul-iff.md) | 434 | `result-track:91b5518fa8ac756b6903f570a4f67a1b151bc2d85d0411b3f4630aca4a3de4ba` |
| 51 | `theorem` | [pointwise_smul_le_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/pointwise-smul-le-pointwise-smul-iff.md) | 438 | `result-track:97c82028984e6b22185ab187a8db226055ded3f323e36bdf9e5448a5feebe89d` |
| 52 | `theorem` | [pointwise_smul_subset_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/pointwise-smul-subset-iff.md) | 441 | `result-track:1186c04fa22d6ccd0f5037b197b3d2d9fd8722af61d4dd87093b6ed3cba3840c` |
| 53 | `theorem` | [subset_pointwise_smul_iff](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/subset-pointwise-smul-iff.md) | 444 | `result-track:16c7e38ec2da26c502422c5a0870a59d6486ca9755ca6745dac2aa9b6fce8929` |
| 54 | `theorem` | [smul_inf](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/smul-inf.md) | 448 | `result-track:81330cea576b8bec93cb292bfa277e3cd09e4c76d0f18f707d271f6dbc028f4d` |
| 55 | `def` | [equivSMul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/equivsmul.md) | 453 | `declaration-track:8d7f58c21943e8d21cae3b8c0a90ba321f087588202cc1f30a369c69ea7ab2fa` |
| 56 | `theorem` | [subgroup_mul_singleton](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/subgroup-mul-singleton.md) | 456 | `result-track:cec36f7049a13aa625bd0ceda5d2d769b032273842857859ee36bf269fd01b56` |
| 57 | `theorem` | [singleton_mul_subgroup](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/singleton-mul-subgroup.md) | 459 | `result-track:3cc1f88ed9e216f64a0bf8c8acb25d472d6e8a03c5d4775e4e250df25a102efd` |
| 58 | `theorem` | [Normal.conjAct](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/normal-conjact.md) | 462 | `result-track:bfbe21abe4ef1341308c6ab182fbf2741bf776c5a692e32beb954843324ac8fb` |
| 59 | `theorem` | [Normal.conj_smul_eq_self](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/normal-conj-smul-eq-self.md) | 468 | `result-track:af3057d85676ad3ed5a21e0a3fd5c79fb911ca47fb5b2a8acc267d7f93d853e2` |
| 60 | `theorem` | [Normal.of_conjugate_fixed](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/normal-of-conjugate-fixed.md) | 473 | `result-track:2b7109e064fddf55fb8c4f606784239d8fa3ab2bde2e425ea6577076e972ffbd` |
| 61 | `theorem` | [normalCore_eq_iInf_conjAct](../../../../GroupTheoryAndGeneralizations/GroupSubgroupPointwiseNamespaced.lean/declarations/normalcore-eq-iinf-conjact.md) | 482 | `result-track:b791d3f1d5b6237ca0ee060ce51cf2e3e84efc4b296aa37a7a6721486053f390` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=755436e8103c174ac52de544cc1174ecb8038b4f95f4cac8966e581bbd5b52cb -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Pointwise/Variantfe9005cbda7d80a18d67451ada664cae208aee3a1592620cefa05945531bbdae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
