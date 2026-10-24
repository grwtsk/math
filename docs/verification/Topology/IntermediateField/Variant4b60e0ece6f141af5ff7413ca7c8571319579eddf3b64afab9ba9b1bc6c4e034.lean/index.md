# Verification target: GRWTSK.Topology.IntermediateField.Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "63265f9b3bf9189e27c407663b652fab71eceba0",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/IntermediateField/Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/IntermediateField/Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034.lean/index.md) · [Full source](../../../../mathematics/Topology/IntermediateField/Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `63265f9b3bf9189e27c407663b652fab71eceba0`.

Source path: `GRWTSK/Topology/IntermediateField/Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/IntermediateField/Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.IntermediateField.Adjoin.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [IntermediateField.continuousSMul](../../../../mathematics/Topology/IntermediateField/Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034.lean/declarations/intermediatefield-continuoussmul--fb069046bc3a9c36c3458f29.md) | 23 | `declaration-track:fb069046bc3a9c36c3458f29ceeacaf64df30f752e5548d0ea56b3570100c108` |
| 2 | `instance` | [IntermediateField.botContinuousSMul](../../../../mathematics/Topology/IntermediateField/Variant4b60e0ece6f141af5ff7413ca7c8571319579eddf3b64afab9ba9b1bc6c4e034.lean/declarations/intermediatefield-botcontinuoussmul--24e36fe67c450fe6b1a24846.md) | 26 | `declaration-track:24e36fe67c450fe6b1a24846d277d8c4b6af06bec839f9fc8045d65519e630af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
