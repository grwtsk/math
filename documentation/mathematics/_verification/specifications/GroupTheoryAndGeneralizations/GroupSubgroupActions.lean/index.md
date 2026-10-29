# Verification target: Group Subgroup Actions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45a538bfe6dba9e0dcd792ecaad3f7974d476eab",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Actions/Variant166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45a538bfe6dba9e0dcd792ecaad3f7974d476eab`.

Source path: `GRWTSK/Algebra/GroupTheory/Actions/Variant166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Actions/Variant166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.DistribMulAction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Center` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulAction](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/declarations/instmulaction.md) | 28 | `declaration-track:5ed111203cc9a59ec022f7fed7a07d3482eafc66b80c24dc20582e8ffb9ba232` |
| 2 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/declarations/smul-def.md) | 30 | `result-track:069c45c7e393f510964bcc0bc4d14c52357ec165a767ca132ac9d5d41815c777` |
| 3 | `lemma` | [mk_smul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/declarations/mk-smul.md) | 33 | `result-track:a729f5ce57fc6e7347c99aee83ed97850eb81396a0336dde722768c6fdd3a929` |
| 4 | `instance` | [smulCommClass_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/declarations/smulcommclass-left.md) | 38 | `declaration-track:8e9ab91c0ae1d716d1614b0ad09cc7d37e6df2702d463c22dc785536a3ec76e6` |
| 5 | `instance` | [smulCommClass_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/declarations/smulcommclass-right.md) | 43 | `declaration-track:dacd41038aacbf453f580138382f92c620348c6c265974bf2783993a61c0823c` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/declarations/instance.md) | 49 | `declaration-track:079faed8bbcc4efd9673bac4cd49eee24bec317b17543fc308cd587fa3711b10` |
| 7 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/declarations/instance-source-edition-3.md) | 54 | `declaration-track:8aa2a4a4b45d358478a0e44e385628e41b61232418c9eba5bb8a85a308605d02` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/declarations/instance-source-edition-4.md) | 58 | `declaration-track:e44c2af39dd422df795459122d1405d5a11cb82e150ee48f6e560085228be52f` |
| 9 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/declarations/instance-source-edition-2.md) | 62 | `declaration-track:0a1b9ef0d2886e4e5b48c1e4dc49460fb606edff0efbae38f221e860fd0ebe96` |
| 10 | `instance` | [center.smulCommClass_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/declarations/center-smulcommclass-left.md) | 66 | `declaration-track:1a7601c0c12c10646fca95b53c341f02053abbdebd69a7cc22e31df0b3a7bbf5` |
| 11 | `instance` | [center.smulCommClass_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActions.lean/declarations/center-smulcommclass-right.md) | 70 | `declaration-track:15b9285db1cb296a93ca9a02dcaa6516518f13fd88f23632ca6f22e462b71f64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=548c287594c83b49739e7e81a4a36c61f653a38e931f7c258f1ff8d3f0f40164 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Actions/Variant166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Actions/Variant166e58a4df5365eb4545bbb2d65f34eef4a11f8ca359a9a5b4908e02af4d0365.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
