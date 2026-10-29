# Verification target: Envelope Namespaced Certified Outer Disk

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "790a7421e0fc16ed9363e00ec1e1f11c0ef67799",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variantdc04ecc31d1e608aeafc45d3ecffca48ce475a7db90914abe6ecb87d6239c4e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/EnvelopeNamespacedCertifiedOuterDisk.lean/index.md) · [Full source](../../../../Combinatorics/EnvelopeNamespacedCertifiedOuterDisk.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `790a7421e0fc16ed9363e00ec1e1f11c0ef67799`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variantdc04ecc31d1e608aeafc45d3ecffca48ce475a7db90914abe6ecb87d6239c4e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Envelope/Variantdc04ecc31d1e608aeafc45d3ecffca48ce475a7db90914abe6ecb87d6239c4e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.RHIsolation.UniqueZero` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedOuterDisk](../../../../Combinatorics/EnvelopeNamespacedCertifiedOuterDisk.lean/declarations/certifiedouterdisk.md) | 20 | `declaration-track:7e075b918751a5cc8996d094a3d397069848bfe629b0e6df1f901653101d78de` |
| 2 | `structure` | [CertifiedMinimumEnclosingDisk](../../../../Combinatorics/EnvelopeNamespacedCertifiedOuterDisk.lean/declarations/certifiedminimumenclosingdisk.md) | 29 | `declaration-track:d48f79421d04b503ddea48f706e1c154648cdc41d0a264c20dfc1f548e6e3264` |
| 3 | `structure` | [DiskSupportCertificate](../../../../Combinatorics/EnvelopeNamespacedCertifiedOuterDisk.lean/declarations/disksupportcertificate.md) | 39 | `declaration-track:2abfea122c14bffc9714ef4ab3852ea1dedfb54758c52c4ec45443fc864abf64` |
| 4 | `theorem` | [outerDisk_contains_unique_zero](../../../../Combinatorics/EnvelopeNamespacedCertifiedOuterDisk.lean/declarations/outerdisk-contains-unique-zero.md) | 53 | `result-track:f08cc3024c13bf92d92959876cca60faa374c4281a37b3beb485610c6742097a` |
| 5 | `theorem` | [minimumDisk_support_card_le_three](../../../../Combinatorics/EnvelopeNamespacedCertifiedOuterDisk.lean/declarations/minimumdisk-support-card-le-three.md) | 69 | `result-track:85aa6531479f1ef75d06cb61d18a26856423231b927daa88a9f329d1c8096742` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=cc2e7792ef38db1dbe8d0f9070a037094149a5868eed717d83394f92067e7502 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Envelope/Variantdc04ecc31d1e608aeafc45d3ecffca48ce475a7db90914abe6ecb87d6239c4e3.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Envelope/Variantdc04ecc31d1e608aeafc45d3ecffca48ce475a7db90914abe6ecb87d6239c4e3.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
