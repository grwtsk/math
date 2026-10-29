# Verification target: Profinite As Limit As Limit Namespaced Source Edition1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a5eb48f859f2d5318501db2a1a4bc7cb38355bf",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/AsLimit/Variante42f23dc7e3ef75f377ac275eb6b6be12090804f0495f3ad4d0f557366e1ec97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ProfiniteAsLimitAsLimitNamespacedSourceEdition1.lean/index.md) · [Full source](../../../../GeneralTopology/ProfiniteAsLimitAsLimitNamespacedSourceEdition1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a5eb48f859f2d5318501db2a1a4bc7cb38355bf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/AsLimit/Variante42f23dc7e3ef75f377ac275eb6b6be12090804f0495f3ad4d0f557366e1ec97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/AsLimit/Variante42f23dc7e3ef75f377ac275eb6b6be12090804f0495f3ad4d0f557366e1ec97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.Profinite.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.DiscreteQuotient` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fintypeDiagram](../../../../GeneralTopology/ProfiniteAsLimitAsLimitNamespacedSourceEdition1.lean/declarations/fintypediagram.md) | 53 | `declaration-track:53aea204bdcc5ec10b0e6186af5e20df0eadddf95e5d6609cf0e10866400544b` |
| 2 | `abbrev` | [diagram](../../../../GeneralTopology/ProfiniteAsLimitAsLimitNamespacedSourceEdition1.lean/declarations/diagram.md) | 63 | `declaration-track:6ab3cf940250ce07f59a5ac225d4f4f7c7ecafd187b82ef0ae5edcb7a355abaf` |
| 3 | `def` | [asLimitCone](../../../../GeneralTopology/ProfiniteAsLimitAsLimitNamespacedSourceEdition1.lean/declarations/aslimitcone.md) | 69 | `declaration-track:3ba09149ff75eacc4e9a5886ec63859cf264e8568938e740fcb100531fd414bf` |
| 4 | `instance` | [isIso_asLimitCone_lift](../../../../GeneralTopology/ProfiniteAsLimitAsLimitNamespacedSourceEdition1.lean/declarations/isiso-aslimitcone-lift.md) | 75 | `declaration-track:1d8adac846688b0b11a209ea97b04f79eabc3c7bbba1e085b2e168851bb7dc51` |
| 5 | `def` | [isoAsLimitConeLift](../../../../GeneralTopology/ProfiniteAsLimitAsLimitNamespacedSourceEdition1.lean/declarations/isoaslimitconelift.md) | 98 | `declaration-track:3a18b3c4d2ebbc011ced47391c2524a3dfb029d38ff950c62e0cda1ef168c0f3` |
| 6 | `def` | [asLimitConeIso](../../../../GeneralTopology/ProfiniteAsLimitAsLimitNamespacedSourceEdition1.lean/declarations/aslimitconeiso.md) | 106 | `declaration-track:81421222e68ba97e225974bbf643448f6b10df58003dda9fb57e2fb10e54159a` |
| 7 | `def` | [asLimit](../../../../GeneralTopology/ProfiniteAsLimitAsLimitNamespacedSourceEdition1.lean/declarations/aslimit.md) | 112 | `declaration-track:e99cbc97af33ff0cb13a95b1855262064662b6bc44285ebb6718aa0b4aaf2470` |
| 8 | `def` | [lim](../../../../GeneralTopology/ProfiniteAsLimitAsLimitNamespacedSourceEdition1.lean/declarations/lim.md) | 118 | `declaration-track:21c93bf825cea412e15e3233c73312d3919206a77468cb91dd7afce08d256873` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=755c997d02a3eb72a09969abd8b96fdda39dc62f9fbf91580a9d8f5cc90539e2 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/AsLimit/Variante42f23dc7e3ef75f377ac275eb6b6be12090804f0495f3ad4d0f557366e1ec97.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/AsLimit/Variante42f23dc7e3ef75f377ac275eb6b6be12090804f0495f3ad4d0f557366e1ec97.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
