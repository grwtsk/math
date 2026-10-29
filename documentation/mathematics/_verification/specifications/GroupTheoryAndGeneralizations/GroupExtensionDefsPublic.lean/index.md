# Verification target: Group Extension Defs Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1ada3ebc4c8ea30a4c5c9158e22fc136615cc6d",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Defs/Variant64056fa124cde4f00464cef67183b1697124d428d6a8c86ce00d9baddef204c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1ada3ebc4c8ea30a4c5c9158e22fc136615cc6d`.

Source path: `GRWTSK/Algebra/GroupTheory/Defs/Variant64056fa124cde4f00464cef67183b1697124d428d6a8c86ce00d9baddef204c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Defs/Variant64056fa124cde4f00464cef67183b1697124d428d6a8c86ce00d9baddef204c6.lean.json)

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
| 1 | `structure` | [AddGroupExtension](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/addgroupextension.md) | 60 | `declaration-track:12707bd38949cb5575f314077189d945a4d4e6564aa34804014bbd4c263f5946` |
| 2 | `structure` | [GroupExtension](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/groupextension.md) | 74 | `declaration-track:0567ea9c61eeeefb9e785c0a4cda8369a584f606ca705a29d4db0dc398522502` |
| 3 | `structure` | [Equiv](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/equiv-source-edition-2.md) | 95 | `declaration-track:96cff004d7e78e097bae2d422279bcc810c963a8a2ac415ca4408b96a5bbf325` |
| 4 | `structure` | [Section](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/section-source-edition-2.md) | 102 | `declaration-track:fed28e9d0574390b3b5c4f69030ab004eacb6b6ff2fa90e68a955c5da808ca0e` |
| 5 | `structure` | [Splitting](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/splitting-source-edition-2.md) | 109 | `declaration-track:bb134c64ac791a4c8dd69d1517217fb2d2aa853c6f554134b590838807423df3` |
| 6 | `instance` | [normal_inl_range](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/normal-inl-range.md) | 122 | `declaration-track:cf67bca4e431319798843730dd8ea044cca4e28627566c713890d598a3f372a1` |
| 7 | `theorem` | [rightHom_inl](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/righthom-inl.md) | 126 | `result-track:b0f22e9364d970c40e8e573cf0d6cf014c4c952e1e04cf76be240eadc815d7a6` |
| 8 | `theorem` | [rightHom_comp_inl](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/righthom-comp-inl.md) | 131 | `result-track:37d4af393bf94f40cfa34d0542b89c6f3f08444db8781804276319b3c972c77f` |
| 9 | `def` | [conjAct](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/conjact.md) | 137 | `declaration-track:84f4c9d2654ac5c09cecef2615b984370d93e98a56cd8da45f8c588d63172f3f` |
| 10 | `theorem` | [inl_conjAct_comm](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/inl-conjact-comm.md) | 148 | `result-track:1eac770c212cf5d46e78fb10d657604bd8e6ede3316bb53dc5a00372df7b1bee` |
| 11 | `structure` | [Equiv](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/equiv.md) | 156 | `declaration-track:7a6e10394077e59c7bbda1c4b14c616875038a409eeda1b28ae7e3c0a934a14a` |
| 12 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/instance-source-edition-4.md) | 168 | `declaration-track:3a2d1fec5630596c24c477d5be4d4a917af4df71934f6a66801484d8162606cb` |
| 13 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/instance.md) | 179 | `declaration-track:112c0db8bcf1ed3e6fd8416d711f58e5e1d6a29412486a150034e7ac64e00b3a` |
| 14 | `theorem` | [toMulEquiv_eq_coe](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/tomulequiv-eq-coe.md) | 185 | `result-track:3acc5800e1774e4b1609c041dfec85f2f2fa2f837835305135e9ad8cdbac5a3c` |
| 15 | `theorem` | [coe_toMulEquiv](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/coe-tomulequiv.md) | 188 | `result-track:d088a7282dd66b2c09783746c428622caac27e9a7e8a529aeb061acda9d309af` |
| 16 | `theorem` | [map_inl](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/map-inl.md) | 191 | `result-track:97dedd59fa3406c79402ec066245bc89e3dd949c7d038c80ced59f9dbd61b1b7` |
| 17 | `theorem` | [rightHom_map](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/righthom-map.md) | 194 | `result-track:d4963ffad86b0894262364638b02bc828496c6ea7fa162a50420a8081c037f87` |
| 18 | `def` | [symm](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/symm.md) | 199 | `declaration-track:2b8857f36fdebe157873497c30ca8949e9ade1e1a6ee324da45710ad065e6f34` |
| 19 | `def` | [Simps.symm_apply](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/simps-symm-apply.md) | 206 | `declaration-track:b9ae89aca8990f2d538b1e847558174ed94237c16b0408c084415c08779195a2` |
| 20 | `theorem` | [coe_symm](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/coe-symm.md) | 209 | `result-track:6b9fc2ae57c2958edc98044723e1b10dcffa365ac47a45acba297bef21d268d4` |
| 21 | `def` | [trans](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/trans.md) | 222 | `declaration-track:f6dd1a919872217a25bfc99c0861054bf4d0dd4eec5a2efae7afa05db1ec3b23` |
| 22 | `def` | [refl](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/refl.md) | 232 | `declaration-track:0c398884e831aeaf86448c1f4158c6476cd0444ee6d00f23c2b73932e6d83c3a` |
| 23 | `structure` | [Section](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/section.md) | 241 | `declaration-track:fb4dfc00497dd932cb7e8be02df58907a6926f5127027c8457560821c72aa31c` |
| 24 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/instance-source-edition-2.md) | 250 | `declaration-track:1b6161bc9d3946fff8124abfa9e85b44a09abb4c4adc965567c0af6f859e8dfa` |
| 25 | `theorem` | [coe_mk](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/coe-mk-source-edition-2.md) | 257 | `result-track:f600bb106708dd04b35deb9d7626801d2d39bff8cdd962b946a6d931865541c5` |
| 26 | `theorem` | [rightHom_section](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/righthom-section.md) | 262 | `result-track:2bd9adf9820453693beb76db1ee71a183ba5d397dced6131315bc93967ec632b` |
| 27 | `theorem` | [rightHom_comp_section](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/righthom-comp-section.md) | 265 | `result-track:9db745ee2a4866a0fad0936224c59bdc318020851b71e0befbcee2a880c00c0e` |
| 28 | `structure` | [Splitting](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/splitting.md) | 271 | `declaration-track:baf0411652a22452e3a9934e2864c368af1d6955a669a2024d1ee9b694878a67` |
| 29 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/instance-source-edition-5.md) | 279 | `declaration-track:79e6e0accc299b4d8590e8ddc6b3515554e77ce9745103ed02d8491c07d55b65` |
| 30 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/instance-source-edition-3.md) | 287 | `declaration-track:20fbe85ce5104087270ded06da4f33cd9215528a1f371811a8666bf7f4b310a4` |
| 31 | `theorem` | [coe_mk](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/coe-mk.md) | 294 | `result-track:7142de4c12f0f783c219d10a6bf84a5a354b7de10d4bfd2e209e662fc4111272` |
| 32 | `theorem` | [coe_monoidHom_mk](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/coe-monoidhom-mk.md) | 297 | `result-track:8b743b3a913531c0b09dbdfea1f3d202a0ededc829d44d6785d9707c17581502` |
| 33 | `theorem` | [rightHom_splitting](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/righthom-splitting.md) | 303 | `result-track:8f5de6160196778c6d75ffad6d7d45b4427760c449111ebafd7043b658575f8c` |
| 34 | `theorem` | [rightHom_comp_splitting](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/righthom-comp-splitting.md) | 306 | `result-track:bd8d62c61ef4457106573e6504faa13122f607068e6bbf77c05bda053ca97d7d` |
| 35 | `def` | [IsConj](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/isconj.md) | 317 | `declaration-track:d0438c98fdebbcc080afe62cdf7c9fd04a84e7a72a668b6d2f02ff6a23edcdd6` |
| 36 | `def` | [toGroupExtension](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/togroupextension.md) | 326 | `declaration-track:5aa10538aa1069192a41925ef4c32a7fe12774b4c49d5a3eae7e09c625b9017e` |
| 37 | `theorem` | [toGroupExtension_inl](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/togroupextension-inl.md) | 333 | `result-track:9a0cb9d36384b1e5e98f5e35f365b83effb6e3de34c5b47ea34e10426ae4ca4e` |
| 38 | `theorem` | [toGroupExtension_rightHom](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/togroupextension-righthom.md) | 335 | `result-track:596e91ec369d94543791febfe37d8d226aa3a390ad2c49e3032915fb7ffe257d` |
| 39 | `def` | [inr_splitting](../../../../GroupTheoryAndGeneralizations/GroupExtensionDefsPublic.lean/declarations/inr-splitting.md) | 339 | `declaration-track:ea0d4830c16cd9fa50558cae58455143fbdece367398d8c76adb9cc205eb19f2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f45044782b97d03c0b5708a940e0b24079425f76328df3db4f62967fbd2ea4bc -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Defs/Variant64056fa124cde4f00464cef67183b1697124d428d6a8c86ce00d9baddef204c6.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Defs/Variant64056fa124cde4f00464cef67183b1697124d428d6a8c86ce00d9baddef204c6.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
