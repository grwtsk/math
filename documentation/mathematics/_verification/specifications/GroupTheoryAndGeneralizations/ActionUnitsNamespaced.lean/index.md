# Verification target: Action Units Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da51a3e707620cea986de57452d03e35f9537f05",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da51a3e707620cea986de57452d03e35f9537f05`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/instance-source-edition-3.md) | 37 | `declaration-track:e53969ee470fb5104f3c77049887f0811c030f101171dc7ee023ca6b41943ef2` |
| 2 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/smul-def.md) | 39 | `result-track:6b72d7b2827ca2afd3d52d19163d774187e6895808da15db78e8d03d7a4771d4` |
| 3 | `lemma` | [smul_mk_apply](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/smul-mk-apply.md) | 42 | `result-track:398750206ec1277a3d7a9b472e604ac7bb4febf54c587a0c96dbb20dff47c18e` |
| 4 | `lemma` | [smul_isUnit](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/smul-isunit.md) | 46 | `result-track:a4f59891798be7be163043661718a191fb9de3b577e699f4956499589da0be8a` |
| 5 | `lemma` | [Action Units Namespaced](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/inv-smul.md) | 49 | `result-track:e0f9e595cf514e38f943b91ecc052fd5ce731eefc6d1ba2ee0050236ee012edb` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/instance-source-edition-2.md) | 52 | `declaration-track:9862f1de065ccce6fca5124d689dd5115d085f92717c511c281dc29ccf7c4e50` |
| 7 | `instance` | [instMulAction](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/instmulaction.md) | 56 | `declaration-track:89b5c7bb253263b4adf90581e37ed49fffdaf15a22ff75bf1f56de8c084d5e89` |
| 8 | `instance` | [smulCommClass_left](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/smulcommclass-left.md) | 61 | `declaration-track:4fbe9f988640c7af5cbc624d0b4b9ea35272f1931a306f67fb0bda94592b43aa` |
| 9 | `instance` | [smulCommClass_right](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/smulcommclass-right.md) | 65 | `declaration-track:f78dc1e299240edb7503b977c44117762dcfe02c2cb4d8c576ff8293d9199697` |
| 10 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/instance.md) | 69 | `declaration-track:8bdb902140374407ddff60f38a1c99e20140ab779640601e2c7dc7fd4b5b84f2` |
| 11 | `instance` | [mulAction'](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/mulaction.md) | 77 | `declaration-track:1e32637d8c7554257ad69f795ab33457c766b8af8926f19e0fbc99dfef75fb60` |
| 12 | `lemma` | [val_smul](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/val-smul.md) | 87 | `result-track:cefcba0dbc23114b89309686460e197d55cbee682b3ea876fafc3f593e6e7b2e` |
| 13 | `lemma` | [smul_inv](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/smul-inv.md) | 92 | `result-track:efb11f51b6a0712fd5ee755b0bb252f3a5dad4c51c02c490cde26b649dc5b6eb` |
| 14 | `instance` | [smulCommClass'](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/smulcommclass.md) | 97 | `declaration-track:c4ecc4baea747c9e336ba4cfa7e1eee4c37553d247f1476cbd461c4444e7c498` |
| 15 | `instance` | [isScalarTower'](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/isscalartower.md) | 104 | `declaration-track:ac545ac24ad163b9181a814eba542dfffaa8455b1f280e4d9433dec5c19c4ccb` |
| 16 | `instance` | [isScalarTower'_left](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/isscalartower-left.md) | 111 | `declaration-track:dd1b7e1b57479a97d287e42a44284ee32b7928119099a777df316323e1160c8d` |
| 17 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/example.md) | 116 | `declaration-track:be56defcfc0b45796a8203e80becf3d67c4c0affea20b2f59d7b46ba73e9b410` |
| 18 | `lemma` | [IsUnit.smul](../../../../GroupTheoryAndGeneralizations/ActionUnitsNamespaced.lean/declarations/isunit-smul.md) | 122 | `result-track:35cc9f056f5e79439be745897910b6ec709773e7ddd5abb0737223b54f3066bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=06ec06adbbb5c2c15149425c3c411838fef8d0e54f5a958bd4917601fd397fb6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Units/Variant633d5a9c893fb2215065c1338d136ba7aaf75d8d68c7a6690c89599d214397ff.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
