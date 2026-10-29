# Verification target: Of Associative Namespaced Lie Def

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "46e5f1be764d3cc680ec3d173f50adf3477ca3f7",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variantb4f8f39e9f26ef2a70532a7657889c6f29709b80bd3a2ce690e0efb8ee1df34f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/index.md) · [Full source](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `46e5f1be764d3cc680ec3d173f50adf3477ca3f7`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variantb4f8f39e9f26ef2a70532a7657889c6f29709b80bd3a2ce690e0efb8ee1df34f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfAssociative/Variantb4f8f39e9f26ef2a70532a7657889c6f29709b80bd3a2ce690e0efb8ee1df34f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Lie.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Subalgebra` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Submodule` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Subalgebra.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/instance.md) | 56 | `declaration-track:85c72e3153985bef7d5bfb79ff18d445640eed72cc757d06861959898bbdffd5` |
| 2 | `theorem` | [lie_def](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/lie-def.md) | 59 | `result-track:edf631a8bd96413c9ee27884a8721014d05a1a837f19279e32cd903dc463c93f` |
| 3 | `theorem` | [commute_iff_lie_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/commute-iff-lie-eq.md) | 65 | `result-track:216cfe00177c31d840ecbeaedefc6b8f725ebb41beb44787481a2441fc9eede6` |
| 4 | `theorem` | [Commute.lie_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/commute-lie-eq.md) | 69 | `result-track:b0dba8d348875b36a061673bb2d930dcdc9fa938f86a592d422491a45c85c721` |
| 5 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/instance-source-edition-2.md) | 76 | `declaration-track:8ce508e03d27c7b36582edbc2c52b46af3075c84f3ef8d8e46cf778809a72a71` |
| 6 | `theorem` | [of_associative_ring_bracket](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/of-associative-ring-bracket.md) | 84 | `result-track:2c5777f581722080b72a6d2dbed71c23bd68b53049adb4d01c89e84aee3ba185` |
| 7 | `theorem` | [lie_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/lie-apply.md) | 89 | `result-track:fde2ad1eb952536d7bc0cecc1f1ad522c1204df877af42072e23da3d757a1883` |
| 8 | `def` | [LieRingModule.ofAssociativeModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/lieringmodule-ofassociativemodule.md) | 110 | `declaration-track:51f57b12fa6ce8f9af3685a17fb40e274734353d0dff535775191bba32e0d8f5` |
| 9 | `theorem` | [lie_eq_smul](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/lie-eq-smul.md) | 119 | `result-track:fb6f424df70ad5e0e55b1b49f7233177c619c6afca12e0a3f09289085d51388e` |
| 10 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/instance-source-edition-4.md) | 131 | `declaration-track:d9d85427745199b3794d27a5815d2beb4f4a89b229fb9060dfb4175c51e28629` |
| 11 | `theorem` | [LieModule.ofAssociativeModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/liemodule-ofassociativemodule.md) | 148 | `result-track:3a401f9d2d803ecc9545e513cd41f8711b7070d5dc8f0f975e4f163fa596a8d9` |
| 12 | `instance` | [Module.End.lieRingModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/module-end-lieringmodule.md) | 153 | `declaration-track:2329a1571694452e239ff00663b43f5e0dd6618fac196bc67f25633d3206b740` |
| 13 | `instance` | [Module.End.lieModule](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/module-end-liemodule.md) | 157 | `declaration-track:1b3e3d2d8d59c0e07e28dd5b12e5421e057d254268b929b4b96f045ceb45cae3` |
| 14 | `def` | [toLieHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/toliehom.md) | 171 | `declaration-track:c43a2a5a7a482a1029a315391e739fd203d8b34fe43e65a9a074318ee9afbcd7` |
| 15 | `instance` | [(anonymous)](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/instance-source-edition-3.md) | 176 | `declaration-track:a2d895a5041d4d54e8f02c8af39b416ae2a086ebd0f3ab31db4d7c7d7038b28a` |
| 16 | `theorem` | [coe_toLieHom](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/coe-toliehom.md) | 187 | `result-track:95d1e30235233af856a54c0bb6a7b54d1ec5636666aa0f1d232c9725db2dae26` |
| 17 | `theorem` | [toLieHom_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/toliehom-apply.md) | 191 | `result-track:b107e621f1a0a9dc1df561c3ccbdf5ba94e9e9470c0cdf58aaaed45413e2c5e8` |
| 18 | `theorem` | [toLieHom_id](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/toliehom-id.md) | 196 | `result-track:512e40e8a907efe866e95ab3d224eba8cde1894af3e15d70927dd5409d1b00f3` |
| 19 | `theorem` | [toLieHom_comp](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/toliehom-comp.md) | 201 | `result-track:de83f5229e4ce6ec5fa385339d4a7634251dd23460a89e21a080fae2b6faff75` |
| 20 | `theorem` | [toLieHom_injective](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/toliehom-injective.md) | 205 | `result-track:b908e8f88ee50281c689ad9caa9d1a3bd861f35517151009c79203c96091cfe1` |
| 21 | `def` | [LieModule.toEndomorphism](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/liemodule-toendomorphism.md) | 227 | `declaration-track:6c4b3f517d0334e7657c80f09d330c309474500a04e0a62ae8a39b0776dd5d10` |
| 22 | `def` | [LieAlgebra.ad](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/liealgebra-ad.md) | 238 | `declaration-track:a7f20db2eca2be702d2999512a5019360e8b4ba979efb42395f5f85f031c7926` |
| 23 | `theorem` | [LieAlgebra.ad_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/liealgebra-ad-apply.md) | 243 | `result-track:3f64e9091f006fca05d11686e27859d88fc51cdc61482b1d864ccbecde1bc4e9` |
| 24 | `theorem` | [LieModule.toEndomorphism_module_end](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/liemodule-toendomorphism-module-end.md) | 248 | `result-track:ba9ece735230d922a5a01c7e9323e29bf2d25a8e643172ef0a5afa3a14ac7b99` |
| 25 | `theorem` | [LieSubalgebra.toEndomorphism_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/liesubalgebra-toendomorphism-eq.md) | 252 | `result-track:888f6388c5f6ef423f6231aa179108ee68b13c9608141f7a85c821710d8dd177` |
| 26 | `theorem` | [LieSubalgebra.toEndomorphism_mk](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/liesubalgebra-toendomorphism-mk.md) | 258 | `result-track:8ee713488fcb7db0bff3b014177168eecf44b5a88d9077169791cfa4909aac7a` |
| 27 | `theorem` | [coe_map_toEndomorphism_le](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/coe-map-toendomorphism-le.md) | 271 | `result-track:958b62bfd191060908171381ebab00a8f52689a06066c4c6945a193027a5d360` |
| 28 | `theorem` | [toEndomorphism_comp_subtype_mem](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/toendomorphism-comp-subtype-mem.md) | 279 | `result-track:1ae8324db7eccc1402b6b56f23f5c4275263ac0603521a778cec1846604ce8fa` |
| 29 | `theorem` | [toEndomorphism_restrict_eq_toEndomorphism](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/toendomorphism-restrict-eq-toendomorphism.md) | 285 | `result-track:3ac825be1c38887c37b025ffe45ad6da56f7d71674332060ffe308e3b731b054` |
| 30 | `theorem` | [LieAlgebra.ad_eq_lmul_left_sub_lmul_right](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/liealgebra-ad-eq-lmul-left-sub-lmul-right.md) | 294 | `result-track:331234bfe2fee3141f8ae677508dc1dc9f12d3b1637d6b6f5e284392c855e558` |
| 31 | `theorem` | [LieSubalgebra.ad_comp_incl_eq](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/liesubalgebra-ad-comp-incl-eq.md) | 299 | `result-track:7e16cd9a3590b3e1cc56530278ccbfaa347514a254fd7676d427f26155627fc7` |
| 32 | `def` | [lieSubalgebraOfSubalgebra](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/liesubalgebraofsubalgebra.md) | 309 | `declaration-track:1fb995b3f3fcea2c6100a3b2d748bd0212888443c1a6c5e6f090e1fc3e6ac060` |
| 33 | `def` | [lieConj](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/lieconj.md) | 329 | `declaration-track:63a569f1115cb4f06b19aaa0d55d6e4d539fa9fa4ddcbdf8148ccf7edd1fd8f0` |
| 34 | `theorem` | [lieConj_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/lieconj-apply.md) | 338 | `result-track:94796b0e76d00498d7375b7e36e901f9ba351b65901f7eb152d73b948fba81f0` |
| 35 | `theorem` | [lieConj_symm](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/lieconj-symm.md) | 343 | `result-track:87ef28e43addaffbd9287f8177012aa9b26dafe8e6896dc74258987b3d2ccde7` |
| 36 | `def` | [toLieEquiv](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/tolieequiv.md) | 358 | `declaration-track:9c93e868afa7aabebc2aa8ed5a6dcf209d1d8c6f09eb8eb3e82d411c801a8193` |
| 37 | `theorem` | [toLieEquiv_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/tolieequiv-apply.md) | 367 | `result-track:c16b44308d16110415909a7b8a34a977ba849c2c428fc1ae3f6bb744cfbf6b25` |
| 38 | `theorem` | [toLieEquiv_symm_apply](../../../../../NonassociativeRingsAndAlgebras/LieAlgebrasAndLieSuperalgebras/OfAssociativeNamespacedLieDef.lean/declarations/tolieequiv-symm-apply.md) | 372 | `result-track:c8751bbf47c865186b2d284a866665a11552d15d3fa6b03b3745234a42ed3c5d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0e0bdee9473e3dcd8c2ce49aaffce6a987445671a2e45c69a1f84af87e8ec411 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/OfAssociative/Variantb4f8f39e9f26ef2a70532a7657889c6f29709b80bd3a2ce690e0efb8ee1df34f.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/OfAssociative/Variantb4f8f39e9f26ef2a70532a7657889c6f29709b80bd3a2ce690e0efb8ee1df34f.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
