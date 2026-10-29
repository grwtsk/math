# Verification target: Manifest Version

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea906d869e3122b65d0ea59f88f67c0e0c72299a",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant3a4c65ecfb5be33b3db58cbf2edb8a8949760a57aa72759a102d4e73b75041ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../Combinatorics/ManifestVersion.lean/index.md) · [Full source](../../../../Combinatorics/ManifestVersion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea906d869e3122b65d0ea59f88f67c0e0c72299a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant3a4c65ecfb5be33b3db58cbf2edb8a8949760a57aa72759a102d4e73b75041ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Manifest/Variant3a4c65ecfb5be33b3db58cbf2edb8a8949760a57aa72759a102d4e73b75041ba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.DependencyGraph` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Card` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Version](../../../../Combinatorics/ManifestVersion.lean/declarations/version.md) | 21 | `declaration-track:8204d853e189880fe2b4b981d87967eda2fcea0d2583c6555aab743ec07a2e4d` |
| 2 | `def` | [zero](../../../../Combinatorics/ManifestVersion.lean/declarations/zero.md) | 30 | `declaration-track:1ec02f369229732871ca7d4da496d0a43bd61caa0d0e134247c51b18050333dd` |
| 3 | `structure` | [Fingerprint](../../../../Combinatorics/ManifestVersion.lean/declarations/fingerprint.md) | 35 | `declaration-track:cf353d0687f2ad54ed20dc9d9a5130018855e50ab5754cbc02b99ada8de7f77f` |
| 4 | `def` | [Changed](../../../../Combinatorics/ManifestVersion.lean/declarations/changed.md) | 42 | `declaration-track:1ca1c05a895a688873ed2e412e2dbedb6fa5dadc6d4aebd3e20652e5a4fd272c` |
| 5 | `instance` | [(anonymous)](../../../../Combinatorics/ManifestVersion.lean/declarations/instance.md) | 44 | `declaration-track:076f1ee21b87384ca444839d86f604725ce5e4b4b2656f085933d110dbcf0c1c` |
| 6 | `structure` | [OwnershipPolicy](../../../../Combinatorics/ManifestVersion.lean/declarations/ownershippolicy.md) | 54 | `declaration-track:b0e5f2d7244e75831e36a92f41afbfe22b4d3dd68b893f6de24b617b329d1e88` |
| 7 | `def` | [AllowsImport](../../../../Combinatorics/ManifestVersion.lean/declarations/allowsimport.md) | 65 | `declaration-track:6ab14f39d8312ac70da41f8da10c7869c8bc26e35689103da737f84071f27a01` |
| 8 | `def` | [Consistent](../../../../Combinatorics/ManifestVersion.lean/declarations/consistent.md) | 69 | `declaration-track:7473cb7262f4e9b9177b95f05910a7bfcc081fb51ae022f68d1dedb7816d5ee7` |
| 9 | `theorem` | [allowsImport_not_forbidden](../../../../Combinatorics/ManifestVersion.lean/declarations/allowsimport-not-forbidden.md) | 72 | `result-track:82bc0c8876c618adfd5834b5578af0ff0be5dfd14d674bdada09b4e0057ac6ff` |
| 10 | `structure` | [ProjectInventory](../../../../Combinatorics/ManifestVersion.lean/declarations/projectinventory.md) | 84 | `declaration-track:4c453ab6c9a5ee0def6153b75df4b58ff5a8d8b4b2be6b466ac58aa498a57aec` |
| 11 | `def` | [AcceptsInventory](../../../../Combinatorics/ManifestVersion.lean/declarations/acceptsinventory.md) | 95 | `declaration-track:6443ec6d46de53357159dcf12e6fc574bfc7b44568e2fe3d8e5c9b2c0419a47a` |
| 12 | `theorem` | [aggregate_declaration_free](../../../../Combinatorics/ManifestVersion.lean/declarations/aggregate-declaration-free.md) | 106 | `result-track:953ff3c50f1f24e2b787ceb2b29d6457c1b951fb81ccc50fc2b5901b5752f5ac` |
| 13 | `theorem` | [production_imports_no_tests](../../../../Combinatorics/ManifestVersion.lean/declarations/production-imports-no-tests.md) | 114 | `result-track:acd7f35a260df5ba98e8623904c764d52558956fc71f2264a8fe71f9b7db8165` |
| 14 | `structure` | [ProjectManifest](../../../../Combinatorics/ManifestVersion.lean/declarations/projectmanifest.md) | 127 | `declaration-track:2760d38a559fc4712057542d4f9528eb8733a2119d623265b31de455088338ed` |
| 15 | `def` | [DependenciesRespectPolicy](../../../../Combinatorics/ManifestVersion.lean/declarations/dependenciesrespectpolicy.md) | 146 | `declaration-track:494dc2d2340f6b2781dcb6e8585039c514850278af77bd930167ce0e533b5158` |
| 16 | `abbrev` | [ManifestSet](../../../../Combinatorics/ManifestVersion.lean/declarations/manifestset.md) | 154 | `declaration-track:5e525f67b2497f910a7b4e052ae53d596e6a7a826e182a4973c242f3333e23c7` |
| 17 | `def` | [ManifestsMatchGraph](../../../../Combinatorics/ManifestVersion.lean/declarations/manifestsmatchgraph.md) | 158 | `declaration-track:1a2d71d4b5a18a17c81ae558ebf4cc44a2da47af83bb224c210183d28529e822` |
| 18 | `def` | [AdapterDirectionallyValid](../../../../Combinatorics/ManifestVersion.lean/declarations/adapterdirectionallyvalid.md) | 166 | `declaration-track:f5803d858b7874c6c54a64feeeea461c001c8afad7e2dc8bbf2b552c404971c9` |
| 19 | `def` | [UniquePublicOwnership](../../../../Combinatorics/ManifestVersion.lean/declarations/uniquepublicownership.md) | 176 | `declaration-track:e5a56f90d65ba057437902f5b81a5b952d223592df4ff72cb7111a1f657cd6d1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=d9e29e89d8b591953197458d47c3e8da1de552487bbfd48ae45ceba0392e4fd9 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/Manifest/Variant3a4c65ecfb5be33b3db58cbf2edb8a8949760a57aa72759a102d4e73b75041ba.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/Manifest/Variant3a4c65ecfb5be33b3db58cbf2edb8a8949760a57aa72759a102d4e73b75041ba.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
