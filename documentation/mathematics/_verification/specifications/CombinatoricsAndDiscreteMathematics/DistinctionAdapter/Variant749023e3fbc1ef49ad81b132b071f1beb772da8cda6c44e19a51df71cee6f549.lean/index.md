# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.DistinctionAdapter.Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "625ab7f8e1995454886966dc0c328344aa739de8",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/DistinctionAdapter/Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CombinatoricsAndDiscreteMathematics/DistinctionAdapter/Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549.lean/index.md) · [Full source](../../../../../CombinatoricsAndDiscreteMathematics/DistinctionAdapter/Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `625ab7f8e1995454886966dc0c328344aa739de8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/DistinctionAdapter/Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/DistinctionAdapter/Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Refinement.Tree` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DistinctionCoordinate](../../../../../CombinatoricsAndDiscreteMathematics/DistinctionAdapter/Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549.lean/declarations/distinctioncoordinate--e4ddf62f715c59282a6c8a16.md) | 13 | `declaration-track:e4ddf62f715c59282a6c8a16afea7c0779f8f78e13156713ae6532914270cf8f` |
| 2 | `structure` | [DistinctionRegistry](../../../../../CombinatoricsAndDiscreteMathematics/DistinctionAdapter/Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549.lean/declarations/distinctionregistry--7e16635632fe16b97f75b17d.md) | 26 | `declaration-track:7e16635632fe16b97f75b17db661fad8af860b3939f47b59677842ca48fe25ad` |
| 3 | `structure` | [PresentationRefinementStep](../../../../../CombinatoricsAndDiscreteMathematics/DistinctionAdapter/Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549.lean/declarations/presentationrefinementstep--a3aee61485555fb8c7fcf211.md) | 33 | `declaration-track:a3aee61485555fb8c7fcf211e9fa6f4b392fb6585536ddf018ba82450d437d5e` |
| 4 | `structure` | [PresentationRefinementChain](../../../../../CombinatoricsAndDiscreteMathematics/DistinctionAdapter/Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549.lean/declarations/presentationrefinementchain--c4f471b0e692517264518f0f.md) | 39 | `declaration-track:c4f471b0e692517264518f0fa8ff67a175aba4751bcab92cfd7057122d43b0b0` |
| 5 | `def` | [presentation_refinement_step_changes_one_coordinate](../../../../../CombinatoricsAndDiscreteMathematics/DistinctionAdapter/Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549.lean/declarations/presentation-refinement-step-changes-one-coordinate--17d5cb50c5edc8edfdab26a2.md) | 50 | `declaration-track:17d5cb50c5edc8edfdab26a245e11b4d0919b8bb773d214d1a4f678945e8e8ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=3496e6eac74d95d887bf3d7b6aef191b8798e92b16f2c3491729cbe024d8ad9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/DistinctionAdapter/Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/DistinctionAdapter/Variant749023e3fbc1ef49ad81b132b071f1beb772da8cda6c44e19a51df71cee6f549.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
