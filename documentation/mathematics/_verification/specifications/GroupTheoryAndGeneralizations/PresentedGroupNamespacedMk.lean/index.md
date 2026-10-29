# Verification target: Presented Group Namespaced Mk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc1160834884601ee908cec64d5c9eb138b4c429",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant4fbb4c3c0ef2624ecf9c1da7e360ec88f47074896e1ac64f41bc9306878041bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc1160834884601ee908cec64d5c9eb138b4c429`.

Source path: `GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant4fbb4c3c0ef2624ecf9c1da7e360ec88f47074896e1ac64f41bc9306878041bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/PresentedGroup/Variant4fbb4c3c0ef2624ecf9c1da7e360ec88f47074896e1ac64f41bc9306878041bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.FreeGroup.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PresentedGroup](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/presentedgroup.md) | 42 | `declaration-track:9c62f1d6c615cf49c3721d7fa2aaa5912d75fa8381a03069c4b9933a3ec207ca` |
| 2 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/instance-source-edition-2.md) | 47 | `declaration-track:9eab3275f486861a7dcfe2b25818f4baaa34d544e29f6576e2cc233014f95d15` |
| 3 | `def` | [mk](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/mk.md) | 52 | `declaration-track:052f1de4f02918c47b36c869d913e4fbc92c871bfa9487ef575de704304fb39e` |
| 4 | `theorem` | [mk_surjective](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/mk-surjective.md) | 55 | `result-track:d5c3789d2b4f8b8bde6e800c9d7777882ba214ae7d00da980c943164a92f565c` |
| 5 | `def` | [of](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/of.md) | 60 | `declaration-track:05e28357f3dc84ffc2df33ee27847dde8e66f152fa6e2b90511f62a28e9a74fc` |
| 6 | `lemma` | [mk_eq_one_iff](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/mk-eq-one-iff.md) | 63 | `result-track:808144a89eabba4e0f689c791b57d59fcba49ec18bd64bb989c329b7cda8a724` |
| 7 | `lemma` | [one_of_mem](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/one-of-mem.md) | 67 | `result-track:a7d9cf95e3d993a63115234db797657b59d5f0c78b5c2f79c3f1f4955326e94d` |
| 8 | `lemma` | [mk_eq_mk_of_mul_inv_mem](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/mk-eq-mk-of-mul-inv-mem.md) | 71 | `result-track:68443f0d10bcc4db8324c231b5fe631b4b54ebb977d00fc88ca1e952cfddc00d` |
| 9 | `lemma` | [mk_eq_mk_of_inv_mul_mem](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/mk-eq-mk-of-inv-mul-mem.md) | 75 | `result-track:6d7b41063d3f8a490eaf7454eb398a8660f2d125348eb314f8d3b11094e3b698` |
| 10 | `theorem` | [closure_range_of](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/closure-range-of.md) | 82 | `result-track:8778dd68147038f6e0b4995344f5c8e3dfcca5a00665063ec9ae1adccc62167a` |
| 11 | `theorem` | [induction_on](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/induction-on.md) | 90 | `result-track:e3f77186e618c7c1239cd90452a8e66919d125561b1cbdee9bdc84a214589eb1` |
| 12 | `theorem` | [generated_by](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/generated-by.md) | 94 | `result-track:b3b3b8efd652707c663c7be1438b2bdf19bca4186ba4df242746ee78857be4a5` |
| 13 | `theorem` | [closure_rels_subset_ker](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/closure-rels-subset-ker.md) | 117 | `result-track:1147a9571f62e4fa11f8fda7e436d88f36d814c6cae03dc38f455451c4b66767` |
| 14 | `theorem` | [to_group_eq_one_of_mem_closure](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/to-group-eq-one-of-mem-closure.md) | 121 | `result-track:16bd0647c327c8ea1a447ce1d117dee1178eaab3e6d8b13dbf3505e1970e37fa` |
| 15 | `def` | [toGroup](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/togroup.md) | 127 | `declaration-track:b922f82dee677b6b936a15d3cc0b29e6d59f30e7a31ff5afe842b31f906c2750` |
| 16 | `theorem` | [toGroup.of](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/togroup-of.md) | 131 | `result-track:f31f36e1cfc818dc87c93b8c0b96b505d7f3883b515756bdafd5222395375f78` |
| 17 | `theorem` | [toGroup.unique](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/togroup-unique.md) | 134 | `result-track:f03d0d98bb016bf3f88f0d39c9c3497c7a748e8a48fca5c193ac41d4b3d49dfe` |
| 18 | `theorem` | [ext](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/ext.md) | 141 | `result-track:8319d7233a18cc62e500b12afd525807ac38eda348b843734b8bfde2f505d39c` |
| 19 | `def` | [equivPresentedGroup](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/equivpresentedgroup.md) | 149 | `declaration-track:5d8f84a1404a852d1e468d8de795df3a48bada70d7349e5780b5f553f1870634` |
| 20 | `theorem` | [equivPresentedGroup_apply_of](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/equivpresentedgroup-apply-of.md) | 156 | `result-track:e067915ad685217b0695b46976a5914fe354f4190360978c5f7f896d97faca6f` |
| 21 | `theorem` | [equivPresentedGroup_symm_apply_of](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/equivpresentedgroup-symm-apply-of.md) | 160 | `result-track:b9ed41e3b2f3361d4f67f84c05163fadcbc35fb12535e13205fb88a0a7952f9e` |
| 22 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/PresentedGroupNamespacedMk.lean/declarations/instance.md) | 166 | `declaration-track:6ad6ef2f09a00f2a220e10b94aa5f900cb038966c7ab5ccbdeb81c0e02a05d4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=00d3ed07380acd2583af156fd01403764f5e2812b55d9fbd2e89ed3eb3a82c49 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/PresentedGroup/Variant4fbb4c3c0ef2624ecf9c1da7e360ec88f47074896e1ac64f41bc9306878041bf.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/PresentedGroup/Variant4fbb4c3c0ef2624ecf9c1da7e360ec88f47074896e1ac64f41bc9306878041bf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
