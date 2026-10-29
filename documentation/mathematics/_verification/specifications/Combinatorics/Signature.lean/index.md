# Verification target: Signature

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "099605dcd2909ab92c5e6f638ddba482a4a9c1ed",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Signature/Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/Signature.lean/index.md) · [Full source](../../../../Combinatorics/Signature.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `099605dcd2909ab92c5e6f638ddba482a4a9c1ed`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Signature/Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Signature/Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Mutation.Coverage` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [MutationCoordinate](../../../../Combinatorics/Signature.lean/declarations/mutationcoordinate.md) | 7 | `declaration-track:da56248888e27cd8eb3fbf88b70df0eb89d706d8c4be03ab877f54dd1f914346` |
| 2 | `structure` | [BoundaryCrossing](../../../../Combinatorics/Signature.lean/declarations/boundarycrossing.md) | 19 | `declaration-track:05f7ece8cf70f9332348f744509514ee531331428946b41c4388f472f47b2e60` |
| 3 | `def` | [causalCone](../../../../Combinatorics/Signature.lean/declarations/causalcone.md) | 26 | `declaration-track:bc1b35a8abbbbb5c6e22f9d955a5d3b2a9d3716ed8192e79de12b00852dfabd8` |
| 4 | `def` | [mutationFrontier](../../../../Combinatorics/Signature.lean/declarations/mutationfrontier.md) | 33 | `declaration-track:1cd0f2ae4744b5b44ff98a72cd989bca6124daff8b4cda6ec55c13d7b6e5ccf1` |
| 5 | `structure` | [MutationSignature](../../../../Combinatorics/Signature.lean/declarations/mutationsignature-source-edition-2.md) | 39 | `declaration-track:e553cd727e7f073d94dbacb460e5c25b88cd0a0923f9edc6bdd14aa2eb9e63c0` |
| 6 | `def` | [mutationSignature](../../../../Combinatorics/Signature.lean/declarations/mutationsignature.md) | 51 | `declaration-track:e23020ad8f540253fece0364ee84675dfc20d24177d75fa52be23cc0d81019ae` |
| 7 | `theorem` | [boundary_crossing_declares_law](../../../../Combinatorics/Signature.lean/declarations/boundary-crossing-declares-law.md) | 56 | `result-track:064847f2e32c76a43b1543101440fa4c6a7ab83aa4a77ef0cac11b17dd70e559` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=de3ff5291f6f3ad9ea10d0d6c05eafacb298e4d00dcd0b8516c5f62dc424ead7 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Signature/Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Signature/Variant9157733317353be9d5b187dfbd7b50cd06a0929a1ddb2faf982d55dfacdf980a.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
