# Verification target: Group Subgroup Actions Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e68ace75fa748d96fed594d75f1a074ab1145efc",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Actions/Variant9035022871c51adb93e9fec20d9852d10ec87aed2047ee2e129a2c12ef02e00a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e68ace75fa748d96fed594d75f1a074ab1145efc`.

Source path: `GRWTSK/Algebra/GroupTheory/Actions/Variant9035022871c51adb93e9fec20d9852d10ec87aed2047ee2e129a2c12ef02e00a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Actions/Variant9035022871c51adb93e9fec20d9852d10ec87aed2047ee2e129a2c12ef02e00a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Submonoid.DistribMulAction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Center` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instMulAction](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/declarations/instmulaction.md) | 36 | `declaration-track:d41d93ce61d64dcde815ba1aaa02d8fb562b126029b5570cc11194c589a2b74a` |
| 2 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/declarations/smul-def.md) | 38 | `result-track:73ee99b882bf07c576c134ceb67781a3d2f31eddb214f2cbf2765f8fe823236d` |
| 3 | `lemma` | [mk_smul](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/declarations/mk-smul.md) | 41 | `result-track:cf2522cdfb78e658b184f85fa86519d57d943001960fca6b87b1382613262503` |
| 4 | `instance` | [smulCommClass_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/declarations/smulcommclass-left.md) | 46 | `declaration-track:bf6a976efd27ab80841f720a8fc0e238f403d170cb1986f0229a7a36b3f4503c` |
| 5 | `instance` | [smulCommClass_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/declarations/smulcommclass-right.md) | 51 | `declaration-track:29a89a52972595b8ba2469294d50a6a9b1b224d93d5ece469a0acde469f8fc6b` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/declarations/instance-source-edition-3.md) | 57 | `declaration-track:aaf7cd2e6fd93c1336b2427279ef943daa6e563e25f8707cb2173a91a2bc946f` |
| 7 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/declarations/instance-source-edition-4.md) | 62 | `declaration-track:f597e81d304b89dfe6b2083d4490142f35376d7464b7d0ebaa4a161bd8db20da` |
| 8 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/declarations/instance-source-edition-2.md) | 66 | `declaration-track:44b87a699f75e8e85ef4416296cac3ca94a9f57979208be478e32698a7d300d4` |
| 9 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/declarations/instance.md) | 70 | `declaration-track:17667e692298b2471468e367b27c8ce4125be97fc33ae5cf7d1e1def35e9c668` |
| 10 | `instance` | [center.smulCommClass_left](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/declarations/center-smulcommclass-left.md) | 74 | `declaration-track:b1fecb73a5842033b80c2c80b8e1c27862127c1c133a37d55d8c18cad7ec7634` |
| 11 | `instance` | [center.smulCommClass_right](../../../../GroupTheoryAndGeneralizations/GroupSubgroupActionsNamespaced.lean/declarations/center-smulcommclass-right.md) | 78 | `declaration-track:58c5f4bcd1011c61d287c8c40145699c01dcd93fb86b8ab9a48744f3ba180195` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=ecd1738fdd41d439701a211ae985ecbcc35bea6395ae72c4ecac8befd5a16cfd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Actions/Variant9035022871c51adb93e9fec20d9852d10ec87aed2047ee2e129a2c12ef02e00a.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Actions/Variant9035022871c51adb93e9fec20d9852d10ec87aed2047ee2e129a2c12ef02e00a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
