# Verification target: MUSPrimitive Obstruction Certificate

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4b528702b53a2f3f17db76841d3ba6f204ed3ec",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/MUSPrimitiveObstructionCertificate.lean/index.md) · [Full source](../../../../Combinatorics/MUSPrimitiveObstructionCertificate.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4b528702b53a2f3f17db76841d3ba6f204ed3ec`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/MUS/Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.Completion.Core` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrimitiveObstructionCertificate](../../../../Combinatorics/MUSPrimitiveObstructionCertificate.lean/declarations/primitiveobstructioncertificate.md) | 13 | `declaration-track:e7a2f098a089a78dd4a0558d53e52c7e603c0b14efb5c157efd4cd5022558030` |
| 2 | `structure` | [ProperDeletionWitness](../../../../Combinatorics/MUSPrimitiveObstructionCertificate.lean/declarations/properdeletionwitness.md) | 28 | `declaration-track:792f0593d19369e93c5ffdbacf1fd9a0ce9e823618b893af9ee87e41b8690f13` |
| 3 | `theorem` | [deletion_minimal_implies_proper_subset_feasible](../../../../Combinatorics/MUSPrimitiveObstructionCertificate.lean/declarations/deletion-minimal-implies-proper-subset-feasible.md) | 37 | `result-track:2a751d0e7a37c7577cb426518c721c81091cb5bac297df42b919475649a8ebb5` |
| 4 | `theorem` | [primitive_core_is_infeasible](../../../../Combinatorics/MUSPrimitiveObstructionCertificate.lean/declarations/primitive-core-is-infeasible.md) | 56 | `result-track:0b88b2cb4dee31b210d007df270c3e8fac084ad7cca51a47576a90042fe2b1da` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f15fdde7d9832e1c63db30a86d92f41ed856c97be1d8692c1e2646f7e61faab2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/MUS/Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/MUS/Variant24bea3dfca06137e7331287cd42f2c3fe414bdf3712f274ee21da7dedfa47799.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
