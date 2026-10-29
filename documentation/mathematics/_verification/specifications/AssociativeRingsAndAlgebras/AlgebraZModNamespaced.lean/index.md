# Verification target: Algebra ZMod Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9ed49a1f7143ed8d5b757077cc651030f81d2e18",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/ZMod/Variant5333f3f74fa0db3f42321e2c0a526dadb31f73fb7439725dcdcb16106fb3f6f9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AssociativeRingsAndAlgebras/AlgebraZModNamespaced.lean/index.md) · [Full source](../../../../AssociativeRingsAndAlgebras/AlgebraZModNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9ed49a1f7143ed8d5b757077cc651030f81d2e18`.

Source path: `GRWTSK/Algebra/ZMod/Variant5333f3f74fa0db3f42321e2c0a526dadb31f73fb7439725dcdcb16106fb3f6f9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/ZMod/Variant5333f3f74fa0db3f42321e2c0a526dadb31f73fb7439725dcdcb16106fb3f6f9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../AssociativeRingsAndAlgebras/AlgebraZModNamespaced.lean/declarations/instance.md) | 27 | `declaration-track:2692bb70df3c75a4289fa79b56939090a532906c34a8e116ba1703f282d53010` |
| 2 | `abbrev` | [algebra'](../../../../AssociativeRingsAndAlgebras/AlgebraZModNamespaced.lean/declarations/algebra.md) | 36 | `declaration-track:1c57c2a6f03a4f5f7579b78ad8aae884d7d22f42c0244aafb8ecc065649f0702` |
| 3 | `abbrev` | [algebra](../../../../AssociativeRingsAndAlgebras/AlgebraZModNamespaced.lean/declarations/algebra-source-edition-2.md) | 51 | `declaration-track:b1aabd1dc62ff3a0b482a2db2aeedb5915e5f436fa1428229d0c4d6491df253c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f2bd67515d0925391876cb88432f8d3c2d7fc53ae083a00211b7aa156f7aae42 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/ZMod/Variant5333f3f74fa0db3f42321e2c0a526dadb31f73fb7439725dcdcb16106fb3f6f9.lean","GRWTSK/_verification/specifications/Algebra/ZMod/Variant5333f3f74fa0db3f42321e2c0a526dadb31f73fb7439725dcdcb16106fb3f6f9.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
