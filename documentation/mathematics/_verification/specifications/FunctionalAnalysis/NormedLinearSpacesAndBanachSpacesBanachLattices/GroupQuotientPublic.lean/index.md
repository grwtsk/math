# Verification target: Group Quotient Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ecefb73a94c58895a5f894998e4e521b7ee834d",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ecefb73a94c58895a5f894998e4e521b7ee834d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean.json)

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
| 1 | `lemma` | [norm_aux](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/norm-aux.md) | 110 | `result-track:2db663e552b3bc50e35f9c83746b20d94bc5ce3204f8109642db438228218d62` |
| 2 | `def` | [groupSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/groupseminorm.md) | 117 | `declaration-track:9ecf4ef283bf620a0d9c86318d491f3c1850d92bc8523f8e459ce35dc183e51e` |
| 3 | `instance` | [instNorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/instnorm.md) | 137 | `declaration-track:cbbe4254279431b85abe163240a867cf886b61a96b5e84556811c3f248b8fc72` |
| 4 | `lemma` | [norm_eq_groupSeminorm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/norm-eq-groupseminorm.md) | 140 | `result-track:e2ea459424792072cc6d789f8409b36c2b31179b284bf65326ca38beefc86d7b` |
| 5 | `lemma` | [norm_eq_infDist](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/norm-eq-infdist.md) | 143 | `result-track:2003b67d943e7fb421ff271c9fc765cca464eb780b561e2e0c0b4495e0adf59c` |
| 6 | `lemma` | [le_norm_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/le-norm-iff.md) | 146 | `result-track:1a823afe9a2ad420e176006392feebc6a909ad6dc1e8e905a67ef613f3a4b7ba` |
| 7 | `lemma` | [norm_lt_iff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/norm-lt-iff.md) | 150 | `result-track:fedb1357ae7b7a3272ddfd8861a5029e9dcd1032c79fce2a655eaeb0f0f6cd9f` |
| 8 | `lemma` | [nhds_one_hasBasis](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/nhds-one-hasbasis.md) | 154 | `result-track:1906e2faa788e04e41f458ef8becbead24466b694ac1016efb391105525ddf8c` |
| 9 | `lemma` | [norm_mk](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/norm-mk.md) | 167 | `result-track:52bc9d62e59f5035861e70264957c02008d9c514e636498a70c35c81461fb0ac` |
| 10 | `lemma` | [norm_mk_le_norm](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/norm-mk-le-norm.md) | 175 | `result-track:9aefe097693139c3f5626aec846810091f59d3cbd138f0ced8ea0e041e542f0e` |
| 11 | `lemma` | [norm_mk_eq_zero_iff_mem_closure](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/norm-mk-eq-zero-iff-mem-closure.md) | 182 | `result-track:9114dc332b5e7b3920b84df771b2dc2e0878b01675fc6c5837f72c692b079a23` |
| 12 | `lemma` | [norm_mk_eq_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/norm-mk-eq-zero.md) | 190 | `result-track:418f764271c86d746f4d2b0f8e6ad3ea83695b58b50b4ac13a9b20145a6061db` |
| 13 | `lemma` | [exists_norm_mk_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/exists-norm-mk-lt.md) | 197 | `result-track:138dd6c5780c8db7775aed711cab73cf48df1bf4b64279bd920fd7f0bdc1acfe` |
| 14 | `lemma` | [exists_norm_mul_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/exists-norm-mul-lt.md) | 203 | `result-track:170bc6d4c1fc34cc3031d5f657ac92788a19ca5ba1978d8a20e240ef89f35525` |
| 15 | `instance` | [instSeminormedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/instseminormedcommgroup.md) | 211 | `declaration-track:9f8d3926d0b8146d138839196815b6331339e27877ed1183d38d4d288b30b41d` |
| 16 | `instance` | [instNormedCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/instnormedcommgroup.md) | 221 | `declaration-track:9afc38cf169c251435ba33e363992937b91f5756f68605ef1f60ce3f047cd02c` |
| 17 | `example` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/example-source-edition-2.md) | 227 | `declaration-track:f180523d4f26183b3338beae2f3646808690247ebc909ac86ca8dfe7f783febe` |
| 18 | `example` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/example.md) | 231 | `declaration-track:2494c1bf09e899073f15bb07acbd92733979164c84f41643154ecaccb0e2780a` |
| 19 | `def` | [_root_.Subgroup.quotientIsometryEquivOfEq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/root-subgroup-quotientisometryequivofeq.md) | 236 | `declaration-track:949f31be3d13cc83f8ba228eef54694b06b39c3d64325f094fa45e23833ec321` |
| 20 | `def` | [quotientBotIsometryEquiv](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/quotientbotisometryequiv.md) | 242 | `declaration-track:a50a73c4ef1b809faaad9d489e49c5606bf4d481db4d48bc9af95cbee09aa3eb` |
| 21 | `def` | [quotientQuotientIsometryEquivQuotient](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/quotientquotientisometryequivquotient.md) | 252 | `declaration-track:5cea70e86afb7fb10b6098c0d754a939a1337df30ccd438a1061ad3541236a9c` |
| 22 | `theorem` | [quotient_norm_mk_eq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/quotient-norm-mk-eq.md) | 269 | `result-track:145dcf1704dec353c8a04bc950d299d10120e85fb40e3dbed23bc94f8fd3814c` |
| 23 | `theorem` | [quotient_norm_add_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/quotient-norm-add-le.md) | 276 | `result-track:aede932d414b4bc186efbf11ae85ead7e62b7ed0ff9b5ced327ce26b8b870a0a` |
| 24 | `def` | [normedMk](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/normedmk.md) | 284 | `declaration-track:d4085088b49be0406e7248f22f7276a9491e21de366a485bfdee7ae33584979f` |
| 25 | `theorem` | [normedMk.apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/normedmk-apply.md) | 290 | `result-track:82a7bea796e9fdd2c4e2e7f666170b1361b5c10fe60f2241ce3d4112c41e929d` |
| 26 | `theorem` | [surjective_normedMk](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/surjective-normedmk.md) | 294 | `result-track:ad9f5b6e886de0531ee6924ab435943aa4bb43091b31b06fbc04d934770b5f9c` |
| 27 | `theorem` | [ker_normedMk](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/ker-normedmk.md) | 298 | `result-track:52fa5d7178b9689c1b2be02453f8b6f1700c2f23afe95ec01de794f994e60fa8` |
| 28 | `theorem` | [norm_normedMk_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/norm-normedmk-le.md) | 302 | `result-track:429006c8f5e62201d14475d2289e56f1ce596a9aae820454269275d44522d8b3` |
| 29 | `theorem` | [_root_.QuotientAddGroup.norm_lift_apply_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/root-quotientaddgroup-norm-lift-apply-le.md) | 306 | `result-track:a1670bfc41bf3a5ef8fba831eac88b2690902b6838c9a849ab248c3f52fc35e6` |
| 30 | `theorem` | [norm_normedMk](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/norm-normedmk.md) | 318 | `result-track:c60f95702e405fa67f8106fa18cf4c8afb2030fc1cec792007a8690ce93e989d` |
| 31 | `theorem` | [norm_trivial_quotient_mk](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/norm-trivial-quotient-mk.md) | 328 | `result-track:420cf22d279391d73dad0410c178c10ccb856f78193fd8059a450fe72e3a2d5e` |
| 32 | `structure` | [IsQuotient](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/isquotient.md) | 343 | `declaration-track:2e85fe00aec9ce9a28438a7848173c9d70ea458fef31c416e4aa08a6f86f90dd` |
| 33 | `def` | [lift](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/lift.md) | 349 | `declaration-track:7a744a20cbc377c8f8e9db139ca382c350fd2f0c910b642e587f22638162f260` |
| 34 | `theorem` | [lift_mk](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/lift-mk.md) | 354 | `result-track:830213bd0d31147f8337f1a5e797fdcac9911de7420637ad28107e99be14b93b` |
| 35 | `theorem` | [lift_unique](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/lift-unique.md) | 359 | `result-track:f09d1637f052083ada227550b4394a3d2a40aafe06d1f7a940b9494b7eabdad6` |
| 36 | `theorem` | [isQuotientQuotient](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/isquotientquotient.md) | 369 | `result-track:fe5b029d8b3a3a25265fc8e4ce30521e5bfb4a16a18c33b92ca8cb6cdb55646e` |
| 37 | `theorem` | [IsQuotient.norm_lift](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/isquotient-norm-lift.md) | 372 | `result-track:ec19b0e91dc501e784fd7d438141d9cbd11f417d344c4e95bb6830f64d78ead1` |
| 38 | `theorem` | [IsQuotient.norm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/isquotient-norm-le.md) | 383 | `result-track:71fa5ea912b1dc5726797d2af7e46f7286303d310edcd6f3b8aff410351d2194` |
| 39 | `theorem` | [norm_lift_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/norm-lift-le.md) | 392 | `result-track:7307070cb4c790a3d875136c5771b48673413dfa2f20a5d1e02272516a16b8a0` |
| 40 | `theorem` | [lift_norm_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/lift-norm-le.md) | 398 | `result-track:5c32d2acc091e7167497e7fa97902f9c1aa8e64914ae7be6781ebcbc0bf52a8a` |
| 41 | `theorem` | [lift_normNoninc](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/lift-normnoninc.md) | 403 | `result-track:196a65e34bd7988ea6cac86333900c5dc439c2c4b9bad983acb47940ba7220ea` |
| 42 | `instance` | [Submodule.Quotient.seminormedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/submodule-quotient-seminormedaddcommgroup.md) | 429 | `declaration-track:a4b8a203770f8e921e5a9ea30c0a78109b7f1d621a66b4395e5aa0e5bd50cf2b` |
| 43 | `instance` | [Submodule.Quotient.normedAddCommGroup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/submodule-quotient-normedaddcommgroup.md) | 432 | `declaration-track:ecfe8ae8d1027b250faabc2ea7b1db182fcb60ee20a9f9d7346356f7b41e0a34` |
| 44 | `instance` | [Submodule.Quotient.completeSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/submodule-quotient-completespace.md) | 436 | `declaration-track:7e09ba6f20a8728aae12d5481ac6d7e376208fbfbe9b86bc1e15dca199b69c39` |
| 45 | `theorem` | [Submodule.Quotient.norm_mk_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/submodule-quotient-norm-mk-lt.md) | 441 | `result-track:a0ca811f6d9d32b0ea3c091ac10b5d6b94b04e24ba811adec2ff5868e762d696` |
| 46 | `theorem` | [Submodule.Quotient.norm_mk_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/submodule-quotient-norm-mk-le.md) | 445 | `result-track:20c156b1363bed892c60ee79e2cf5ca67397432639b7ad57504fdb69ccedaa80` |
| 47 | `instance` | [Submodule.Quotient.instIsBoundedSMul](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/submodule-quotient-instisboundedsmul.md) | 448 | `declaration-track:f2cf3c97697865344b1d57fd9fb4352ff56316b5824b6f9d077e73d8b25b0f56` |
| 48 | `instance` | [Submodule.Quotient.normedSpace](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/submodule-quotient-normedspace.md) | 465 | `declaration-track:1a081a2a3ba13eb7d813b68c2afd4885a5effc45a2ed0c74fb8d571dff8fdb05` |
| 49 | `def` | [Submodule.quotLIEOfEq](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/submodule-quotlieofeq.md) | 470 | `declaration-track:fa9f7bc6723c8999d8c85f8916b7af6711147d57c5e9dab3d648995e41a4f3f4` |
| 50 | `def` | [Submodule.quotientQuotientLIEQuotient](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/submodule-quotientquotientliequotient.md) | 475 | `declaration-track:825af8f7516e4ed40eeb0739a48069740a1c31363c1d8ce537eb31904965b023` |
| 51 | `def` | [Submodule.quotientQuotientLIEQuotientSup](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/submodule-quotientquotientliequotientsup.md) | 483 | `declaration-track:9c4ff5f6e467e49da6938c18b3aceece8154dcaa4341fce38c0e4fa5117cadfb` |
| 52 | `theorem` | [Ideal.Quotient.norm_mk_lt](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/ideal-quotient-norm-mk-lt.md) | 492 | `result-track:259411f7daa4958b29341c92b147c1639eb463bb12d36584c6ffb560803fa4f0` |
| 53 | `theorem` | [Ideal.Quotient.norm_mk_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/ideal-quotient-norm-mk-le.md) | 496 | `result-track:33ad72bfac0c86e1ea9e3a6b26d081522bcef52d746e4fc8c0e2bb78dd9fd726` |
| 54 | `instance` | [Ideal.Quotient.semiNormedCommRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/ideal-quotient-seminormedcommring.md) | 498 | `declaration-track:98158927df758e8eaf5f41c205a1f9fe54db6abdf744c80d575f66fd9ce3aeab` |
| 55 | `instance` | [Ideal.Quotient.normedCommRing](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/ideal-quotient-normedcommring.md) | 515 | `declaration-track:472ba718856dda388f295053e3586aaca1afcfd2faa38bba598ae366b93d7bf8` |
| 56 | `instance` | [Ideal.Quotient.normedAlgebra](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/GroupQuotientPublic.lean/declarations/ideal-quotient-normedalgebra.md) | 520 | `declaration-track:90c05d9c6f1ac6f2c521389146a62b156e73d506e053f0af11915ccbe491d2f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=1221152e38dfac477b6ce4507945af042ad89b392adcd966fb59324d4b72f7df -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Quotient/Variant8ef997e842b043b9d19bee40bef6bab9c0ab14d6cb925edfcfe50a2f5c16a2e5.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
