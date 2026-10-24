# Verification target: GRWTSK.Topology.PUnit.Variant1fc5ef508359d295136bf25b941720a03aa70280cf971192e819428e7f4dc64e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "015af8c8104d278d7b79233c0570b4221dc133a2",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/PUnit/Variant1fc5ef508359d295136bf25b941720a03aa70280cf971192e819428e7f4dc64e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/PUnit/Variant1fc5ef508359d295136bf25b941720a03aa70280cf971192e819428e7f4dc64e.lean/index.md) · [Full source](../../../../mathematics/Topology/PUnit/Variant1fc5ef508359d295136bf25b941720a03aa70280cf971192e819428e7f4dc64e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `015af8c8104d278d7b79233c0570b4221dc133a2`.

Source path: `GRWTSK/Topology/PUnit/Variant1fc5ef508359d295136bf25b941720a03aa70280cf971192e819428e7f4dc64e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/PUnit/Variant1fc5ef508359d295136bf25b941720a03aa70280cf971192e819428e7f4dc64e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Sheaves.SheafCondition.Sites` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isSheaf_of_isTerminal_of_indiscrete](../../../../mathematics/Topology/PUnit/Variant1fc5ef508359d295136bf25b941720a03aa70280cf971192e819428e7f4dc64e.lean/declarations/issheaf-of-isterminal-of-indiscrete--5f18c2421ec05f00063c0363.md) | 31 | `result-track:5f18c2421ec05f00063c036380276eb0ef8cc1efa5bd679b3c19337238b206d5` |
| 2 | `theorem` | [isSheaf_iff_isTerminal_of_indiscrete](../../../../mathematics/Topology/PUnit/Variant1fc5ef508359d295136bf25b941720a03aa70280cf971192e819428e7f4dc64e.lean/declarations/issheaf-iff-isterminal-of-indiscrete--bb264118f8dd0f5fcefbd18f.md) | 50 | `result-track:bb264118f8dd0f5fcefbd18f8bab9bb5e6e003443a1ae4128c1d305bd396ea43` |
| 3 | `theorem` | [isSheaf_on_punit_of_isTerminal](../../../../mathematics/Topology/PUnit/Variant1fc5ef508359d295136bf25b941720a03aa70280cf971192e819428e7f4dc64e.lean/declarations/issheaf-on-punit-of-isterminal--1c08c9f39d1d309a7d40c11a.md) | 55 | `result-track:1c08c9f39d1d309a7d40c11a532240db503963495a2a0618c73b78d8578bd3dc` |
| 4 | `theorem` | [isSheaf_on_punit_iff_isTerminal](../../../../mathematics/Topology/PUnit/Variant1fc5ef508359d295136bf25b941720a03aa70280cf971192e819428e7f4dc64e.lean/declarations/issheaf-on-punit-iff-isterminal--adff886da9cb254f4fed91cc.md) | 59 | `result-track:adff886da9cb254f4fed91cc4ba5cc240c6f7db7e754aac44c13ea08a47bbe3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
