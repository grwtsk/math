# Verification target: GRWTSK.Algebra.Internalize.Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ae846b6afe574f59a0f263080cd5559c4d206447",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/index.md) · [Full source](../../../../../Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ae846b6afe574f59a0f263080cd5559c4d206447`.

Source path: `GRWTSK/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Grind.Simp` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.Util` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.Reify` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.Tactic.Grind.Arith.CommRing.DenoteExpr` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getType?](../../../../../Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/declarations/gettype--bc22c9a6eec3c5881632e5b0.md) | 17 | `declaration-track:bc22c9a6eec3c5881632e5b08869e1a34e2e55a26b9bb13a273655264c11c51a` |
| 2 | `def` | [isForbiddenParent](../../../../../Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/declarations/isforbiddenparent--98a2c018044785dd269c64a6.md) | 36 | `declaration-track:98a2c018044785dd269c64a6bde0225dddadfb47caeccd4e2072cdbf7accd490` |
| 3 | `def` | [toInt?](../../../../../Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/declarations/toint--0fb94196ff81422045459689.md) | 53 | `declaration-track:0fb94196ff81422045459689baa5083808a09adbcc147b7ab37077aabde15319` |
| 4 | `def` | [isInvInst](../../../../../Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/declarations/isinvinst--14c18bf4f0413025616c021b.md) | 70 | `declaration-track:14c18bf4f0413025616c021b3bb5dce4217db4c7f1e368063d40038e813214a5` |
| 5 | `def` | [processInv](../../../../../Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/declarations/processinv--a4f21b47b7aeb6cd670190e9.md) | 79 | `declaration-track:a4f21b47b7aeb6cd670190e9c65a647dc651a224c5bcdf29e575074840774dce` |
| 6 | `def` | [processPowIdentityVars](../../../../../Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/declarations/processpowidentityvars--7ffb11fdfd3edfa821579544.md) | 119 | `declaration-track:7ffb11fdfd3edfa821579544f7c1b38cf646ed0e5e6eb3002d7694bb58bca657` |
| 7 | `def` | [internalizeInv](../../../../../Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/declarations/internalizeinv--62381f2fda72b4d74ad5267f.md) | 135 | `declaration-track:62381f2fda72b4d74ad5267ff3006a297dc28dbdc08b746829dd9ede3ad11109` |
| 8 | `def` | [internalize](../../../../../Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean/declarations/internalize--e2b9492f1ed0890d6a8eb40a.md) | 143 | `declaration-track:e2b9492f1ed0890d6a8eb40a6d1b887038c96af746a978109e065e00748292ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=4403272a9fb6c40a6249830c6ce8a50644d329a5cb2e3e1f1c54a418ba5d578b -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean","GRWTSK/_verification/specifications/Algebra/Internalize/Variantaead77c4d2d335e3fffb7647d38c089d86ca46e94ae83e8832a524153a022c2a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
