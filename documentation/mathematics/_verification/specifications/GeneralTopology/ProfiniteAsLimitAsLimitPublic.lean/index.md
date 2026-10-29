# Verification target: Profinite As Limit As Limit Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee0718e75058e3c865c24a8067a1960fd40efbda",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AsLimit/Variant010a018a92a26fb8c2d6575c5881818fafd64ab50ebce5d2cb9b8ab632c4de96.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../GeneralTopology/ProfiniteAsLimitAsLimitPublic.lean/index.md) · [Full source](../../../../GeneralTopology/ProfiniteAsLimitAsLimitPublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee0718e75058e3c865c24a8067a1960fd40efbda`.

Source path: `GRWTSK/Topology/GeneralTopology/AsLimit/Variant010a018a92a26fb8c2d6575c5881818fafd64ab50ebce5d2cb9b8ab632c4de96.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AsLimit/Variant010a018a92a26fb8c2d6575c5881818fafd64ab50ebce5d2cb9b8ab632c4de96.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fintypeDiagram](../../../../GeneralTopology/ProfiniteAsLimitAsLimitPublic.lean/declarations/fintypediagram.md) | 47 | `declaration-track:e4ad057dbbe85dcd4ec90e017cd47254f7f63da129d1a133a61397bc01f578cd` |
| 2 | `abbrev` | [diagram](../../../../GeneralTopology/ProfiniteAsLimitAsLimitPublic.lean/declarations/diagram.md) | 52 | `declaration-track:739700255bb2d72c6d5c83271bd348c421626febaeed6bcfea504e55664b3735` |
| 3 | `def` | [asLimitCone](../../../../GeneralTopology/ProfiniteAsLimitAsLimitPublic.lean/declarations/aslimitcone.md) | 56 | `declaration-track:cc5e5e7f857f7fd859e9b1605ca8ec85071afb6d633c82f2d7d63f5c6459d70a` |
| 4 | `instance` | [isIso_asLimitCone_lift](../../../../GeneralTopology/ProfiniteAsLimitAsLimitPublic.lean/declarations/isiso-aslimitcone-lift.md) | 62 | `declaration-track:3d011424a30d42f902cce883ca1109fd7576aad6fa9a0678e15dfbf009989bd4` |
| 5 | `def` | [isoAsLimitConeLift](../../../../GeneralTopology/ProfiniteAsLimitAsLimitPublic.lean/declarations/isoaslimitconelift.md) | 84 | `declaration-track:a05a751092362bfc48c83149eef099341f927024bbf8f8557e96ed7db9444a68` |
| 6 | `def` | [asLimitConeIso](../../../../GeneralTopology/ProfiniteAsLimitAsLimitPublic.lean/declarations/aslimitconeiso.md) | 90 | `declaration-track:ec2866115171f3d4885bdd8deff4d914fb95ad4db71a506c050d6f08e57d05f9` |
| 7 | `def` | [asLimit](../../../../GeneralTopology/ProfiniteAsLimitAsLimitPublic.lean/declarations/aslimit.md) | 94 | `declaration-track:af17a1c4de727a9b6bff9b66c026350fa543389281a5b59142880f8107373451` |
| 8 | `def` | [lim](../../../../GeneralTopology/ProfiniteAsLimitAsLimitPublic.lean/declarations/lim.md) | 98 | `declaration-track:35cbbb08271bfe3011d0578842ba11c543ac5422cece03886df524ed34e85ae5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=7d2815eccd9075f450ed5de224aecff2fcec0705b1010c5efe1447e42d99a6b5 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/GeneralTopology/AsLimit/Variant010a018a92a26fb8c2d6575c5881818fafd64ab50ebce5d2cb9b8ab632c4de96.lean","GRWTSK/_verification/specifications/Topology/GeneralTopology/AsLimit/Variant010a018a92a26fb8c2d6575c5881818fafd64ab50ebce5d2cb9b8ab632c4de96.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
