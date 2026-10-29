# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.FlagRange.Variantd638073621123aef12cb62af5ed448c5fb36caf2e3ef958feafed4ee7489b300

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0562067cd454313d08da945f50bbc2a4d553ca5c",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantd638073621123aef12cb62af5ed448c5fb36caf2e3ef958feafed4ee7489b300.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantd638073621123aef12cb62af5ed448c5fb36caf2e3ef958feafed4ee7489b300.lean/index.md) · [Full source](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantd638073621123aef12cb62af5ed448c5fb36caf2e3ef958feafed4ee7489b300.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0562067cd454313d08da945f50bbc2a4d553ca5c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantd638073621123aef12cb62af5ed448c5fb36caf2e3ef958feafed4ee7489b300.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantd638073621123aef12cb62af5ed448c5fb36caf2e3ef958feafed4ee7489b300.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Fin.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Preorder.Chain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMaxChain.range_fin_of_covBy](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantd638073621123aef12cb62af5ed448c5fb36caf2e3ef958feafed4ee7489b300.lean/declarations/ismaxchain-range-fin-of-covby--49b062e8c29e10f913f3a6ff.md) | 30 | `result-track:49b062e8c29e10f913f3a6fff041cda51619d89b445c730958e6195398f9323f` |
| 2 | `def` | [Flag.rangeFin](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantd638073621123aef12cb62af5ed448c5fb36caf2e3ef958feafed4ee7489b300.lean/declarations/flag-rangefin--88049f1e08bb4e58ae8f5f32.md) | 50 | `declaration-track:88049f1e08bb4e58ae8f5f3275cee1c6af26827c97b756f73750115f0776889b` |
| 3 | `theorem` | [Flag.mem_rangeFin](../../../../../../CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantd638073621123aef12cb62af5ed448c5fb36caf2e3ef958feafed4ee7489b300.lean/declarations/flag-mem-rangefin--2fd6263e22d2c9ef07021ca3.md) | 56 | `result-track:2fd6263e22d2c9ef07021ca3491c2f17d9804d6f25dff97c5d8548f447a583cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=bc1d095d8e7c91048fc64a5df8db2092d78cbfd3a4647644197e0ea63ad0fca6 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantd638073621123aef12cb62af5ed448c5fb36caf2e3ef958feafed4ee7489b300.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/FlagRange/Variantd638073621123aef12cb62af5ed448c5fb36caf2e3ef958feafed4ee7489b300.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
