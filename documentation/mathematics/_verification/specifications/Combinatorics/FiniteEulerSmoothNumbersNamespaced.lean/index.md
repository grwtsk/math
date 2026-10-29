# Verification target: Finite Euler Smooth Numbers Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0722869f6c617cb2b601d0960e6f045997fef2c1",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variant172c89e2d57aeb5ab4f4227ddb1564778b37de8e4d9496ec787afd228e5835cf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/FiniteEulerSmoothNumbersNamespaced.lean/index.md) · [Full source](../../../../Combinatorics/FiniteEulerSmoothNumbersNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0722869f6c617cb2b601d0960e6f045997fef2c1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variant172c89e2d57aeb5ab4f4227ddb1564778b37de8e4d9496ec787afd228e5835cf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variant172c89e2d57aeb5ab4f4227ddb1564778b37de8e4d9496ec787afd228e5835cf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Rebuild.AnalyticNumberTheory.FiniteEulerExponentVectors` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [exponentVectorNat](../../../../Combinatorics/FiniteEulerSmoothNumbersNamespaced.lean/declarations/exponentvectornat.md) | 23 | `declaration-track:ac2bf95e57e50e274ead88b2458ddba28aa900949f2ec695454b779bfa865929` |
| 2 | `theorem` | [exponentVectorNat_pos](../../../../Combinatorics/FiniteEulerSmoothNumbersNamespaced.lean/declarations/exponentvectornat-pos.md) | 29 | `result-track:c3c34df61986d4e9a69e494d626e05223be80d39854177fb818bac0d2429e14b` |
| 3 | `def` | [boundedSmoothNumbers](../../../../Combinatorics/FiniteEulerSmoothNumbersNamespaced.lean/declarations/boundedsmoothnumbers.md) | 38 | `declaration-track:3eb7194317c1e291538418752e2a7c58ffaace90377b807885f3d651048d9937` |
| 4 | `theorem` | [exponentVectorNat_mem_boundedSmoothNumbers](../../../../Combinatorics/FiniteEulerSmoothNumbersNamespaced.lean/declarations/exponentvectornat-mem-boundedsmoothnumbers.md) | 45 | `result-track:31f93a1fa95c9d4065f86edd9f2103fc3a9551b76d334ae90dc7740dec6b9d00` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=f8cc0643f190f86d6b2a7eb0888f1aeaa6dc061980d23414c165ad3441814ebd -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variant172c89e2d57aeb5ab4f4227ddb1564778b37de8e4d9496ec787afd228e5835cf.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/FiniteEulerSmoothNumbers/Variant172c89e2d57aeb5ab4f4227ddb1564778b37de8e4d9496ec787afd228e5835cf.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
