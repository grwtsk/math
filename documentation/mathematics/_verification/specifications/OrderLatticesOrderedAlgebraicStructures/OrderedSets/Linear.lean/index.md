# Verification target: Linear

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8d8565643e9e231b4195f21deb38f121a36fabf6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variantca6ea0b6fd3c2088e14cc7f4c9eb721ae5a028b9115ff683a4aadf007a42b852.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Linear.lean/index.md) · [Full source](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Linear.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8d8565643e9e231b4195f21deb38f121a36fabf6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variantca6ea0b6fd3c2088e14cc7f4c9eb721ae5a028b9115ff683a4aadf007a42b852.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variantca6ea0b6fd3c2088e14cc7f4c9eb721ae5a028b9115ff683a4aadf007a42b852.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Zorn` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [extend_partialOrder](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Linear.lean/declarations/extend-partialorder.md) | 21 | `result-track:c6f8db7956938cbbea220859e87cffd4a66a9e1cfc45345840fe0c975cd59073` |
| 2 | `def` | [LinearExtension](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Linear.lean/declarations/linearextension.md) | 72 | `declaration-track:3b2c95cfe2e65d1c522a8108df13ce3cdcb47a58e21bc4571be11a76661e6c55` |
| 3 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Linear.lean/declarations/instance-source-edition-2.md) | 75 | `declaration-track:2b64531d87362076336dbd0686889993addd279ccd796f4788714a6b569b4ff0` |
| 4 | `def` | [toLinearExtension](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Linear.lean/declarations/tolinearextension.md) | 84 | `declaration-track:9ba6245eeb40cc1cda6a9b20f7d1809bff5b5aa969fe8de3f5db18f35e46d459` |
| 5 | `instance` | [(anonymous)](../../../../../OrderLatticesOrderedAlgebraicStructures/OrderedSets/Linear.lean/declarations/instance.md) | 88 | `declaration-track:1d8d53ad4297a494f25321995285598ba7481ce4e34170d5b870ef5b56094fce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2567f1313f475fab276fb5151e5b962cd3b2055942eb5deb72165d09dcc8bc68 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variantca6ea0b6fd3c2088e14cc7f4c9eb721ae5a028b9115ff683a4aadf007a42b852.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Linear/Variantca6ea0b6fd3c2088e14cc7f4c9eb721ae5a028b9115ff683a4aadf007a42b852.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
