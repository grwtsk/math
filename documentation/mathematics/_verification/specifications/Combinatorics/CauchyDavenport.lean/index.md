# Verification target: Cauchy Davenport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a3037c1624ac91e22895e3374a30ed196f14dae4",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/CauchyDavenport/Variant708c171142d162ba98e2b11e697ba7cdcd7127ce88c5d13a177d060a2091bd4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/CauchyDavenport.lean/index.md) · [Full source](../../../../Combinatorics/CauchyDavenport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a3037c1624ac91e22895e3374a30ed196f14dae4`.

Source path: `GRWTSK/Algebra/GroupTheory/CauchyDavenport/Variant708c171142d162ba98e2b11e697ba7cdcd7127ce88c5d13a177d060a2091bd4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/CauchyDavenport/Variant708c171142d162ba98e2b11e697ba7cdcd7127ce88c5d13a177d060a2091bd4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Combinatorics.Additive.ETransform` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Order.Min` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [DevosMulRel](../../../../Combinatorics/CauchyDavenport.lean/declarations/devosmulrel.md) | 73 | `declaration-track:12488d47391824b3738450ccf6c62cbff1d88f25122d72480ab9e5ae5b476d21` |
| 2 | `lemma` | [devosMulRel_iff](../../../../Combinatorics/CauchyDavenport.lean/declarations/devosmulrel-iff.md) | 77 | `result-track:bae64268d551d5a63b859ec17519ba95400cb970a8da85b1d57cb20bd5757163` |
| 3 | `lemma` | [devosMulRel_of_le](../../../../Combinatorics/CauchyDavenport.lean/declarations/devosmulrel-of-le.md) | 85 | `result-track:b1d1922aae9d86eb59139454a41eefd2d37068437855494f7544bf77583d7a92` |
| 4 | `lemma` | [devosMulRel_of_le_of_le](../../../../Combinatorics/CauchyDavenport.lean/declarations/devosmulrel-of-le-of-le.md) | 90 | `result-track:764ddd89f0cb19261fc2aaf57c956509b6a57dc12854aed4e74d9ee9008db59b` |
| 5 | `lemma` | [wellFoundedOn_devosMulRel](../../../../Combinatorics/CauchyDavenport.lean/declarations/wellfoundedon-devosmulrel.md) | 96 | `result-track:d98174fd37f35cce352b657473c6986129c8ef0032dc25f06d816ea189794888` |
| 6 | `lemma` | [cauchy_davenport_minOrder_mul](../../../../Combinatorics/CauchyDavenport.lean/declarations/cauchy-davenport-minorder-mul.md) | 112 | `result-track:e29b3c64082e7c15f594b7d89c09f2318e57ccdaabc86fb8e7702c50f9c853f9` |
| 7 | `lemma` | [cauchy_davenport_mul_of_isTorsionFree](../../../../Combinatorics/CauchyDavenport.lean/declarations/cauchy-davenport-mul-of-istorsionfree.md) | 184 | `result-track:60a6383a3a7326a4f52331f67c832eda2b749f397d479ce11e05d738652858af` |
| 8 | `lemma` | [ZMod.cauchy_davenport](../../../../Combinatorics/CauchyDavenport.lean/declarations/zmod-cauchy-davenport.md) | 195 | `result-track:727a52d159b7efe9f1227a4d3ecd516b37fa226c7b65576456fff2d9c3d260ac` |
| 9 | `lemma` | [cauchy_davenport_mul_of_linearOrder_isCancelMul](../../../../Combinatorics/CauchyDavenport.lean/declarations/cauchy-davenport-mul-of-linearorder-iscancelmul.md) | 207 | `result-track:8926c30bf1b8c9ce3e128169cbb0c50a0e013cf7cd2bad71becbb888a1db1aa4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=2e59e9e14aca02de7ad9a380b686422e0bf27ae8dc919c992f3fbc9676e5d817 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Algebra/GroupTheory/CauchyDavenport/Variant708c171142d162ba98e2b11e697ba7cdcd7127ce88c5d13a177d060a2091bd4c.lean","GRWTSK/_verification/specifications/Algebra/GroupTheory/CauchyDavenport/Variant708c171142d162ba98e2b11e697ba7cdcd7127ce88c5d13a177d060a2091bd4c.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
