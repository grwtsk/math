# Verification target: Bitfield Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c082b15d9acfaa3d822c5bdba737217a2f347d5f",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/index.md) · [Full source](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c082b15d9acfaa3d822c5bdba737217a2f347d5f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Std` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SpectralId](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/spectralid.md) | 22 | `declaration-track:633f57e92cac33ab389366a8bad52701e08cbb2cabc1ccec66319de95ae44f89` |
| 2 | `abbrev` | [Bitfield](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/bitfield.md) | 23 | `declaration-track:537ca8c6bdbf01f75c3e5b81d169a449012282c68d5d53bea2fee783ecce768e` |
| 3 | `inductive` | [ProofDisposition](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/proofdisposition.md) | 25 | `declaration-track:2eb8c1a0c33448a455ad1511996b660a67aa2d7a891e85b7c4c3fb56ff5ef062` |
| 4 | `inductive` | [CoordinateAuthority](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/coordinateauthority.md) | 31 | `declaration-track:08d888f9a33968e50cb64837f7866681cc92369829d2e3b61522be35a5b45d19` |
| 5 | `inductive` | [WeightKind](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/weightkind.md) | 37 | `declaration-track:24835da775b1c0e5e3e59dabaf37706cae24724462a71e13af005476a30fbfaf` |
| 6 | `structure` | [BitCoordinate](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/bitcoordinate.md) | 46 | `declaration-track:0ad5ca80687006e29138ce55165387312f6ddbde965b58fde9d1639e19983d13` |
| 7 | `structure` | [CoordinateRegistry](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/coordinateregistry.md) | 61 | `declaration-track:dd8cdcca562648dd1df0c4574c6a39890c945598971bc810c14ed48f453445f4` |
| 8 | `def` | [AdmissibilityMask](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/admissibilitymask.md) | 65 | `declaration-track:a57c1662fee2f9bb815afa3ed93da081c811aff5ddcbf1b6f2981b3957c829c9` |
| 9 | `def` | [flipAt](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/flipat.md) | 68 | `declaration-track:257f2ba5648119bad386b4c100752276e7161f52f3d2f4f888eba7ea69f97aaa` |
| 10 | `theorem` | [flipAt_selected](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/flipat-selected.md) | 76 | `result-track:be1685704d2e31b5435be2bfbb102d8ddef7d4dc264d21f00a2bba4f1f3ce0aa` |
| 11 | `theorem` | [flipAt_other](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/flipat-other.md) | 83 | `result-track:b3569071acea7bfaa10934c17dbd9287cac215057d1a8c83ec92057dfa52f45e` |
| 12 | `theorem` | [flipAt_involutive](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/flipat-involutive.md) | 91 | `result-track:0ee407340f7185e2924a2ef5f5f35ce878ea3bf6dad24bf14a095addbf37f87d` |
| 13 | `theorem` | [every_coordinate_has_registered_semantics](../../../../FunctionalAnalysis/BitfieldNamespaced.lean/declarations/every-coordinate-has-registered-semantics.md) | 102 | `result-track:313aceb433ce45f6bfa51b37ed6b770ccb0e9d16f8790cc5caea0a6674a0b85e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=24d7f6d7daf70900256f49136f9e24a68709dc84c5b4438b981beacfdd17adbe -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean","GRWTSK/_verification/specifications/Analysis/FunctionalAnalysis/Bitfield/Variant098b6f8586b6b464d9c31c94a9d6754e7ef7d40ecfb775a6b53c7dd6109bbffc.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
