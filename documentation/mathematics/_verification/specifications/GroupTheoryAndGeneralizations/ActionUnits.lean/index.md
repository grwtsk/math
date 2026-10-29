# Verification target: Action Units

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5c32fade58481a4babd970315063bdeb51e297b6",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Units/Variant41b7b6325ffb97ba74a77d51afe5476453e8898eb0b85d48b561866feecaee97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/index.md) · [Full source](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5c32fade58481a4babd970315063bdeb51e297b6`.

Source path: `GRWTSK/Algebra/GroupTheory/Units/Variant41b7b6325ffb97ba74a77d51afe5476453e8898eb0b85d48b561866feecaee97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Units/Variant41b7b6325ffb97ba74a77d51afe5476453e8898eb0b85d48b561866feecaee97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Faithful` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/instance-source-edition-2.md) | 29 | `declaration-track:07000810e8ae9331ef2d7f92655e7205a714e7dfc32fd48badd3d155ce311f1c` |
| 2 | `lemma` | [smul_def](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/smul-def.md) | 31 | `result-track:cbb8e154989d682b63be71775f9873c2c8ca874483d08f22a3d75153039dfbeb` |
| 3 | `lemma` | [smul_mk_apply](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/smul-mk-apply.md) | 34 | `result-track:afa2f7b015452ea7bb5401e56bf4c2aea1c46f2ee2a7e34f0eaae3f88d23e495` |
| 4 | `lemma` | [smul_isUnit](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/smul-isunit.md) | 38 | `result-track:fdcb3790b65f4a7e17b718ecaf6d81ccfccac493b31fe87abed3c11d875b0bf4` |
| 5 | `lemma` | [_root_.IsUnit.inv_smul](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/root-isunit-inv-smul.md) | 41 | `result-track:e57af0b9658bfe183ed9ec79dfda03fc8141fca0672b991d0bd1dae02b62d7d2` |
| 6 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/instance-source-edition-3.md) | 44 | `declaration-track:c5427e49730095feee17c7921123163584b6c98dfb8b45f79cdcd54f47b0537f` |
| 7 | `instance` | [instMulAction](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/instmulaction.md) | 48 | `declaration-track:f62f8dd624a4961ad161b011e6a7e2b6a218a1d5475b8282b53cf5e0af81c994` |
| 8 | `instance` | [smulCommClass_left](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/smulcommclass-left.md) | 53 | `declaration-track:220293d3c06538654de1fd52baea9e2bf6782ba17e83f1100511fd780abfbee3` |
| 9 | `instance` | [smulCommClass_right](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/smulcommclass-right.md) | 57 | `declaration-track:94ae2f6a72988b1707b3d2b41bb944df075a4854d351d7e7eaec00fca42f2f35` |
| 10 | `instance` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/instance.md) | 61 | `declaration-track:0398be88c7739546ee7390cda7548f8817766fcf3a36d2ae4dffa2a861fc7127` |
| 11 | `instance` | [mulAction'](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/mulaction.md) | 69 | `declaration-track:014da2c54dce7096af29b515840db0925e92ec3ee54d7f0e647d05798e03e981` |
| 12 | `lemma` | [val_smul](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/val-smul.md) | 79 | `result-track:d8f72e74cbf279699c5262c4ce3bc16f9b112387072bf9bbd2cc83b16b5c7268` |
| 13 | `lemma` | [smul_inv](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/smul-inv.md) | 84 | `result-track:5383c9a764bc5cabe7dc27985c5ead44f63dfa82cee8035d6826b9dc460286b8` |
| 14 | `instance` | [smulCommClass'](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/smulcommclass.md) | 89 | `declaration-track:fc206255b29e7215f979690ceb1c80303ee214857e718315691539840ee47982` |
| 15 | `instance` | [isScalarTower'](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/isscalartower.md) | 96 | `declaration-track:55a932a0617749414108f4df69baa16968b1d78b4d95a9e2b250827e5d7cbf2e` |
| 16 | `instance` | [isScalarTower'_left](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/isscalartower-left.md) | 103 | `declaration-track:77c32bbdab26221d0230937c7d0906a2e2b1f82c267bba5103298538ad833255` |
| 17 | `example` | [(anonymous)](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/example.md) | 108 | `declaration-track:94247a46a3304dae31b6eeb0451e3f5c317b83cd2cd209b3f87896f96563ebb1` |
| 18 | `lemma` | [IsUnit.smul](../../../../GroupTheoryAndGeneralizations/ActionUnits.lean/declarations/isunit-smul.md) | 114 | `result-track:d89ba53989b638684fd3d893d33fa47399e6ff187ada15e4edd46c7bb72fe9a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0adda1ef60810ba1b734651c8c5f5d9aaba9106b86650c5ac2c037fba4c2354e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/Units/Variant41b7b6325ffb97ba74a77d51afe5476453e8898eb0b85d48b561866feecaee97.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/Units/Variant41b7b6325ffb97ba74a77d51afe5476453e8898eb0b85d48b561866feecaee97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
