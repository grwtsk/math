# Verification target: GRWTSK.Algebra.UniversalAlgebra.Instances.Variant4dec1c766de5c0828203356fda436d081ad9af69055733fa5f60005e1cad440d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c6ce3c880fda52179abc49be514572bd1bdf231",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Instances/Variant4dec1c766de5c0828203356fda436d081ad9af69055733fa5f60005e1cad440d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../Algebra/UniversalAlgebra/Instances/Variant4dec1c766de5c0828203356fda436d081ad9af69055733fa5f60005e1cad440d.lean/index.md) · [Full source](../../../../../../Algebra/UniversalAlgebra/Instances/Variant4dec1c766de5c0828203356fda436d081ad9af69055733fa5f60005e1cad440d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c6ce3c880fda52179abc49be514572bd1bdf231`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Instances/Variant4dec1c766de5c0828203356fda436d081ad9af69055733fa5f60005e1cad440d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Instances/Variant4dec1c766de5c0828203356fda436d081ad9af69055733fa5f60005e1cad440d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.EuclideanDomain.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Field.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Units.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Ring.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Init.Data.Int.Order` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Basic` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Order.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [Int.euclideanDomain](../../../../../../Algebra/UniversalAlgebra/Instances/Variant4dec1c766de5c0828203356fda436d081ad9af69055733fa5f60005e1cad440d.lean/declarations/int-euclideandomain--ffe4927af1716e5501dd3aa0.md) | 31 | `declaration-track:ffe4927af1716e5501dd3aa0df5d212f558fddfbbe49b2f6e96a114214b79a52` |
| 2 | `instance` | [(anonymous)](../../../../../../Algebra/UniversalAlgebra/Instances/Variant4dec1c766de5c0828203356fda436d081ad9af69055733fa5f60005e1cad440d.lean/declarations/instance--a15709a899de7f7012fc5ec4.md) | 49 | `declaration-track:a15709a899de7f7012fc5ec49311ede286275da3d425697d5411a4945a7b1c26` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7f82b1d690d50f33514c6d4f126c9e0b6a553d2027182306f8a89a472c856dab -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/UniversalAlgebra/Instances/Variant4dec1c766de5c0828203356fda436d081ad9af69055733fa5f60005e1cad440d.lean","GRWTSK/_verification/specifications/Algebra/UniversalAlgebra/Instances/Variant4dec1c766de5c0828203356fda436d081ad9af69055733fa5f60005e1cad440d.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
