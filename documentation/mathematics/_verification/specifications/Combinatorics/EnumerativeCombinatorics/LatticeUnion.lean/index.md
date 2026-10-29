# Verification target: Lattice Union

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6461f69444eb85e88f55fe4a1232239b79a015e0",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Union/Variant4b21b9810453142c6d68afb225fe650403f7be8b5ba7b8c441c9af078e07417b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeUnion.lean/index.md) · [Full source](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeUnion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6461f69444eb85e88f55fe4a1232239b79a015e0`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Union/Variant4b21b9810453142c6d68afb225fe650403f7be8b5ba7b8c441c9af078e07417b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Union/Variant4b21b9810453142c6d68afb225fe650403f7be8b5ba7b8c441c9af078e07417b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Union` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sup_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeUnion.lean/declarations/sup-biunion.md) | 31 | `result-track:7e153b23b126f4c0d3ff18ece99734ab8130fea79ef855fa4094c5469fefa41b` |
| 2 | `theorem` | [inf_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeUnion.lean/declarations/inf-biunion-source-edition-2.md) | 41 | `result-track:d25ecb131e559e112138955e57b4720ad98ba7d34fb938f43846a0997846c3bf` |
| 3 | `theorem` | [sup'_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeUnion.lean/declarations/sup-biunion-source-edition-2.md) | 53 | `result-track:834b0f9320e3effd7967a02a452f2f4030a698c997115ff768c1944041ba5774` |
| 4 | `theorem` | [inf'_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeUnion.lean/declarations/inf-biunion.md) | 66 | `result-track:15495973faed196267214a9d7cd59df26044a2ab6c6f7da2ae16029bddb15474` |
| 5 | `theorem` | [sup_eq_biUnion](../../../../../Combinatorics/EnumerativeCombinatorics/LatticeUnion.lean/declarations/sup-eq-biunion.md) | 75 | `result-track:6e8f083c300f2946a011adac49a8ea63e8b6c9277b139eac42cc225ecec7692c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=6aa855eb38bcf2d604a374d9c74692d2c085f84880a4bdfd9676a6f8599e36e6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Union/Variant4b21b9810453142c6d68afb225fe650403f7be8b5ba7b8c441c9af078e07417b.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Union/Variant4b21b9810453142c6d68afb225fe650403f7be8b5ba7b8c441c9af078e07417b.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
