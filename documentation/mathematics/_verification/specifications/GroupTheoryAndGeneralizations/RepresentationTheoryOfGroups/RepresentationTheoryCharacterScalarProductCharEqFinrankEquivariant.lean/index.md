# Verification target: Representation Theory Character Scalar Product Char Eq Finrank Equivariant

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e6d214ba15ae923d0a2f2b8284a9005ffd95bb19",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/index.md) · [Full source](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e6d214ba15ae923d0a2f2b8284a9005ffd95bb19`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RepresentationTheory.FDRep` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Trace` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RepresentationTheory.Invariants` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [character](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/declarations/character.md) | 48 | `declaration-track:43fdbc147a201967a247bd2269522d77be398024ea8cf9a77de9600a4f5d5f67` |
| 2 | `theorem` | [char_mul_comm](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/declarations/char-mul-comm.md) | 51 | `result-track:22319f7e57f13419371bd97bf4f13db507a536d81dce2abf6dbc57e0762b22a1` |
| 3 | `theorem` | [char_one](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/declarations/char-one.md) | 55 | `result-track:cb4ac942527e196ada0c75a2b88803e9e75ad6108bd516605685b68687422b1e` |
| 4 | `theorem` | [char_tensor](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/declarations/char-tensor.md) | 60 | `result-track:c87ebe95cb59c6a4b4d7b02bd4f9fb342b9b295fddcd94047610f4d5c311ee66` |
| 5 | `theorem` | [char_iso](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/declarations/char-iso.md) | 64 | `result-track:3e27fffd37c0c5e99a711f83a474b679e135a80f79ab9e3c3012d225e5cacd82` |
| 6 | `theorem` | [char_conj](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/declarations/char-conj.md) | 77 | `result-track:c2fb7a6c78d5695d6570fc5817ddc46bfc0661d5a6ca2a72e2a0fce64d1e967a` |
| 7 | `theorem` | [char_dual](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/declarations/char-dual.md) | 81 | `result-track:75bb6a412582a9e0c46e4bc92b03a0d6a222eab73b5c653f8cfdb22077bcacf0` |
| 8 | `theorem` | [char_linHom](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/declarations/char-linhom.md) | 85 | `result-track:872126f572e4c8a02b4e1954c778416fa15c482903343c007c92a7bf5478fe69` |
| 9 | `theorem` | [average_char_eq_finrank_invariants](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/declarations/average-char-eq-finrank-invariants.md) | 91 | `result-track:4520e787f0636c404374cfb669a8a552cb2947077c48527e47cb05d1d7d4529a` |
| 10 | `theorem` | [scalar_product_char_eq_finrank_equivariant](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/declarations/scalar-product-char-eq-finrank-equivariant.md) | 101 | `result-track:2e5a7967294764f6eba2b459a2fe5658a1c72e8491e2c37b22101444b00b887d` |
| 11 | `theorem` | [char_orthonormal](../../../../../GroupTheoryAndGeneralizations/RepresentationTheoryOfGroups/RepresentationTheoryCharacterScalarProductCharEqFinrankEquivariant.lean/declarations/char-orthonormal.md) | 124 | `result-track:730fb5db3feed7f2f7beb29a2a764b8f73c8d8bf30f204d0d2298cce5377bd60` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=8b095947abb51ad0a53152dc1ad8ec122375fde21d2cc4ece0a78f25bec6a50c -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean","GRWTSK/_verification/specifications/Algebra/LinearAlgebra/Character/Variantff9fba2668f2d45a00d54fe338575ae59463d13447f5e16831fd68c3748a043a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
