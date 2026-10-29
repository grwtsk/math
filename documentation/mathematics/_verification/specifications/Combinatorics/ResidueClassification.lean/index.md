# Verification target: Residue Classification

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d8a823b2050b5d420a9b51696781fa094ac3399",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ResidueClassification.lean/index.md) · [Full source](../../../../Combinatorics/ResidueClassification.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d8a823b2050b5d420a9b51696781fa094ac3399`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.NeuralDiffusion.RoutingResidue` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [NamedIncidenceAnchor](../../../../Combinatorics/ResidueClassification.lean/declarations/namedincidenceanchor.md) | 31 | `declaration-track:fdf6c09dc63d1d8b9e62b31462d11a5f6ffcb5760c6ec50c8db5849e1e3df13a` |
| 2 | `structure` | [ResidueWorkItem](../../../../Combinatorics/ResidueClassification.lean/declarations/residueworkitem.md) | 43 | `declaration-track:3c50ed3b1d73740bf83cbcea87686371dda02a442384f57da6762c1e1a9f5e59` |
| 3 | `inductive` | [ClassificationCustodian](../../../../Combinatorics/ResidueClassification.lean/declarations/classificationcustodian.md) | 55 | `declaration-track:d206210671ffa4617ce2544e2a7e0d90023d5301af0583b72954b8cd2268daed` |
| 4 | `structure` | [ClassificationProposal](../../../../Combinatorics/ResidueClassification.lean/declarations/classificationproposal.md) | 65 | `declaration-track:afaaa39331c54975a72850bf25a7963769ea1aac3e9a8c06977f8b00117cb7f4` |
| 5 | `structure` | [Backpropagation](../../../../Combinatorics/ResidueClassification.lean/declarations/backpropagation.md) | 79 | `declaration-track:270aa2e8849db7be013424dc9a9a400d2b2b0e5e981c933f45691559f5c7ae4e` |
| 6 | `structure` | [PersistedHandoff](../../../../Combinatorics/ResidueClassification.lean/declarations/persistedhandoff.md) | 99 | `declaration-track:524f54a718e3ea6aa41b6aff9a410e907506640e5918ac2e518e0e8435b8eab1` |
| 7 | `structure` | [CertifiedResidueSplit](../../../../Combinatorics/ResidueClassification.lean/declarations/certifiedresiduesplit.md) | 113 | `declaration-track:d8868af59ebbde957fd4114a68d63f3dfb1e4bec01339f755ed2414d3ab452c5` |
| 8 | `def` | [ResidueWorkItem.activationRequired](../../../../Combinatorics/ResidueClassification.lean/declarations/residueworkitem-activationrequired.md) | 131 | `declaration-track:9abf0bb2f7c2264d7eff15d1288386f8626f46e6e94abd6ea99d773ab73c6fae` |
| 9 | `theorem` | [residue_work_activates](../../../../Combinatorics/ResidueClassification.lean/declarations/residue-work-activates.md) | 137 | `result-track:4c82d8db49f7eaae07501c9d21d6b0bbe7f97a2fdaad5526c3bcf1a8841b9ece` |
| 10 | `def` | [NamedIncidenceAnchor.activationRequired](../../../../Combinatorics/ResidueClassification.lean/declarations/namedincidenceanchor-activationrequired.md) | 145 | `declaration-track:c3f1390f1314f8ad2be1c539fe5fc458d2701ba0fc85e5202b483b895fe96fa5` |
| 11 | `theorem` | [named_incidence_anchor_does_not_activate](../../../../Combinatorics/ResidueClassification.lean/declarations/named-incidence-anchor-does-not-activate.md) | 150 | `result-track:910b621715955c82a886bcdc06ac7ad838f8b8d7fa6da9f451b9ab3c6d1e90df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6c7e914c2cabcaa5551923a7ae58e8a14446fb959cc5d5dd05cd48834febe6f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
