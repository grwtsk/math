# Verification target: Audit Hierarchy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19db6dd103dd310f3e748793d843f394370f121c",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variant3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/AuditHierarchy.lean/index.md) · [Full source](../../../../Combinatorics/AuditHierarchy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19db6dd103dd310f3e748793d843f394370f121c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variant3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variant3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Projection.MonoHierarchy` — import line 1; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.PolyHierarchy` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [RankedAuditHierarchy](../../../../Combinatorics/AuditHierarchy.lean/declarations/rankedaudithierarchy.md) | 22 | `declaration-track:5bce763c081d555850dd3d2d755a5bd168a34de9db7b556ff0467a09f6ca5a86` |
| 2 | `def` | [ParentStep](../../../../Combinatorics/AuditHierarchy.lean/declarations/parentstep.md) | 40 | `declaration-track:763e9bd3c520568599ecca25530497fa88cd044046d85c68386140097de246da` |
| 3 | `theorem` | [unique_parent](../../../../Combinatorics/AuditHierarchy.lean/declarations/unique-parent.md) | 46 | `result-track:d947f0c1a611498cee10c7fea4791c81f586b1358edcbf7eef157320361e40f3` |
| 4 | `theorem` | [root_parent_absent](../../../../Combinatorics/AuditHierarchy.lean/declarations/root-parent-absent.md) | 58 | `result-track:83b7bc0be492070fe60d4993d557af83c41990e343a49286f95586986ee33a5e` |
| 5 | `theorem` | [parent_rank_lt](../../../../Combinatorics/AuditHierarchy.lean/declarations/parent-rank-lt.md) | 70 | `result-track:fd5a09b455fd3c3c36675fcc6344e579600ea34e2b326ca304056327b72f2267` |
| 6 | `theorem` | [no_self_parent](../../../../Combinatorics/AuditHierarchy.lean/declarations/no-self-parent.md) | 78 | `result-track:ac465baa92a11e9be5e2ba473f8dae025ec8315194554f5f0a887744824e27d0` |
| 7 | `theorem` | [parent_wellFounded](../../../../Combinatorics/AuditHierarchy.lean/declarations/parent-wellfounded.md) | 87 | `result-track:0171c23d7017cebb3015c3abb0660c22a4063766a924482dafa3bd81a35524fb` |
| 8 | `inductive` | [AuditNodeClass](../../../../Combinatorics/AuditHierarchy.lean/declarations/auditnodeclass.md) | 97 | `declaration-track:9e0cca739fb84df1bb01110cd586f158cd501d662fec3482ea63a0d9eafbede6` |
| 9 | `inductive` | [AuditRelationKind](../../../../Combinatorics/AuditHierarchy.lean/declarations/auditrelationkind.md) | 114 | `declaration-track:f538f618d06486479b6e370c99fb04edcede17e3bcc84fde090e288cb9f9d363` |
| 10 | `def` | [AuditRelationAdmissible](../../../../Combinatorics/AuditHierarchy.lean/declarations/auditrelationadmissible.md) | 136 | `declaration-track:b2166f174be1fef826f4ed0ee5a304d66e50960ace5d72e326e2c94faf49292f` |
| 11 | `def` | [auditRelationSignature](../../../../Combinatorics/AuditHierarchy.lean/declarations/auditrelationsignature.md) | 159 | `declaration-track:9726eb3e072190e81504a5e8a2e46a2696a65ce4bcbe8b913d5564fc7b64db7c` |
| 12 | `structure` | [AuditRelationLedger](../../../../Combinatorics/AuditHierarchy.lean/declarations/auditrelationledger.md) | 175 | `declaration-track:12f0e7c92b01f025605cddfd6eb036e3fabb430c36003336652856ad7f2b0c4d` |
| 13 | `structure` | [AuditTopology](../../../../Combinatorics/AuditHierarchy.lean/declarations/audittopology.md) | 188 | `declaration-track:6ae5755984a853cf8b25b3ca9ab5a16fef06cba939f43b2fa1a66838d5deac8e` |
| 14 | `structure` | [CanonicalParentObservation](../../../../Combinatorics/AuditHierarchy.lean/declarations/canonicalparentobservation.md) | 193 | `declaration-track:c74cb7d5c59b1400c6d601f05b29d02301549f877ad30827015335dd9cd5e7ae` |
| 15 | `structure` | [CrossCuttingObservation](../../../../Combinatorics/AuditHierarchy.lean/declarations/crosscuttingobservation.md) | 201 | `declaration-track:a7be896c5876ebc8c76a280450ce82a557c70e2891dae02cb5deea7315c6dc59` |
| 16 | `inductive` | [AuditEdgeObservation](../../../../Combinatorics/AuditHierarchy.lean/declarations/auditedgeobservation.md) | 213 | `declaration-track:7f0f4472f67d1708fad36c0882776f4ba7a0810002b3951c22efec029dca0dbe` |
| 17 | `theorem` | [cross_cutting_is_not_canonical](../../../../Combinatorics/AuditHierarchy.lean/declarations/cross-cutting-is-not-canonical.md) | 224 | `result-track:f657622cb3245d60f4f193a4767a7b9c893b3a5d3c1f02b272c2371ce4854db7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=9d97321048ddeb3cc92c227360bbb04570eeb524cc96fb37fc6ce3c1b53fff3e -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variant3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/AuditHierarchy/Variant3a0347cabf296ce60fecb8d36fc54894a115fd7a62f1b78f23fffa3b2a4cd8e1.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
