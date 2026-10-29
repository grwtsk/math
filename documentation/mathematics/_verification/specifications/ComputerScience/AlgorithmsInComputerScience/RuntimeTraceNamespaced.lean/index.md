# Verification target: Runtime Trace Namespaced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c1d6688e2546382505a31947d4bc4ed050c1897e",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variant0b0e36ec55b366f50bfdfb2668727b3d2e4de21d49183c2ed357782f825a5bae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/index.md) · [Full source](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c1d6688e2546382505a31947d4bc4ed050c1897e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variant0b0e36ec55b366f50bfdfb2668727b3d2e4de21d49183c2ed357782f825a5bae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variant0b0e36ec55b366f50bfdfb2668727b3d2e4de21d49183c2ed357782f825a5bae.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Runtime.Soundness` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../_support/reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [identityMatrix](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/identitymatrix.md) | 26 | `declaration-track:0528e7c03e7c327b2272b438d3f7b1ab60db73f9dbdc3ee3a614d72fbf984138` |
| 2 | `def` | [pointVector](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/pointvector.md) | 31 | `declaration-track:a4b272c4aa25f1edc8032225663dece29076cf7d02d1ae0d21218bc412139d7c` |
| 3 | `def` | [matrixWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/matrixwire.md) | 35 | `declaration-track:6543732207c101894802d495f8a10fac2a1f3afa0d795c48dafad9f86edbcc9f` |
| 4 | `def` | [operatorId](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/operatorid.md) | 38 | `declaration-track:35429410d5d83b427f4c80d4e53126123e8c7d027c4a4da71fe351a456275413` |
| 5 | `def` | [manifest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/manifest.md) | 40 | `declaration-track:d303e9dd14278cd6f6c8fc59936af6dc1bf178229eb4c78e59c721e126b27203` |
| 6 | `def` | [manifestWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/manifestwire.md) | 52 | `declaration-track:5ec5b757651f127b19c5d186eb032298272576b9588c92d0c5776211100a5eee` |
| 7 | `def` | [request](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/request.md) | 55 | `declaration-track:4a53a2c6d1ba5ac9bc733d80ca7fed09ebb976f3758f9399708a4e4d744e54b9` |
| 8 | `def` | [requestWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/requestwire.md) | 62 | `declaration-track:21c334aed36740689d5ec2755c2fe7f218256335b88780588a3e94f780326a58` |
| 9 | `def` | [outputWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/outputwire.md) | 65 | `declaration-track:d3561e3a672a2ce67045227f6726f31e2f8b5ad5421abc5217d9a95937337b99` |
| 10 | `def` | [trace](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/trace.md) | 68 | `declaration-track:994ad530a2206e90d380511d9d4fa08e15bb04a78cd797d17e98a4e975d53e32` |
| 11 | `def` | [traceWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/tracewire.md) | 85 | `declaration-track:482b77249197772fd21183757f98182586921fd37a32b6f47e9bba74bcf1f9de` |
| 12 | `def` | [submission](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/submission.md) | 88 | `declaration-track:b6c9619d8486aaa0cce44ef1e0f510ff0186fce6183eea051d55098160e061e4` |
| 13 | `def` | [canonicalCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/canonicalcommitment.md) | 95 | `declaration-track:db8eb632b676b1d021b917572fa36c25a4819b9849150363701540c1b698d000` |
| 14 | `theorem` | [sha256_empty_matches_standard](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/sha256-empty-matches-standard.md) | 102 | `result-track:fb59cd1e80b1692bdc54949b25cfc5207fc87e3ac3b630fccfbef3ffecb61f2c` |
| 15 | `theorem` | [sha256_abc_matches_standard](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/sha256-abc-matches-standard.md) | 110 | `result-track:8c56c664efe803847d19acc65f927cc3be7fb23f3069918fe6abc7c2f9ce359b` |
| 16 | `theorem` | [exactSubmissionAccepted](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/exactsubmissionaccepted.md) | 120 | `result-track:a7d3a7fc43cd49020f8b7cc3d2f4ef20290e7651e143decf62a227e8b5155d96` |
| 17 | `theorem` | [exactCanonicalSubmissionAccepted](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/exactcanonicalsubmissionaccepted.md) | 125 | `result-track:d24676a3cc71af63b3c48f4d4fb9ddb4d22bc78876ce3251805186990c7ebe4a` |
| 18 | `theorem` | [exactCanonicalManifestBytesPinned](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/exactcanonicalmanifestbytespinned.md) | 129 | `result-track:04e90a49b5f87daba2c8def349cee424a807fe278450ec88b680782cbe13bcd0` |
| 19 | `theorem` | [exactSubmissionRepresents](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/exactsubmissionrepresents.md) | 133 | `result-track:cbff45f94cb7887b9ce02df7e71057eebe4de663937b343dde8dc00328128813` |
| 20 | `theorem` | [exactOperationPreserved](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/exactoperationpreserved.md) | 136 | `result-track:003a0f79f3c047b2ed368d66ed17fc3433209a9e9880edcb1a3ce25cda2acb33` |
| 21 | `def` | [alternateManifest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/alternatemanifest.md) | 150 | `declaration-track:5694f4b739ccae8dd140cbb3011daaf6081969cb2a62442ed3c3fc0336c9cd79` |
| 22 | `def` | [alternateManifestWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/alternatemanifestwire.md) | 153 | `declaration-track:3b1a707a494a75d8a719b4d9f882fc9a6bfe10266366d9bfb1f4243c48a2f347` |
| 23 | `def` | [alternateRequest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/alternaterequest.md) | 156 | `declaration-track:9350c63c4823fa97eca7d8cfdc0968a58b5e5b68ac8fe281d8a3dcefd736438f` |
| 24 | `def` | [alternateRequestWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/alternaterequestwire.md) | 159 | `declaration-track:ca809e589f0abe70073086db9864141f8802fcce3db61b09482b5e064632b35a` |
| 25 | `def` | [alternateTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/alternatetrace.md) | 162 | `declaration-track:c0b6cb6f18c9b4b03831b482b7d6a39c1877cebbefe9a97605cb4f35a59f416a` |
| 26 | `def` | [alternateTraceWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/alternatetracewire.md) | 167 | `declaration-track:d7173d287ff974231fb36e8a380e44b5dc12a98cb6d090f49cec0e1a19182339` |
| 27 | `def` | [alternateSubmission](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/alternatesubmission.md) | 170 | `declaration-track:78248da6b25f6da52cfb115d3bfaf66e4b305f47da5a8ec24a0967e0acb1f54f` |
| 28 | `theorem` | [alternateBundleIsSelfContainedAccepted](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/alternatebundleisselfcontainedaccepted.md) | 175 | `result-track:4fcb1215ef077b818a92ba606e51691bae5a477859be5da0d655546b585ff6b9` |
| 29 | `theorem` | [alternateBundleRejectedByCanonicalCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/alternatebundlerejectedbycanonicalcommitment.md) | 179 | `result-track:949985fa5965a55d6de45d050b46f69fbc3ef05132af6132feb56ff6b8388aba` |
| 30 | `def` | [wrongWireDigestCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/wrongwiredigestcommitment.md) | 183 | `declaration-track:21dae8a70bdad1166bf1c231c4ee972839d38b683055007a96e7496e5188c23b` |
| 31 | `def` | [wrongSnapshotCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/wrongsnapshotcommitment.md) | 186 | `declaration-track:4c894473ce79a861b464afe7eb266c1eada9a1d8c7089a48d51a9912e1628763` |
| 32 | `def` | [wrongTerrainCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/wrongterraincommitment.md) | 189 | `declaration-track:c6f9953b7e548d988a2eade9d0855f2384205d13f42384767231b225d723a907` |
| 33 | `def` | [wrongCharacterRegistryCommitment](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/wrongcharacterregistrycommitment.md) | 192 | `declaration-track:26500f53844cef49b9a1a04fa47aec4f42d272299f5f76ca8b3e7a3b225e51ce` |
| 34 | `theorem` | [rejects_wrong_committed_wire_digest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/rejects-wrong-committed-wire-digest.md) | 195 | `result-track:df6cc4a9824c47a4072a1b369e6b75cdc124414ca2d38b3e3a0ef856412c9143` |
| 35 | `theorem` | [rejects_wrong_committed_snapshot_digest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/rejects-wrong-committed-snapshot-digest.md) | 199 | `result-track:65c10b745aa14d88c1916f0e6f8297ca553b921794259b03acd2d4db4d1fc686` |
| 36 | `theorem` | [rejects_wrong_committed_terrain_digest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/rejects-wrong-committed-terrain-digest.md) | 203 | `result-track:b3691c7c0c074d782701b350ef228e6f68704568e66859b43f0450aee615c60a` |
| 37 | `theorem` | [rejects_wrong_committed_character_registry_digest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/rejects-wrong-committed-character-registry-digest.md) | 207 | `result-track:8ec4e11f91d202363d11626e876425f573529f6ebbd6deeafa10307bab84c528` |
| 38 | `def` | [badMagic](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/badmagic.md) | 211 | `declaration-track:6683bcbafe0a5f9b8c773d34a601dad9a9a54620b590b7680118120330ceba6c` |
| 39 | `def` | [badVersion](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/badversion.md) | 212 | `declaration-track:a596fda718425738db7792a66e81f6b4d8436d441944939a2d5ea5006a22ebdc` |
| 40 | `def` | [unknownTag](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/unknowntag.md) | 213 | `declaration-track:0cbd6aa1b5b960166b626065a2756e4f58ba650ed2f7822dbb5304b148b639ea` |
| 41 | `def` | [badReserved](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/badreserved.md) | 214 | `declaration-track:686c36c47d6353274f2aacf126ce70f107fc8f0d87cbb84f74aec4b0be634cc6` |
| 42 | `def` | [badPayloadDigest](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/badpayloaddigest.md) | 215 | `declaration-track:0565098a32234bfddeb81f67653a952a14991f0c4a05c21a68fe866ca394d1dc` |
| 43 | `def` | [trailingByte](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/trailingbyte.md) | 216 | `declaration-track:df7d5351e0b51d09f118cdeebd41cab907ed3a671732f283f97202b8da97368c` |
| 44 | `def` | [truncatedFrame](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/truncatedframe.md) | 217 | `declaration-track:858c2308bebf8c40920ce40683b0a7e9262e69b6a987bd2eeb73e63d12f6b62f` |
| 45 | `def` | [excessiveDeclaredPayload](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/excessivedeclaredpayload.md) | 218 | `declaration-track:1510b10249bf16357546e835e4bf633dd382bc9369417e08d021eeccd29181ce` |
| 46 | `theorem` | [rejects_bad_magic](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/rejects-bad-magic.md) | 222 | `result-track:cf0b343dd52c41a438809cff3c57d73e5dfe7d4c27ff25d838c076bc364821cf` |
| 47 | `theorem` | [rejects_bad_version](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/rejects-bad-version.md) | 223 | `result-track:c2be48f1808f4152476de6e298a5a796e1dc62259e5906bdd061f9d6c456589d` |
| 48 | `theorem` | [rejects_unknown_tag](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/rejects-unknown-tag.md) | 224 | `result-track:6ad1e139bf1a407edf56223bbc48ea389fd6b5028ddabd622be6a5d6015213e0` |
| 49 | `theorem` | [rejects_reserved_byte](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/rejects-reserved-byte.md) | 225 | `result-track:a4dc9a909cdef6c510142b6831c31d4bc2c55a4b23a80f88b349125def340bd3` |
| 50 | `theorem` | [rejects_digest_mismatch](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/rejects-digest-mismatch.md) | 226 | `result-track:f0c26aee8677e48495e5c04f5739915b647ddbd85dd50ecf6dc3542c97af0da0` |
| 51 | `theorem` | [rejects_trailing_byte](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/rejects-trailing-byte.md) | 227 | `result-track:5db65c5b624361db9498df45afd5a52dcbc975033a37e5f01f471a84693b33ac` |
| 52 | `theorem` | [rejects_truncation](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/rejects-truncation.md) | 228 | `result-track:43a177a58e7068412a1417f0e2a7dba681039c3b96e20b86cdcd4638c63ec35e` |
| 53 | `theorem` | [rejects_excessive_declared_payload](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/rejects-excessive-declared-payload.md) | 229 | `result-track:2f1d7dab9b78827876d67127cfd4c7c1fa77403ed057e61d530c02303fa9e0ad` |
| 54 | `def` | [wrongOutput](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/wrongoutput.md) | 234 | `declaration-track:ce7d22a317c4c26a8316f99826d4de63195636a9ea780a3bd80cba11054a4fec` |
| 55 | `def` | [wrongOutputWire](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/wrongoutputwire.md) | 238 | `declaration-track:de013f407ffd085be8b868cd74492e247a46a2a9b49b541d71e119fcdaf536b8` |
| 56 | `def` | [selfConsistentButWrongTrace](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/selfconsistentbutwrongtrace.md) | 241 | `declaration-track:9032a7f0676546b0c06d7f6f94f138b0396578f90b81727c0af1a015c2209fc1` |
| 57 | `def` | [wrongSubmission](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/wrongsubmission.md) | 246 | `declaration-track:225e5dd69308ebd3084de35bfa5af3bcb0d594964a469a9193fe17351321782d` |
| 58 | `theorem` | [changed_expected_value_cannot_bless_runtime](../../../../../ComputerScience/AlgorithmsInComputerScience/RuntimeTraceNamespaced.lean/declarations/changed-expected-value-cannot-bless-runtime.md) | 250 | `result-track:47e690e91305fd257dd3dc753d89e0506880d0fd4e4e05c312996a0328540b2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.

<!-- DOCUMENTATION RELOCATION /1 original-sha256=da130b76c410430bdc9fbe6d5ed34c13ae1f011aa2da4077b8a11ac6ad68804f -->

<!-- BEGIN DOCUMENT CERTIFICATION -->
**Compiler certification:** NOT_RUN. [Coverage and recertification](https://github.com/grwtsk/math/issues/1429). Recorded article claims and historical evidence retain their original scope.

<!-- {"certificate":null,"claim_acceptance":"NOT_CLAIMED","freshness":"UNASSESSED","schema":"grwtsk.document-certification/1","source_paths":["GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variant0b0e36ec55b366f50bfdfb2668727b3d2e4de21d49183c2ed357782f825a5bae.lean","GRWTSK/_verification/specifications/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/RuntimeTrace/Variant0b0e36ec55b366f50bfdfb2668727b3d2e4de21d49183c2ed357782f825a5bae.lean"],"status":"NOT_RUN","tracking_issue":"https://github.com/grwtsk/math/issues/1429"} -->
<!-- END DOCUMENT CERTIFICATION -->
