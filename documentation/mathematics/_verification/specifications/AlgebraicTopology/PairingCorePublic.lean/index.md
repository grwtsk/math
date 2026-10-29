# Verification target: Pairing Core Public

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34e85a707a447b069957a12af4ebf3bb603bf98e",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../AlgebraicTopology/PairingCorePublic.lean/index.md) · [Full source](../../../../AlgebraicTopology/PairingCorePublic.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34e85a707a447b069957a12af4ebf3bb603bf98e`.

Source path: `GRWTSK/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean.json)

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
| 1 | `structure` | [PairingCore](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/pairingcore.md) | 40 | `declaration-track:35ceb08a92dfeb4cd6dea183a44da65cf42d14912787c60492ca6ed3a3ca2670` |
| 2 | `def` | [Pairing.pairingCore](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/pairing-pairingcore.md) | 66 | `declaration-track:463d811d992fc08552b51967db24cd04ccacdd74a6249d754907abd616e5a76b` |
| 3 | `def` | [type₁](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/type.md) | 107 | `declaration-track:081287beadd418fa5f0706ef407e237d798c550e9b0fa9130ef0ea1c3c3a2352` |
| 4 | `def` | [type₂](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/type-source-edition-2.md) | 112 | `declaration-track:d183c1cc0dc828db37da74525767aae5cef911b27c5e61157783ec65bc0f22a0` |
| 5 | `lemma` | [injective_type₁](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/injective-type-source-edition-2.md) | 116 | `result-track:caecacc4a2e1a2fa24789ba18e0459a3fc77f00154025d5da49e5b93a88003ab` |
| 6 | `lemma` | [injective_type₂](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/injective-type.md) | 119 | `result-track:b3739708b05b51db4da2194304f6aab632b10e7885b6c1015573e7df6ceb7ac4` |
| 7 | `lemma` | [type₁_ne_type₂](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/type-ne-type.md) | 122 | `result-track:a43fa5c721ad2b2c714fcaac7f9f3c7769fc3158cc0d58cd8accfa4ff2f3acb0` |
| 8 | `lemma` | [surjective](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/surjective.md) | 125 | `result-track:e0a57e0c42680e04df4f7aa2fda3112488cc050e7faaffb574f54ea5c3df9e53` |
| 9 | `abbrev` | [I](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/i.md) | 132 | `declaration-track:79465ceab34d792c73c07843312bbed684a9df1d13f0b601e51e826dad9d5111` |
| 10 | `abbrev` | [II](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/ii.md) | 135 | `declaration-track:8a2614b6f24e8198fd43d7b05bc95e6a979cbf7a5e2eab6d58c8c8c104b8ea29` |
| 11 | `def` | [equivI](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/equivi.md) | 139 | `declaration-track:9fe259f644ad5416bcc91cb23634d57c2c7907044839f51d23f87922f9725161` |
| 12 | `def` | [equivII](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/equivii.md) | 143 | `declaration-track:54c07d488b8283960e0e25318964a1b2ee43e60604ad4bef2f4130b35c984ef0` |
| 13 | `def` | [pairing](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/pairing.md) | 147 | `declaration-track:70a324742faad9e9fa7e59c30d41e8e7d829210833af76c1f3d0128a58b7ace3` |
| 14 | `lemma` | [pairing_p_equivII](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/pairing-p-equivii.md) | 164 | `result-track:30d273df70096b10b4aadea1150ee48223d869c4840d4cecf83af2017c99fbf5` |
| 15 | `lemma` | [pairing_p_symm_equivI](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/pairing-p-symm-equivi.md) | 169 | `result-track:345e481589186e80fb005e68837be390c656796ee73649aa8276d70af51e05c8` |
| 16 | `lemma` | [type₁_pairing](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/type-pairing.md) | 173 | `result-track:5c7c0c1bbdb25d0c630ffa37dcb98ffefa0a7f5d19ca1e27635cc5a22ce9e673` |
| 17 | `class` | [IsProper](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/isproper.md) | 180 | `declaration-track:c5142edc866ebd25c15efc3bab4a904a8730f40700274249798e944612a77913` |
| 18 | `lemma` | [isUniquelyCodimOneFace](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/isuniquelycodimoneface.md) | 184 | `result-track:be16b3687e1796ad619bd2ddf7959f04b89a1e8b9263e34e51198fad69ffe042` |
| 19 | `instance` | [(anonymous)](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/instance-source-edition-2.md) | 188 | `declaration-track:2c64489a906a6eaca319feb1b0d44baf8f1cbf6290e84389e56815b3c656a119` |
| 20 | `instance` | [(anonymous)](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/instance-source-edition-4.md) | 195 | `declaration-track:e3452ee2fd4bf585865a2d113b7239da7eb3d587eacae018c8c1a88c2a069e9a` |
| 21 | `lemma` | [isProper_pairing_iff](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/isproper-pairing-iff.md) | 200 | `result-track:666fa47f31db01b287697221252d16f99aedbcf8738eb897730f3cc8eab033ed` |
| 22 | `lemma` | [isUniquelyCodimOneFace_index](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/isuniquelycodimoneface-index.md) | 206 | `result-track:a4e076d6e6e6fa74b80ea0b3aaf0192a46a865fec84e2cc0c7235ad369fd464f` |
| 23 | `lemma` | [isUniquelyCodimOneFace_index_coe](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/isuniquelycodimoneface-index-coe.md) | 211 | `result-track:808327707492074e703bc544e3cae2f18f6229c72d546a859f8561b271bea6b2` |
| 24 | `class` | [IsInner](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/isinner.md) | 218 | `declaration-track:85768d18f6c50c672d7159899a0e0937d7fd45652a0d568a842ff1c18b2859d6` |
| 25 | `instance` | [(anonymous)](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/instance-source-edition-3.md) | 224 | `declaration-track:8782455af0f3fe3870cc0592def91666a0d722c54df00c387bc87b0b7a87641a` |
| 26 | `def` | [AncestralRel](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/ancestralrel.md) | 235 | `declaration-track:6b8d0c05bf6004b9566d8bc42f62e759ce4d47c88348f51e8b3cfd69a8ede310` |
| 27 | `lemma` | [ancestralRel_iff](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/ancestralrel-iff.md) | 238 | `result-track:d3357c2f179c35e3a4b924bc760dd4dda6b34ab3a3d90c0bb5b9478d535954c4` |
| 28 | `class` | [IsRegular](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/isregular.md) | 244 | `declaration-track:f3d7793adc0f55f3d654e953a5ce5b753407a769300d105a9e5efd1d3e8d3b31` |
| 29 | `instance` | [(anonymous)](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/instance.md) | 247 | `declaration-track:18ce62780887bc93924323faabc78038feb9f75b5318f657f1de3427fee3d0fc` |
| 30 | `lemma` | [isRegular_pairing_iff](../../../../AlgebraicTopology/PairingCorePublic.lean/declarations/isregular-pairing-iff.md) | 254 | `result-track:306c3231008a57a5e8d393f3c01fdb69433278bd51399bfe8189a8c08c187854` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=a6b177cc17cde8570c0c32b96a5044f5b681007c8e47c76531eb6da35a3c8d65 -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean","GRWTSK/_verification/specifications/Topology/AlgebraicTopology/PairingCore/Variantb9e3c39ef135f9769e7a59edb40350c768935002c487ca144843a531f6df3674.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
