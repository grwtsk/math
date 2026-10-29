# Verification target: Group Ring Action Basic

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "156662be7039ea618a018c146680aa1ade90294a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Basic/Varianteb5dfb9b13831b054504b50e578446790e12bcafee8a480f839ade3ff1eb6cd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupRingActionBasic.lean/index.md) · [Full source](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupRingActionBasic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `156662be7039ea618a018c146680aa1ade90294a`.

Source path: `GRWTSK/Algebra/Basic/Varianteb5dfb9b13831b054504b50e578446790e12bcafee8a480f839ade3ff1eb6cd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Basic/Varianteb5dfb9b13831b054504b50e578446790e12bcafee8a480f839ade3ff1eb6cd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Equiv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.Group` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MulSemiringAction](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupRingActionBasic.lean/declarations/mulsemiringaction.md) | 37 | `declaration-track:d90677fa2f2dc4deb1a5cea181beea365f91ea383ff275ffdb561034fe066f54` |
| 2 | `instance` | [(anonymous)](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupRingActionBasic.lean/declarations/instance.md) | 52 | `declaration-track:681f21f5abf3635f92b1bc695fdd1930c7f54c1c74dd6d31440f6a8cef26f944` |
| 3 | `def` | [MulSemiringAction.toRingHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupRingActionBasic.lean/declarations/mulsemiringaction-toringhom.md) | 59 | `declaration-track:5f06ec927926405ec5db81d2c1c6cda8bc102f4650825f1f6a9507ad3703284e` |
| 4 | `theorem` | [toRingHom_injective](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupRingActionBasic.lean/declarations/toringhom-injective.md) | 64 | `result-track:f9440f7d10e9c2858ede8d023a1f7f933a5cbb10aeae40c769ec0d498097ed2b` |
| 5 | `def` | [MulSemiringAction.toRingEquiv](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupRingActionBasic.lean/declarations/mulsemiringaction-toringequiv.md) | 71 | `declaration-track:c4f4573de86ce7a6d73adcc60cc3c2de0e3f3a3c2a25af04f6aadda46545d417` |
| 6 | `def` | [MulSemiringAction.compHom](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupRingActionBasic.lean/declarations/mulsemiringaction-comphom.md) | 84 | `declaration-track:8fca22f39c4f73620e0f818ce2343e3e3164655950333e7203695a1ac0e4e3eb` |
| 7 | `theorem` | [smul_inv''](../../../../../GeneralAlgebraicSystems/AlgebraicStructures/GroupRingActionBasic.lean/declarations/smul-inv.md) | 99 | `result-track:0e8bd8824164a8bd069588eeb114b14471db317ee5ce1e92ba166f88e2597149` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=0aefba69c169bc4f3bcbfe52dbb3a52cb93f2bbfafe74d85106adf5d2b387a9f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Basic/Varianteb5dfb9b13831b054504b50e578446790e12bcafee8a480f839ade3ff1eb6cd0.lean","GRWTSK/_verification/specifications/Algebra/Basic/Varianteb5dfb9b13831b054504b50e578446790e12bcafee8a480f839ade3ff1eb6cd0.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
