# Verification target: Module Bases Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d07fb370da9edc99f72e875de13adac15b59147c",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/index.md) · [Full source](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d07fb370da9edc99f72e875de13adac15b59147c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean.json)

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
| 1 | `structure` | [GeneralSchauderBasis](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/generalschauderbasis.md) | 105 | `declaration-track:b62a0e027c8cec2aa7c8e957d9dea0dbb00ea3779b84d6bc93bde345c868192c` |
| 2 | `abbrev` | [SchauderBasis](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/schauderbasis.md) | 121 | `declaration-track:733425a9ac50cc4bcc8a10485dc53514557254dda23ab1ff7f631c9e6f0ecf60` |
| 3 | `abbrev` | [UnconditionalSchauderBasis](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/unconditionalschauderbasis.md) | 137 | `declaration-track:e8a50e0bba4f69b92bba39821fda61cea7726a9f8df4e5231dff071efd8fa1a5` |
| 4 | `instance` | [(anonymous)](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/instance.md) | 142 | `declaration-track:d717d6b2a932aa82f90ea7d0221dda9b1ee9db55d92fea59aaccd69acf163b0b` |
| 5 | `theorem` | [linearIndependent](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/linearindependent.md) | 150 | `result-track:59ec1d7441994998a55a0e3e94e13defea63f43a5cfe3c6a075a78a858125fc3` |
| 6 | `def` | [proj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/proj-source-edition-2.md) | 157 | `declaration-track:c195c03fabe961ab4d5d672456d1aec66409eb6bc428e15de915302a6c2d4612` |
| 7 | `theorem` | [proj_empty](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/proj-empty.md) | 161 | `result-track:aae05530209e6c29f16328f74e57bbc988c4c5eac01602b5a00c28461d984927` |
| 8 | `theorem` | [proj_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/proj-apply-source-edition-2.md) | 165 | `result-track:e6b3ad8d0d55e8f2314d12ba5dfce9fd08cf1e210f123698f261dcb572c2b77f` |
| 9 | `theorem` | [proj_apply_basis_mem](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/proj-apply-basis-mem-source-edition-2.md) | 170 | `result-track:bee95f0b5953eb57ce52a504d114d34a184cf86ad89ff3270b6d7a2d5b9c1706` |
| 10 | `theorem` | [tendsto_proj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/tendsto-proj-source-edition-2.md) | 175 | `result-track:98d2acb9a614c261bd421158694f3b09a212b126dd9128ddfbc8aab8a400b0ff` |
| 11 | `theorem` | [range_proj_eq_span](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/range-proj-eq-span-source-edition-2.md) | 179 | `result-track:a8411441ec71b65e86d82a8d05abdc8fb60d9645d60481474f5c297144f97460` |
| 12 | `theorem` | [proj_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/proj-comp-source-edition-2.md) | 193 | `result-track:c96f6f859835c284cbf42579bc9596accc52ab425109f9e7027fb62349c5d0ee` |
| 13 | `theorem` | [finrank_range_proj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/finrank-range-proj.md) | 201 | `result-track:59ef10633a56b2eda29681c877254c7abce3a5d1aaeb103acffa6b7b24b4e6ec` |
| 14 | `def` | [enormProjBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/enormprojbound-source-edition-2.md) | 216 | `declaration-track:d1f62f453e701fac4e567dc25b38367fa7f8d81e616afc73013db55245cc8803` |
| 15 | `theorem` | [enorm_proj_le_enormProjBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/enorm-proj-le-enormprojbound.md) | 219 | `result-track:58c078cd518d7ad7e752ec12f4dbbc36d8b01d4d12cfe8a9f1df8760d2ca15b0` |
| 16 | `theorem` | [exists_norm_proj_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/exists-norm-proj-le-source-edition-2.md) | 223 | `result-track:f29181cf0d2dfe9d5f40b40b4dd19a81910fc271b94ae7c33db5f09d5107ce2b` |
| 17 | `def` | [nnnormProjBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/nnnormprojbound.md) | 247 | `declaration-track:a30b0a9b9e8737650ce2b61b95b4c857a7672f70ad2fae68ac82d596f0f70d37` |
| 18 | `theorem` | [bddAbove_range_nnnorm_proj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/bddabove-range-nnnorm-proj-source-edition-2.md) | 250 | `result-track:831a345d485b80408abc13b9343a934fa685b3b8569c4b4057b7fc3310d277ea` |
| 19 | `theorem` | [nnnorm_proj_le_nnnormProjBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/nnnorm-proj-le-nnnormprojbound-source-edition-2.md) | 260 | `result-track:ac9fef7215a465b59ab07f349828a6e87228ee92c2efde618f1235cf076a8f39` |
| 20 | `theorem` | [norm_proj_le_nnnormProjBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/norm-proj-le-nnnormprojbound.md) | 265 | `result-track:72b0e073dc7d5332a62d6de90ac8e1744fb5b848485f8400f16ab4abc3f0f07d` |
| 21 | `def` | [proj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/proj.md) | 279 | `declaration-track:14375a08adb060d1d79955359b99bbd3813e923cd732b8807ae972e866abb059` |
| 22 | `theorem` | [proj_zero](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/proj-zero.md) | 283 | `result-track:1a0e649ca248c44dc3c76b58ce7a2a9d671389dca6eb7bc6ca072a881a580c00` |
| 23 | `theorem` | [proj_apply](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/proj-apply.md) | 287 | `result-track:98a248cdc85743a1fa24fd615e102fe54794922766dd75b60028d3628d6ed767` |
| 24 | `theorem` | [proj_apply_basis_mem](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/proj-apply-basis-mem.md) | 291 | `result-track:afe913dded8ba319b8177c2da60a0296f940c00530d6b0d66686c8437a309b44` |
| 25 | `theorem` | [range_proj_eq_span](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/range-proj-eq-span.md) | 296 | `result-track:74e4a67a457b848926f9567837a9d91916726726ec6fdc30ee9a1a1f41264f0b` |
| 26 | `theorem` | [finrank_range_proj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/finrank-range-proj-source-edition-2.md) | 301 | `result-track:ab99b0d7e4afc88811207b3b4e98d7357d98f207a799668c7bde49ab78d21d78` |
| 27 | `theorem` | [tendsto_proj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/tendsto-proj.md) | 306 | `result-track:54d6b331cc8e8381b6ea92ff15571608f74b89a3a40560d2866604da35842c10` |
| 28 | `theorem` | [proj_comp](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/proj-comp.md) | 311 | `result-track:115061137c90f9d8a5a68b2ac0770a79ae24610bab6ffa1659d0dc33fe38ecfc` |
| 29 | `theorem` | [exists_norm_proj_le](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/exists-norm-proj-le.md) | 319 | `result-track:f046bc0bce06d311dcce4a74ce40a16aaa15a41c5868106db61e3e9fab99869b` |
| 30 | `def` | [enormProjBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/enormprojbound.md) | 327 | `declaration-track:77231504014b63703e681e69dfed20cce3f6e19fdf68ce078ccb5592896bc897` |
| 31 | `theorem` | [enorm_proj_le_enormProjBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/enorm-proj-le-enormprojbound-source-edition-2.md) | 330 | `result-track:5a7d7f620e3bdc113e2eecb50011481d3aac525d2309a62848872c6016181173` |
| 32 | `def` | [nnnormProjBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/nnnormprojbound-source-edition-2.md) | 336 | `declaration-track:f72e04cc09227cb7f204bff57cc5902a98aaa1f07c5fd82330cbb328c627f8a4` |
| 33 | `theorem` | [bddAbove_range_nnnorm_proj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/bddabove-range-nnnorm-proj.md) | 339 | `result-track:57ccfe1db3196a9aa5f3ff8878a931aea2800aea4eeb80c35f3383f8140db234` |
| 34 | `theorem` | [nnnorm_proj_le_nnnormProjBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/nnnorm-proj-le-nnnormprojbound.md) | 349 | `result-track:271c6a65b90b1838e41d384e3d95afde1d3bdcaf16d58975eb3365d4f2a68deb` |
| 35 | `theorem` | [norm_proj_le_nnnormProjBound](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/norm-proj-le-nnnormprojbound-source-edition-2.md) | 354 | `result-track:75a674303c2e7f34c0be3d6adb5b0dbcaa5014bdeb016a229fd9d75535781afb` |
| 36 | `def` | [succSub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/succsub.md) | 368 | `declaration-track:286e7c4f6ce42a324800b2f02d3db082607aa3925ff993886870e4efa755c0d0` |
| 37 | `lemma` | [sum_succSub](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/sum-succsub.md) | 372 | `result-track:b17122f57a6bb19b93e4aec981521cb4256c79eca18306f9ccc3effe1f28c89b` |
| 38 | `lemma` | [succSub_ortho](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/succsub-ortho.md) | 379 | `result-track:16a3695f5a4a3fe7c2031e6b10de789f378cf2ede537818c153b55ffbebc79da` |
| 39 | `lemma` | [finrank_range_succSub_eq_one](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/finrank-range-succsub-eq-one.md) | 396 | `result-track:eed13617a26f275fe3dd0d6da3ff0744c9b858a7d6cd2e833141f92fc144399d` |
| 40 | `structure` | [RankOneDecomposition](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/rankonedecomposition.md) | 439 | `declaration-track:29e81fe5fab7e71a261e4634c036b28d9708a27f89f45ba67ffdf3c05a6d39f7` |
| 41 | `lemma` | [exists_coeff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/exists-coeff.md) | 462 | `result-track:f3c8dd434260fb27303a03d01c295d3715846213c77f31b1d0a6a27befa0a089` |
| 42 | `def` | [basisCoeff](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/basiscoeff.md) | 475 | `declaration-track:f74d5a5799e84ac8d6795e41ad05f191cd4e3264233d7c2bdeb63b9d01278795` |
| 43 | `lemma` | [basisCoeff_spec](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/basiscoeff-spec.md) | 480 | `result-track:3d41dd331230060b3d9a73597aebfb980b2f23a7041e593b976c36b28dcd425c` |
| 44 | `def` | [basis](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/basis.md) | 485 | `declaration-track:77465edf2a6499ef924240175d7ff7ba8759c6af5d83015e35dd304a5b8d9c75` |
| 45 | `theorem` | [basis_proj](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/basis-proj.md) | 518 | `result-track:c562dd78303770df49dc347c68a57ff3f4da48b96c7bb809db55a3591f3fe75a` |
| 46 | `theorem` | [basis_coe](../../../../../FunctionalAnalysis/NormedLinearSpacesAndBanachSpacesBanachLattices/ModuleBasesPublic.lean/declarations/basis-coe.md) | 528 | `result-track:62cea19bdd49b09fefddb16ad1c78f47ace59060b6e8964b8b9d2f9a38f4250f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=e3f2e9793768e4273fa061c70c4ca4c19a4f6a065904c1c8039f806edec49b9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Bases/Variant07ce59584ed6c4c1811ac9781f61b36cb10d148cfd6e5e89eaa99a03acd5c875.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
