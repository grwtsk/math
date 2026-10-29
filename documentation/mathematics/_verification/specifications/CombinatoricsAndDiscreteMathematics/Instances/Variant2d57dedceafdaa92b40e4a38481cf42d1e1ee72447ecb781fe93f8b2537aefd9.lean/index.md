# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Instances.Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b98d0ef997718a98b7b8e94b0215774420d6eaa",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Instances/Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../CombinatoricsAndDiscreteMathematics/Instances/Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9.lean/index.md) · [Full source](../../../../../CombinatoricsAndDiscreteMathematics/Instances/Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b98d0ef997718a98b7b8e94b0215774420d6eaa`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Instances/Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Instances/Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.EquivFunctor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.OfMap` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [EquivFunctorUnique](../../../../../CombinatoricsAndDiscreteMathematics/Instances/Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9.lean/declarations/equivfunctorunique--45f6995245cb581ee2d83ccd.md) | 18 | `declaration-track:45f6995245cb581ee2d83ccd60012e46d0ba0a903c2c70f765336eff7055fb67` |
| 2 | `instance` | [EquivFunctorPerm](../../../../../CombinatoricsAndDiscreteMathematics/Instances/Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9.lean/declarations/equivfunctorperm--c863e6707708fd2784c54933.md) | 23 | `declaration-track:c863e6707708fd2784c54933613392b79c85361e01e1054dde0279898ce37dcf` |
| 3 | `instance` | [EquivFunctorFinset](../../../../../CombinatoricsAndDiscreteMathematics/Instances/Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9.lean/declarations/equivfunctorfinset--3337a9718099290e61064cb4.md) | 30 | `declaration-track:3337a9718099290e61064cb4727c59fe9ecaf440b1efc9f21af64b64a35c25c7` |
| 4 | `instance` | [EquivFunctorFintype](../../../../../CombinatoricsAndDiscreteMathematics/Instances/Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9.lean/declarations/equivfunctorfintype--966feba67eb826ce9b3b44e5.md) | 40 | `declaration-track:966feba67eb826ce9b3b44e519affdae7446f143b3f37cb332e6314bc83c9a20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d2f5cd2802d5e788f8ed7db23cccae55a456deeef3abf72d80633c6b674a9551 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Instances/Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Instances/Variant2d57dedceafdaa92b40e4a38481cf42d1e1ee72447ecb781fe93f8b2537aefd9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
