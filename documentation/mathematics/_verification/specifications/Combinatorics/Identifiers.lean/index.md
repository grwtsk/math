# Verification target: Identifiers

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b95123efbebf148ceb564555171dfecb8ded0084",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Identifiers/Variant641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/Identifiers.lean/index.md) · [Full source](../../../../Combinatorics/Identifiers.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b95123efbebf148ceb564555171dfecb8ded0084`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Identifiers/Variant641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Identifiers/Variant641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HorizonId](../../../../Combinatorics/Identifiers.lean/declarations/horizonid.md) | 12 | `declaration-track:69ec9d4a97b80c1e1eb0c16a5a9acfe460bdbfefc779032872ada1063cab61b9` |
| 2 | `structure` | [PrimeId](../../../../Combinatorics/Identifiers.lean/declarations/primeid.md) | 16 | `declaration-track:955e50352bbb24b98c01b9e2d172f2bc5f4f931e50092b24322b3d5b61e59a5d` |
| 3 | `structure` | [PrimeCutId](../../../../Combinatorics/Identifiers.lean/declarations/primecutid.md) | 20 | `declaration-track:df657242d62d29d4ed3dd8ad0540601739f9881b3b27e9aa4bda82da58af2eae` |
| 4 | `structure` | [PersistentCutId](../../../../Combinatorics/Identifiers.lean/declarations/persistentcutid.md) | 24 | `declaration-track:00aed2e96929fba9271eedc3d74c4561205cf318b456e5fb03b88bc346bd517e` |
| 5 | `structure` | [PacketId](../../../../Combinatorics/Identifiers.lean/declarations/packetid.md) | 28 | `declaration-track:1d3bcaf391c3f0806d854d43ad4b3d42ee7580a66ae1069d133f71de511fb305` |
| 6 | `structure` | [TestRegistryId](../../../../Combinatorics/Identifiers.lean/declarations/testregistryid.md) | 32 | `declaration-track:21c265fb8c58d56a2f0bc7e49a8eec0b28961123ac02888ca81b5f5d22c67e65` |
| 7 | `structure` | [CoefficientRingId](../../../../Combinatorics/Identifiers.lean/declarations/coefficientringid.md) | 36 | `declaration-track:a9e1cb3409e65cd129f9905aa665b581be8e070d666322d48023929ed26fe0ca` |
| 8 | `structure` | [MatrixId](../../../../Combinatorics/Identifiers.lean/declarations/matrixid.md) | 40 | `declaration-track:76156276f5d3783bd6dea57cb4518de78431799b0a7ead5b478f00aaff728aca` |
| 9 | `structure` | [BasisRevision](../../../../Combinatorics/Identifiers.lean/declarations/basisrevision.md) | 44 | `declaration-track:968077dfac535e6da2c5a8fbbafda1817a59c4d0e0046f85da4fcf18265071c4` |
| 10 | `structure` | [ProofId](../../../../Combinatorics/Identifiers.lean/declarations/proofid.md) | 48 | `declaration-track:49a6dd72d8cf6b74b2ca24c159225dba204dddff5f00910dec18754025ec083d` |
| 11 | `structure` | [CheckerId](../../../../Combinatorics/Identifiers.lean/declarations/checkerid.md) | 52 | `declaration-track:ee28f6b2455724a2d708dec5b50223c99c951df9ba873fbe9f72f58968d0c743` |
| 12 | `structure` | [Digest](../../../../Combinatorics/Identifiers.lean/declarations/digest.md) | 56 | `declaration-track:ed36a74f53af731be2f55d5fa227e1a09a415a93954e9c602e461af274b81ab3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=484d0f641b0f54e08712e67883a1bc453710fb76b284ccb2fc069c8ca904e258 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Identifiers/Variant641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Identifiers/Variant641a1b8386617774dc9515c0764edd0a57f01f23bfa4a873a5bfd75bb58e7acb.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
