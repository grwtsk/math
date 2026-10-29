# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.EnumerativeCombinatorics.CountingPrinciples.CellularCochainsAndArithmeticData.Variant1e9fbfd68666611d.FiniteCubicalBoundaryPredicates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6e9f38b34acd0e207cf05a970cce89aed82b2341",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean/index.md) · [Full source](../../../../../../../../CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6e9f38b34acd0e207cf05a970cce89aed82b2341`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Cellular.Cube` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsBoundaryCell](../../../../../../../../CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean/declarations/isboundarycell--5a125bcf68c96f0a8bfa3976.md) | 39 | `declaration-track:5a125bcf68c96f0a8bfa3976f3c1d4e4bebee98fdaeb1301f67b23b7419bf89d` |
| 2 | `def` | [IsInteriorCell](../../../../../../../../CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean/declarations/isinteriorcell--ea79c9ea7f60dc88817c7aa8.md) | 45 | `declaration-track:ea79c9ea7f60dc88817c7aa899aba5fb3ea87e19bdca9d117d013defab8c160a` |
| 3 | `abbrev` | [BoundaryShell](../../../../../../../../CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean/declarations/boundaryshell--27506cdb48c413acd8f86b07.md) | 51 | `declaration-track:27506cdb48c413acd8f86b07010f7eea9604d116b7ead62f11d10cb98fab9d15` |
| 4 | `theorem` | [boundary_or_not_boundary](../../../../../../../../CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean/declarations/boundary-or-not-boundary--0c7a7f24fe0eb57f88788624.md) | 54 | `result-track:0c7a7f24fe0eb57f887886247cf3a7e0439b7439cdeca5fd6b4d1d46d512a191` |
| 5 | `theorem` | [not_interior_of_boundary](../../../../../../../../CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean/declarations/not-interior-of-boundary--354eda1d410d75d22fff9e2c.md) | 61 | `result-track:354eda1d410d75d22fff9e2c660e4957e4cd392ef2045af1c3c28180f7b0c563` |
| 6 | `theorem` | [all_boundary_level_zero](../../../../../../../../CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean/declarations/all-boundary-level-zero--88d8cc1defd93878162b0a88.md) | 72 | `result-track:88d8cc1defd93878162b0a88e7c5821866d93665000959ccefde072406d521a5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a36fb6b3279dea6a7a3bdaab0a234e569bbb207605a67de221df2a6499ed4365 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/CountingPrinciples/CellularCochainsAndArithmeticData/Variant1e9fbfd68666611d/FiniteCubicalBoundaryPredicates.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
